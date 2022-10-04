/** File: swl_periph_silabs.h
 * Copyright (c) 2021, SwaraLink Technologies
 * All Rights Reserved
 * Licensed by SwaraLink Technologies, subject to terms of Software License Agreement
 */

/**
 * @file swl_periph_silabs.h
 *
 * @{
 * @brief Module for application layer functions and variables
 *
 * @details The API consists of functions for passing stack events to the lower layers.
 */


#ifndef SWL_PERIPH_SILABS_H__

#define SWL_PERIPH_SILABS_H__

#include "swl_periph_dev_types.h"
#include "em_common.h"
#include "sl_bluetooth.h"

/**@brief Used to pass events and data to the lower layers.
  *
  *@param[in]  p_evt     Bluetooth stack event.
  */
void swl_periph_silabs_process_stack_evt(sl_bt_msg_t * p_evt);

/**@brief Used in the main loop to process events.
  *
  */
void swl_periph_silabs_process_idle_state(void);

#endif // SWL_PERIPH_SILABS_H__


// End of file swl_periph_silabs.h
/** @} */
