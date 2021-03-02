/**
 * @file swl_periph.h
 *
 * @{
 * @brief Module for application layer functions and variables
 *
 * @details The API consists of functions for declaring event handlers and other user functions
 */

#ifndef SWL_PERIPH_H__
#define SWL_PERIPH_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "swl_types.h"

/**@brief Swl Periph event list. They identify what event was generated from the lower layers.
 */
typedef enum
{
  SWL_PERIPH_EVT_CONN_ESTABLISHED            = 0x00,    /**< @brief Device has successfully connected to peer device and is ready to begin receiving commands. */
  SWL_PERIPH_EVT_CONN_TERMINATED             = 0x01,    /**< @brief Device has successfully disconnected from peer device. */
  SWL_PERIPH_EVT_RX_DATA                     = 0x02,    /**< @brief Data has been recieved from the peer device. See @ref swl_c2p_data_t for details on how incoming data is parsed*/
  SWL_PERIPH_EVT_DATA_ACK                    = 0x03,    /**< @brief Acknowledgment has been recieved from peer device. */
  SWL_PERIPH_EVT_DATA_SENT                   = 0x04,    /**< @brief Data has been successfully sent. */
  SWL_PERIPH_EVT_PWR_MODE_UPDATE             = 0x05,    /**< @brief Power mode has been successfully updated. */
  SWL_PERIPH_EVT_PWR_MODE_UPDATE_REQUEST     = 0x06,    /**< @brief Power mode request has been recieved. */
  SWL_PERIPH_EVT_PAIRING_MODE_EXITED         = 0x07,    /**< @brief Device has exited pairing mode. See @ref swl_pairing_mode_t for details on  different cases.*/
  SWL_PERIPH_EVT_INVALID_LICENSE_DETECTED    = 0x08,    /**< @brief Library has detected that there is an invalid license.*/
  SWL_PERIPH_EVT_PERIPH_PRIO_UPDATE          = 0x09,    /**< @brief Peripheral Priority change has been successfully updated.*/
  SWL_PERIPH_EVT_PERIPH_PRIO_UPDATE_REQUEST  = 0x0A,    /**< @brief Peripheral Priority change request has been recieved.*/
  SWL_PERIPH_EVT_SYS_STATE_UPDATE            = 0x0B,    /**< @brief System state has been updated.*/            
} swl_periph_evt_t;

/**@brief Power mode list. They identify what power mode is being used or will be selected.
 */
typedef enum
{
  SWL_PWR_MODE_SPM0     = 0x00,  /**< @brief BLE off. */
  SWL_PWR_MODE_SPM1     = 0x01,  /**< @brief Low energy consumption. */
  SWL_PWR_MODE_SPM2A    = 0x2A,  /**< @brief User defined power mode. */
  SWL_PWR_MODE_SPM2B    = 0x2B,  /**< @brief User defined power mode. */
  SWL_PWR_MODE_SPM2C    = 0x2C,  /**< @brief User defined power mode. */
  SWL_PWR_MODE_SPM3     = 0x03,  /**< @brief High throughput/High Latency. */
  SWL_PWR_MODE_SPM4     = 0x04,  /**< @brief High throughput. */
} swl_pwr_mode_t;


/**@brief Pairing Mode list. They identify what reason pairing mode was exited for.
 */
typedef enum
{
  SWL_PAIRING_MODE_TIMER_EXPIRED      = 0x00,  /**< @brief Pairing Mode was exited due to the timer expiring. */
  SWL_PAIRING_MODE_CONN_SUCCESS       = 0x01,  /**< @brief Pairing Mode was exited due to connection being successfully established. */ 
  SWL_PAIRING_MODE_USER_TERMINATED    = 0x02,  /**< @brief Pairing Mode was exited due to user terminating pairng mode. */ 
} swl_pairing_mode_t;

/**@brief Peripheral Priority values. They identify what priority the peripheral is using.
 */
typedef enum
{
  SWL_PRIO_REDUCE_POWER             = 0x01,   /**< @brief Prioritize reducting power consumption */
  SWL_PRIO_INCREASE_THROUGHPUT      = 0x02,   /**< @brief Prioritize increasing throughput. */
  SWL_PRIO_IMPROVE_RANGE            = 0x03,   /**< @brief Prioritize improving range / distance. */
} swl_priority_t;

/**@brief System State values. They identify what state the system is in.
 */
typedef enum
{
  SWL_SYS_STATE_OFF                 = 0x00,  /**< @brief BLE is off in this state. */
  SWL_SYS_STATE_ON                  = 0x01,  /**< @brief BLE is on in this state. */
  SWL_SYS_STATE_ULTRA_LOW           = 0x02,  /**< @brief BLE is on but in an ultra low power mode. */
} swl_sys_state_t;


/**@brief A structure for incoming data.
 *
 * @details The structure contains parameters related to incoming rx data recieved from the peer.
 */
typedef struct
{
  uint8  id_hdr_major;  /**< @brief Used to id data being sent. */
  uint8  id_hdr_minor;  /**< @brief Used to id data being sent. */
  uint8  device_id;     /**< @brief Used to id the device that the data was sent to. */
  uint8* p_data;        /**< @brief Pointer to the data being sent. */
  uint16 len;           /**< @brief Length of data being sent. */
  bool  ack;            /**< @brief Used to determine whether acknowledgment is needed. */
} swl_c2p_data_t;

/**@brief A structure for SWL_PERIPH_EVT_DATA_SENT and SWL_PERIPH_EVT_DATA_ACK events.
 *
 * @details The structure contains parameters related to 
 */
typedef struct
{
  uint8 id_hdr_major;   /**< @brief Used to id data being sent. */
  uint8 id_hdr_minor;   /**< @brief Used to id data being sent. */
  uint8  device_id;     /**< @brief Used to id the device that the data was sent to. */
} swl_data_info_t;

/**@brief A structure for SWL_PERIPH_EVT_CONN_ESTABLISHED.
 *
 * @details The structure contains parameters related to SWL_PERIPH_EVT_CONN_ESTABLISHED event.
 */
typedef struct
{
  uint8  device_id;      /**< @brief Used to id the peer device.*/
}swl_conn_establish_t;

/**@brief A structure for SWL_PERIPH_EVT_CONN_TERMINATED.
 *
 * @details The structure contains parameters related to SWL_PERIPH_EVT_CONN_TERMINATED event.
 */
typedef struct
{
  uint8  device_id;      /**< @brief Used to id the peer device.*/ 
}swl_conn_terminate_t;

/**@brief A structure for SWL_PERIPH_EVT_PAIRING_MODE_EXITED.
 *
 * @details The structure contains parameters related to SWL_PERIPH_EVT_PAIRING_MODE_EXITED event.
 */
typedef struct
{
  uint8  device_id;                             /**< @brief Used to id the peer device.*/
  swl_pairing_mode_t   swl_pairing_mode;        /**< @brief Used to id the reason pairing mode was exited. See @ref swl_pairing_mode_t for details.  */
}swl_pairing_mode_exited_t;

typedef struct 
{
  swl_priority_t priority_1;      /**< @brief New peripheral priority 1.*/
  swl_priority_t priority_2;      /**< @brief New peripheral priority 2.*/
  swl_priority_t priority_3;      /**< @brief New peripheral priority 3.*/
}swl_periph_prio_udpated_t;

/**@brief A union for SWL_PERIPH_EVT_RX_DATA event.
 *
 * @details The union contains parameters related to data from SWL_PERIPH_EVT_RX_DATA event.
 */
typedef union
{
  swl_c2p_data_t            c2p_data;             /**< @brief Parameters specific to the SWL_PERIPH_EVT_RX_DATA event. */
  swl_data_info_t           data_info;            /**< @brief Parameters specific to the SWL_PERIPH_EVT_DATA_SENT and SWL_PERIPH_EVT_DATA_ACK event. */
  swl_conn_establish_t      conn_establish;       /**< @brief Parameters specific to the SWL_PERIPH_EVT_CONN_ESTABLISHED event. */
  swl_conn_terminate_t      conn_terminate;       /**< @brief Parameters specific to the SWL_PERIPH_EVT_CONN_TERMINATED event. */
  swl_pairing_mode_exited_t pairing_mode_exited;  /**< @brief Parameters specific to the SWL_PERIPH_EVT_PAIRING_MODE_EXITED event. */
  swl_periph_prio_udpated_t periph_prio_updated;  /**< @brief Parameters specific to the SWL_PERIPH_EVT_PERIPH_PRIO_UPDATE event. */
} swl_periph_evt_data_t;

/**@brief A structure for configurable constants.
 *
 * @details The structure contains parameters related to configurable constants set by the user.
 */
typedef struct
{
  uint8                 tx_op_queue_size;          /**< @brief Size of tx_op_queue_buffer. */
  uint16                tx_by_copy_buffer_size;    /**< @brief Size of tx_by_copy_buffer. */
  uint16                max_rx_payload_size;       /**< @brief Size of max_rx_payload_buffer. */
  swl_pwr_mode_t        init_pwr_mode;             /**< @brief Power mode that will device will be initialized to. */
  uint8                 max_num_paired_devices;    /**< @brief Max number of device can be paried to. */
  uint16                diagnostics_log_size;      /**< @brief Size of diagnostics_log_buffer. */
  swl_priority_t        init_priority_1;           /**< @brief Initial priority 1 that will device will be initialized to. */
  swl_priority_t        init_priority_2;           /**< @brief Initial priority 2 that will device will be initialized to. */
  swl_priority_t        init_priority_3;           /**< @brief Initial priority 3 that will device will be initialized to. */
  swl_sys_state_t       init_sys_state;            /**< @brief System state that the device will be initialized to. */
} swl_periph_config_const_t;

/**@brief A structure thatt contains pointers related to configurable buffers.
 *
 * @details The structure contains pointers related to configurable buffers set by the user.
 */
typedef struct
{
  uint8 * p_tx_op_queue_buffer;      /**< @brief Pointer that contains the address of p_tx_op_queue_buffer. */
  uint8 * p_tx_by_copy_buffer;       /**< @brief Pointer that contains the address of p_tx_by_copy_buffer. */
  uint8 * p_rx_payload_buffer;       /**< @brief Pointer that contains the address of p_rx_payload_buffer. */
  uint8 * p_paired_devices_buffer;   /**< @brief Pointer that contains the address of p_paired_devices_buffer. */
  uint8 * p_diagnostics_log_buffer;  /**< @brief Pointer that contains the address of p_diagnostics_log_buffer. */
} swl_periph_config_buffers_t; 

/**@brief A structure for error handling data.
 *
 * @details The structure contains parameters related to error handling data recieved from the lower layers.
 */
typedef struct
{
  
  uint8     filename_code;                                    /**< @brief String that contains the name of the file where the exception occured. */
  uint16    line_number;                                      /**< @brief Line number where exception occured. */
  uint32    metadata_a;                                       /**< @brief Data generated from the exception. */
  uint32    metadata_b;                                       /**< @brief Data generated from the exception. */
} swl_periph_exception_data_t;

/**@brief Type that is used to hold a reference to the event handler.
 */
typedef void (*swl_periph_evt_handler_t)(swl_periph_evt_t evt, const swl_periph_evt_data_t * p_evt_data);

/**@brief Type that is used to hold a reference to the exception handler.
 */
typedef void (*swl_periph_exception_handler_t)(const swl_periph_exception_data_t * p_exception_data);                       

/**@brief Used to initialize and declare an event handler .
 *
 * @note This function should be called to register an event and an exception handler.
 * 
 * @param[in]  pfn_new_evt_handler         Name of event handler.
 * @param[in]  pfn_new_exception_handler   Name of exception handler.
 */
swl_err_t swl_periph_init(swl_periph_evt_handler_t pfn_new_evt_handler, swl_periph_exception_handler_t pfn_new_exception_handler);

/**@brief Used to set the device in the desired power mode.
  *
  *@note  Refer to @ref swl_pwr_mode_t for valid values.
  *
  *@param[in]  pwr_mode     Power mode to be selected.
  */
swl_err_t swl_periph_set_power_mode(swl_pwr_mode_t pwr_mode);

/**@brief Used to send data to the peer device. 
  *
  *@note  This function does not require the data being sent to be retained by application
  *
  *@param[in]  p_data             Pointer to the data to be sent
  *@param[in]  len                Length of data being sent.
  *@param[in]  ack                Bool to determine whether data requires an acknowledgement from peer. 
  *@param[in]  data_type_major    Major type ID used to identify data being sent.
  *@param[in]  data_type_minor    Minor type ID used to identify data being sent.
  */
swl_err_t swl_periph_p2c_tx_by_copy(const uint8 * p_data, uint16 len, bool ack, uint8 data_type_major, uint8 data_type_minor);

/**@brief Used to send data to the peer device. 
  *
  *@note  This function requires the data being sent to be retained until transfer has completed.
  *
  *@param[in]  p_data             Pointer to the data to be sent
  *@param[in]  len                Length of data being sent.
  *@param[in]  ack                Bool to determine whether data requires an acknowledgement from peer. 
  *@param[in]  data_type_major    Major type ID used to identify data being sent.
  *@param[in]  data_type_minor    Minor type ID used to identify data being sent.
  */
swl_err_t swl_periph_p2c_tx_by_ref(const uint8 * p_data, uint16 len, bool ack, uint8 data_type_major, uint8 data_type_minor);

/**@brief Used to put device into unpaired mode.
 *
 * @note  This function can be used in a connected or non-connected state. Allows new connections to be established.
 * @note  If no new devices successfully pair, revert back to whatever state the device was previously.
 *
 * @param[in]  seconds             Number of seconds that the device will be on pairing mode. Valid values are from 45 to 600 seconds.
 *
 */
swl_err_t swl_periph_enter_pairing_mode(uint16 seconds);

/**@brief Used to exit pairing mode. 
 *
 * @note  Function is used to exit pairing mode. Reverts devices to the state it was before entering pairing mode. 
 *
 */
 swl_err_t swl_periph_exit_pairing_mode(void);

/**@brief Performs a factory reset. 
 *
 * @note  Restores device to a clean state and erases flash data.
 */
swl_err_t swl_periph_perform_factory_reset(void);

/**@brief Used to pass the address of the diagnostic buffer. 
 *
 * @note  This function is only used in the case that an exception hits during runtime.
 *
 *@param[in]  pp_log   Points to the pointer of the diagnostic buffer.  
 */
swl_err_t swl_periph_get_diagnostic_log(uint8 ** pp_log);

/**@brief      Used to register configurable values at runtime.
 *
 * @note       Only for internal use, not a user API.
 * 
 * @param[in]  p_config_const       Pointer to configuration constants.
 * @param[in]  p_config_buffers     Pointer to configuration buffers.
 */
swl_err_t swl_periph_register_config(const swl_periph_config_const_t * p_config_const, const swl_periph_config_buffers_t * p_config_buffers);


/**@brief      Used to configure the peripheral to prioritize between power consumption, data throughput, and range / distange
 *
 * @note       It is possible to assign the same priority multiple times.
 * @note       For example, to maximize the throughput call:
 * @note          err_code =  swl_periph_set_peripheral_priorities(SWL_PRIO_INCREASE_THROUGHPUT, SWL_PRIO_INCREASE_THROUGHPUT, SWL_PRIO_INCREASE_THROUGHPUT)
 * @note       To heavily optimize for power but still prioritize throughput call:
 * @note          err_code =  swl_periph_set_peripheral_priorities(SWL_PRIO_REDUCE_POWER, SWL_PRIO_REDUCE_POWER, SWL_PRIO_INCREASE_THROUGHPUT)
 * @note       For prioritize range, then power, then throughput call:
 * @note          err_code =  swl_periph_set_peripheral_priorities(SWL_PRIO_IMPROVE_RANGE, SWL_PRIO_REDUCE_POWER, SWL_PRIO_INCREASE_THROUGHPUT)
 * @note       
 *
 * @retval ::SWL_ERR_OPERATION_IN_PROG Change in peripheral priorites are already in progress. Make sure to wait until SWL_PERIPH_EVT_PERIPH_PRIO_UPDATE event is recieved to update priorities again.
 * 
 * @param[in]  prio_1     Highest priority
 * @param[in]  prio_2     Second-highest priority
 * @param[in]  prio_3     Third-highest priority
 */
swl_err_t swl_periph_set_peripheral_priorities(swl_priority_t prio_1, swl_priority_t prio_2, swl_priority_t prio_3); 

/**@brief      Used to change the system's state. 
 *
 * @note       Cycle between different system states. See swl_sys_state_t for more details.   
 * 
 * @param[in]  sys_state     New system state.
 */
swl_err_t swl_periph_change_system_state(swl_sys_state_t sys_state);

/**@brief      Used to log crashes
 *
 * @note       This function is only intended to be used by the SWL_ERR_CHECK macro.
 * 
 * @param[in]  line_number     Line number
 * @param[in]  err_code        Error Code 
 */
swl_err_t swl_periph_log_crash(uint16 line_number, uint16 err_code);


#ifdef __cplusplus
}
#endif

#endif // SWL_PERIPH_H__

// End of file swl_periph.h
/** @} */


