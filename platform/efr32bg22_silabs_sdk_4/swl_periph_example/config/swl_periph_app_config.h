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
#define TX_OP_QUEUE_SIZE                100
#define TX_BY_COPY_BUFFER_SIZE          1024
#define MAX_RX_PAYLOAD_SIZE             1024
#define INIT_PWR_MODE                   SWL_PWR_MODE_SPM4
#define MAX_NUM_PAIRED_DEVICES          5  //DO NOT modify. Feature is still under development!
#define DIAGNOSTICS_LOG_SIZE            256
#define INIT_PRIORITY_1                 SWL_PRIO_INCREASE_THROUGHPUT
#define INIT_PRIORITY_2                 SWL_PRIO_INCREASE_THROUGHPUT
#define INIT_PRIORITY_3                 SWL_PRIO_INCREASE_THROUGHPUT
#define INIT_SYS_STATE                  SWL_SYS_STATE_ON


#ifdef __cplusplus
}
#endif

#endif // SWL_PERIPH_APP_CONFIG_H__

// End of file swl_periph_app_config.h


