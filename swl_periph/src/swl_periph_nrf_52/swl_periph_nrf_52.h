/**
 * @file swl_periph_nrf_52.h
 *
 * @{
 * @brief Module for application layer functions and variables
 *
 * @details The API consists of functions for passing stack events to the lower layers.
 */


#ifndef SWL_PERIPH_NRF_52_H__

#define SWL_PERIPH_NRF_52_H__

#include "ble.h"
         
/**@brief Used to pass events and data to the lower layers.
  *
  *@param[in]  p_event_data    Bluetooth stack event.
  */                                                                    
void swl_periph_nrf_process_stack_evt(void * p_event_data);

/**@brief Used in the main loop to process events.
  *
  */
void swl_periph_nrf_process_idle_state(void);

#endif // SWL_PERIPH_NRF_52_H__


// End of file swl_periph_nrf_52.h
/** @} */