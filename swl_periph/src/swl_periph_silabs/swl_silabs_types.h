// File: swl_silabs_types.h
// Copyright (c) 2021, SwaraLink Technologies
// All Rights Reserved
// Licensed by SwaraLink Technologies, subject to terms of Software License Agreement


#ifndef SWL_SILABS_TYPES_H_
#define SWL_SILABS_TYPES_H_

#include <stddef.h>
#include "em_common.h"
#include "app_assert.h"

typedef uint8_t     uint8;
typedef int8_t      int8;
typedef uint16_t    uint16;
typedef int16_t     int16;
typedef uint32_t    uint32;
typedef int32_t     int32;
typedef uint64_t    uint64;
typedef int64_t     int64;

#define SWL_BKPT        __BKPT(0)

// 0x000 indicates success (consistent with nRF5 SDK API)
#define SWL_SUCCESS                 SL_STATUS_OK

// Error check macro
#define SWL_ERROR_CHECK(x)        {                                   \
                                        if(x != SWL_SUCCESS)          \
                                        {                             \
                                                __BKPT(0);            \
                                        }                             \
                                }

// Silabs SDK does not require any special symbol for variables that need to be
// retained during sleep. Therefore all RETAINED_STATIC declarations can be
// treated as standard static declarations
#define RETAINED_STATIC static


#endif /* SWL_SILABS_TYPES_H_ */
