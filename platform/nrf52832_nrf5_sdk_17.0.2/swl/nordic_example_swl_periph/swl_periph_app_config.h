// File: swl_periph_app_config.h
// Copyright (c) 2021, SwaraLink Technologies
// All Rights Reserved
// Licensed by SwaraLink Technologies, subject to terms of Software License Agreement

#ifndef SWL_PERIPH_APP_CONFIG_H__
#define SWL_PERIPH_APP_CONFIG_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "swl_types.h"
#include "swl_periph.h"


// Application Configuration Parameters

/**@brief The TX_OP_QUEUE_SIZE determines the maximum number of P2C transmit operations that can be queued up at 
 *        any given time. If a transmit operation is attempted beyond this value, the swl_periph library will
 *        return an SWL_ERR_INSUFFICIENT_BUFFERS error. This value can be adjusted based on your application 
 *        requirements and will impact RAM usage. The minimum allowed value is 1, and the maximum allowed value
 *        is 100.
 */
#define TX_OP_QUEUE_SIZE                100


/**@brief The TX_BY_COPY_BUFFER_SIZE determines the maximum number of data that can queued up via the
 *        swl_periph_p2c_tx_by_copy function at any given time. If a swl_periph_p2c_tx_by_copy operationh
 *        is attempted in which there is not enough remaining space in the buffer, the swl_periph library
 *        will return an SWL_ERR_INSUFFICIENT_MEMORY error. This value can be adjusted based on your application
 *        requirements and will impact RAM usage. The minimum allowed value is 1, and the maximum allowed value
 *        is 32768, though the physical RAM on the device and RAM usage of the rest of the may further limit
 *        the maximum value.
 */
#define TX_BY_COPY_BUFFER_SIZE          1024

/**@brief The MAX_RX_PAYLOAD_SIZE determines the maximum size for any single C2P transmit operation from the 
 *        central device. If the central device attempts a single data tranmission with a size that exceeds
 *        this value, the SWLCentral library will return an error and disallow the transmission. The minimum 
 *        allowed value is 1, and the maximum allowed value is 32768, though the physical RAM on the device
 *        and RAM usage of the rest of the may further limit the maximum value.
 */
#define MAX_RX_PAYLOAD_SIZE             1024

/**@brief The INIT_PRIORITY_ values specify how the swl_periph middleware will prioritize between power 
 *        consumption, data throughput, and range / distange upon initialization. For more information,
 *        see @ref swl_periph_set_peripheral_priorities.
 */
#define INIT_PRIORITY_1                 SWL_PRIO_INCREASE_THROUGHPUT
#define INIT_PRIORITY_2                 SWL_PRIO_INCREASE_THROUGHPUT
#define INIT_PRIORITY_3                 SWL_PRIO_INCREASE_THROUGHPUT

/**@brief The INIT_SYS_STATE value specifies the state of the swl_periph middleware upon initialization.
 *        For more information, see @ref swl_periph_change_system_state.
 */
#define INIT_SYS_STATE                  SWL_SYS_STATE_ON              

/**@brief The INIT_PWR_MODE value is no longer used. It is recommended to not modify this value.
 */
#define INIT_PWR_MODE                   SWL_PWR_MODE_SPM4

/**@brief The MAX_NUM_PAIRED_DEVICES feature is still under development. For now, please
 *        DO NOT MODIFY this value!
 */
#define MAX_NUM_PAIRED_DEVICES          5  //DO NOT modify. Feature is still under development!


/**@brief The DIAGNOSTICS_LOG_SIZE value determines the size of the buffer used by the swl_periph library
 *        for diagnostic logging. The minimum supported size is 256, and the maximum supported size is
 *        1024. It is recommended to leave this value set to 1024.
 */
#define DIAGNOSTICS_LOG_SIZE            1024



#ifdef __cplusplus
}
#endif

#endif // SWL_PERIPH_APP_CONFIG_H__

// End of file swl_periph_app_config.h


