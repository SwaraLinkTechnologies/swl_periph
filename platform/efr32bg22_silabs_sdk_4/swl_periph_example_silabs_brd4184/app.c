/***************************************************************************//**
 * @file
 * @brief Core application logic.
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc. Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement. This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/
#include "em_common.h"
#include "app_assert.h"
#include "sl_bluetooth.h"
#include "app.h"

#include "sl_simple_button_instances.h"
#include "sl_simple_led_instances.h"

// SWL Peripheral Application Configuration - Modify this file for build-time configuration
#include "swl_periph_app_config.h"

// SWL Peripheral Library Includes
#include "swl_periph.h"
#include "swl_periph_config.h"
#include "swl_periph_silabs.h"
#include "swl_periph_demo.h"

// enum state to track current BLE status
static enum
{
  BLE_STATUS_IDLE         = 0x00,
  BLE_STATUS_ADVERTISING  = 0x01,
  BLE_STATUS_CONNECTED    = 0x02,
} current_ble_status;

// Bool to track whether data being sent requires an acknowledgement
static bool ack_required = false;

//Tracks whether device is in pairing mode.
static bool in_pairing_mode = false;

// Bool to track whether data is being sent by copy or reference.
static bool data_sent_by_copy;

static bool ble_connection_established = false;

// Array for pass by copy file transfer demo.
const uint8 test_array[64] = { 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,
                               23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,
                               42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,
                               61,62,63,64 };

uint8 test_c2p_array[1000] = {0};

//Records the # of times the demo 4k file needs to be sent.
//Wait until full 4k file is sent to another.
static uint8 data_tx_count = 0;

// Static function declarations
static void periph_evt_handler(swl_periph_evt_t evt, const swl_periph_evt_data_t * p_evt_data);
static void process_button_press(void);
static void handle_rx_data(const swl_c2p_data_t * p_rx_data);
void exception_handler(const swl_periph_exception_data_t * p_exception_data);

/**************************************************************************//**
 * Application Init.
 *****************************************************************************/
SL_WEAK void app_init(void)
{
  swl_err_t  swl_err_code;

  //swl_periph_perform_factory_reset();

  // Configure buffers for the SwaraLink Peripheral middleware
  swl_err_code = swl_periph_config();
  SWL_ERROR_CHECK(swl_err_code);

  // Initialize SwaraLink peripheral module; register event handler
  swl_periph_init(periph_evt_handler, exception_handler);
}

/**************************************************************************//**
 * Application Process Action.
 *****************************************************************************/
SL_WEAK void app_process_action(void)
{
  /////////////////////////////////////////////////////////////////////////////
  // Put your additional application code here!                              //
  // This is called infinitely.                                              //
  // Do not call blocking functions from here!                               //
  /////////////////////////////////////////////////////////////////////////////
  swl_periph_silabs_process_idle_state();
}

/**************************************************************************//**
 * Bluetooth stack event handler.
 * This overrides the dummy weak implementation.
 *
 * @param[in] evt Event coming from the Bluetooth stack.
 *****************************************************************************/
void sl_bt_on_event(sl_bt_msg_t * p_evt)
{
  //If event from stack is due to a external signal then process it locally.
  if((SL_BT_MSG_ID(p_evt->header) == sl_bt_evt_system_external_signal_id) && (p_evt->data.evt_system_external_signal.extsignals & EXT_SIGNAL_PROCESS_BUTTON_PRESS))
  {
      process_button_press();
  }

  else
  {
      //Boot up event is passed back to app.c event handler.
      //current_ble_status stays = BLE_STATUS_IDLE event when advertising
      //Work around for the time being.
      if(SL_BT_MSG_ID(p_evt->header) == sl_bt_evt_system_boot_id)
      {
          current_ble_status = BLE_STATUS_ADVERTISING;
      }
      // pass event on to swl_periph_silabs event handler
      swl_periph_silabs_process_stack_evt(p_evt);
  }
}

static void periph_evt_handler(swl_periph_evt_t evt, const swl_periph_evt_data_t * p_evt_data)
{
  swl_err_t err_code;

  //NRF_LOG_INFO("App Event: %u", (uint8)evt);

  // process events
  switch(evt)
  {
    case SWL_PERIPH_EVT_CONN_ESTABLISHED:
      //NRF_LOG_INFO("Device ID: %u", p_evt_data->conn_establish.device_id);
      ble_connection_established = true;

      //Set pairing mode to false since there was a successful connection.
      in_pairing_mode = false;

      //Toggle LED on.
      sl_led_turn_on(SL_SIMPLE_LED_INSTANCE(0));
      break;

    case SWL_PERIPH_EVT_CONN_TERMINATED:
      //NRF_LOG_INFO("Device ID: %u", p_evt_data->conn_terminate.device_id);

      //Toggle LED off
      sl_led_turn_off(SL_SIMPLE_LED_INSTANCE(0));
      break;

    case SWL_PERIPH_EVT_RX_DATA:
      // send back whatever was received
      handle_rx_data((swl_c2p_data_t*)p_evt_data);
      break;

    case SWL_PERIPH_EVT_DATA_ACK:
      //data was acknowledged by peer device.
      //NRF_LOG_INFO("Major: %u Minor: %u", p_evt_data->data_info.id_hdr_major, p_evt_data->data_info.id_hdr_minor);
      break;

    case SWL_PERIPH_EVT_DATA_SENT:
      //Event generated when data transfer has been completely queued up by the Bluetooth stack
      //Additional data can be queued up once this event is recieved.

      //NRF_LOG_INFO("Major: %u Minor: %u", p_evt_data->data_info.id_hdr_major, p_evt_data->data_info.id_hdr_minor);

      // are there any pending transmits?
      if(data_tx_count > 0)
      {
        data_tx_count--;

        //Check whether data is being sent by copy or reference.
        if(data_sent_by_copy)
        {
          err_code = swl_periph_p2c_tx_by_copy(test_array, sizeof(test_array), ack_required, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_COPY_NO_ACK);
          SWL_ERROR_CHECK(err_code);
        }
        else
        {
          err_code = swl_periph_p2c_tx_by_ref(demofile_array, DEMOFILE_SIZE, ack_required, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_REF_NO_ACK);
          SWL_ERROR_CHECK(err_code);
        }


      }
      break;

    case SWL_PERIPH_EVT_PWR_MODE_UPDATE:
      //Power mode has been successfully changed
      break;

    case SWL_PERIPH_EVT_PWR_MODE_UPDATE_REQUEST:
      //Request to change power mode has be recieved.
      break;

    case SWL_PERIPH_EVT_PAIRING_MODE_EXITED:
      //Event generated when pairing mode has exited
       //NRF_LOG_INFO("Device ID: %u Reason: %u", p_evt_data->pairing_mode_exited.device_id, p_evt_data->pairing_mode_exited.swl_pairing_mode);

       //Check whether this event was generated because the pairing mode timer expired.
       if((p_evt_data->pairing_mode_exited.swl_pairing_mode == SWL_PAIRING_MODE_TIMER_EXPIRED) &&
          (ble_connection_established == false) )
       {

       }

      break;

    default:
      // unexpected event;
      break;
  }
}

static void handle_rx_data(const swl_c2p_data_t * p_rx_data)
{
  swl_err_t err_code;
  uint16 rx_data_len = p_rx_data->len;

  memcpy(test_c2p_array, p_rx_data->p_data, p_rx_data->len);

  // SWL demo commands all have id_hdr_maj value of ID_HDR_MAJ_P2C_DEMO_REQ
  // and have a 1-byte payload

  if((p_rx_data->id_hdr_major == ID_HDR_MAJ_P2C_DEMO_REQ) && (rx_data_len == 1))
  {
    // this was a demo req; process based on id_hdr_min value
    uint8 req_type = p_rx_data->id_hdr_minor;

    switch(req_type)
    {
      case ID_HDR_MIN_P2C_DEMO_REQ_TX_BY_REF_NO_ACK:
        {
          // queue up data by reference with no ack(use 4096 byte demofile_array)

          // byte 0 of payload is the number of times to repeat the transfer
          uint8 repeat_ct = p_rx_data->p_data[0];

          // valid range is 1-100 (if out of range, then ignore command)
          if((repeat_ct >= 1) && (repeat_ct <= 100))
          {
            // valid count
            data_tx_count = repeat_ct;

            data_sent_by_copy = false;

            ack_required = false;

            // decrement count since first transmit has been queued
            data_tx_count--;

            // queue up first transfer
            err_code = swl_periph_p2c_tx_by_ref(demofile_array, DEMOFILE_SIZE, false, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_REF_NO_ACK);
            SWL_ERROR_CHECK(err_code);
          }
        }
        break;

      case ID_HDR_MIN_P2C_DEMO_REQ_TX_BY_COPY_NO_ACK:
        {
          // queue up data by copy with no ack (use 64-byte data packet)

          // byte 0 of payload is the number of times to repeat the transfer
          uint8 repeat_ct = p_rx_data->p_data[0];

          // valid range is 1-100 (if out of range, then ignore command)
          if((repeat_ct >= 1) && (repeat_ct <= 100))
          {
            // valid count
            data_tx_count = repeat_ct;

            data_sent_by_copy = true;

            ack_required = false;

            // decrement count since first transmit has been queued
            data_tx_count--;

            // queue up first transfer
            err_code = swl_periph_p2c_tx_by_copy(test_array, sizeof(test_array), false, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_COPY_NO_ACK);
            SWL_ERROR_CHECK(err_code);
          }
        }
        break;

      case ID_HDR_MIN_P2C_DEMO_REQ_TX_BY_REF_ACK:
        {
          // queue up data by reference with ack (use 4096 byte demofile_array)

          // byte 0 of payload is the number of times to repeat the transfer
          uint8 repeat_ct = p_rx_data->p_data[0];

          // valid range is 1-100 (if out of range, then ignore command)
          if((repeat_ct >= 1) && (repeat_ct <= 100))
          {
            // valid count
            data_tx_count = repeat_ct;

            data_sent_by_copy = false;

            ack_required = true;

            // decrement count since first transmit has been queued
            data_tx_count--;

            // queue up first transfer
            err_code = swl_periph_p2c_tx_by_ref(demofile_array, DEMOFILE_SIZE, true, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_REF_ACK);
            SWL_ERROR_CHECK(err_code);
          }
        }
        break;

      case ID_HDR_MIN_P2C_DEMO_REQ_TX_BY_COPY_ACK:
        {
          // queue up data by copy with ack (use 64-byte data packet)

          // byte 0 of payload is the number of times to repeat the transfer
          uint8 repeat_ct = p_rx_data->p_data[0];

          // valid range is 1-100 (if out of range, then ignore command)
          if((repeat_ct >= 1) && (repeat_ct <= 100))
          {
            // valid count
            data_tx_count = repeat_ct;

            data_sent_by_copy = true;

            ack_required = true;

            // decrement count since first transmit has been queued
            data_tx_count--;

            // queue up first transfer
            err_code = swl_periph_p2c_tx_by_copy(test_array, sizeof(test_array), true, ID_HDR_MAJ_P2C_DEMO_RSP, ID_HDR_MIN_P2C_DEMO_RSP_TX_BY_COPY_ACK);
            SWL_ERROR_CHECK(err_code);
          }
        }
        break;

      default:
        // do nothing
        break;
    }
  }
}


void dump_diagnostic_log(void)
{
    uint8 * p_diag_log;

    // retrieve diagnostic log
    swl_periph_get_diagnostic_log(&p_diag_log);

    if(p_diag_log != NULL)
    {
        //NRF_LOG_INFO("SwaraLink Peripheral Middleware - Diagnostic log dump:");

        // print out diagnostic log raw data
        for(uint16 i = 0; i < SWL_PERIPH_DIAGNOSTICS_LOG_BUFFER_SIZE; i++)
        {
            // print byte from diagnostic log
            //NRF_LOG_INFO("index: %04d, data (hex): %02x", i, *p_diag_log);

            // increment pointer by 1 byte
            p_diag_log++;
        }
    }
    else
    {
        //NRF_LOG_INFO("SwaraLink Peripheral Middleware - Diagnostic log not found!");
    }
}

void exception_handler(const swl_periph_exception_data_t * p_exception_data)
{
    // exception occurred in swl_periph library

    if(p_exception_data != NULL)
    {
//        NRF_LOG_INFO("swl_periph exception occurred! Please take note of the following information and report to SwaraLink Technologies:");
//        NRF_LOG_INFO("Exception filename code:      %u", p_exception_data->filename_code);
//        NRF_LOG_INFO("Exception line number:        %u", p_exception_data->line_number);
//        NRF_LOG_INFO("Exception metadata A:         %u", p_exception_data->metadata_a);
//        NRF_LOG_INFO("Exception metadata B:         %u", p_exception_data->metadata_b);
    }

    // retrieve and print out diagnostic log raw data
    dump_diagnostic_log();

    // Trigger breakpoint if debugger is connected
    SWL_BKPT;

    // for in-field exceptions, it is recommend to soft reset the system as the swl_periph library may be in an unreliable state
    NVIC_SystemReset();

    // infinite loop; code should never reach here
    for(;;)
    {}
}


//Button interrupt
void sl_button_on_change(const sl_button_t *handle)
{
  (void)(handle);
  //Gets current state of button.
  sl_button_state_t button_state = sl_button_get_state(&sl_button_btn0);

  //Only on actual button press.
  if(button_state == 1)
  {
      //Send external signal to stack.
      sl_bt_external_signal(EXT_SIGNAL_PROCESS_BUTTON_PRESS);
  }
}

static void process_button_press(void)
{
  swl_err_t err_code;

  //Check whether we are already in pairing mode.
  if(in_pairing_mode)
  {
      //Device is in pairing mode.
      //Exit pairing mode.
      err_code = swl_periph_exit_pairing_mode();

      in_pairing_mode = false;
  }

  else
  {
      //TODO - Use for examples
       err_code = swl_periph_enter_pairing_mode(120);

       in_pairing_mode = true;
  }

  SWL_ERROR_CHECK(err_code);
}
