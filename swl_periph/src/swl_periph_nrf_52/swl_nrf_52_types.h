#ifndef SWL_NRF_52_TYPES_H__

#define SWL_NRF_52_TYPES_H__
#include "app_util_platform.h"
#include "app_error.h"

#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>
#include <string.h>

typedef uint8_t     uint8;
typedef int8_t      int8;
typedef uint16_t    uint16;
typedef int16_t     int16;
typedef uint32_t    uint32;
typedef int32_t     int32;
typedef uint64_t    uint64;
typedef int64_t     int64;

// Programatic Breakpoint
#define SWL_BKPT                    NRF_BREAKPOINT_COND

// 0x000 indicates success (consistent with nRF5 SDK API)
#define SWL_SUCCESS                 NRF_SUCCESS

// Error check macro
#define SWL_ERROR_CHECK(ERR_CODE)                           \
          {                                                 \
            if(ERR_CODE != SWL_SUCCESS)                     \
            {                                               \
              swl_periph_log_crash(__LINE__, ERR_CODE);     \
            }                                               \
          }

#endif /* SWL_NRF_52_TYPES_H_ */

