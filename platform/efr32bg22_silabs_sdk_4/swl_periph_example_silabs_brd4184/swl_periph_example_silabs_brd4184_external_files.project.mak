####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 10                                              #
####################################################################

BASE_SDK_PATH = C:/Users/TomJimenez/SimplicityStudio/SDKs/gecko_sdk_2
BASE_SWL_PATH = C:/git/swl_periph/swl_periph
UNAME:=$(shell uname -s | sed -e 's/^\(CYGWIN\).*/\1/' | sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= gecko_sdk_4.1.2

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEFR32BG22C224F512IM40=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_BOARD_NAME="BRD4184A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'    \
 '-DDEV_FAMILY_SILABS=2'   \
 '-DSWL_DEVICE_FAMILY=DEV_FAMILY_SILABS'    \

ASM_DEFS += \
 '-DEFR32BG22C224F512IM40=1' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_BOARD_NAME="BRD4184A"' \
 '-DSL_BOARD_REV="A02"' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1'    \
 '-DDEV_FAMILY_SILAB=2'    \
 '-DSWL_DEVICE_FAMILY=DEV_FAMILY_SILAB' \

INCLUDES += \
 -Iconfig \
 -Iautogen \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/app/common/util/app_log \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/driver/button/inc \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/include \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/platform/emdrv/gpiointerrupt/inc \
 -I$(SDK_PATH)/platform/service/hfxo_manager/inc \
 -I$(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/crypto/mbedtls/library \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/inc/public \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src \
 -I$(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager \
 -I$(SDK_PATH)/app/bluetooth/common/simple_timer \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/service/udelay/inc\
 -I$(BASE_SWL_PATH)/src/swl_periph_silabs   \
 -I$(BASE_SWL_PATH)/src/swl_periph_common

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/lib/EFR32BG22/GCC/libbluetooth.a \
 $(SDK_PATH)/platform/emdrv/nvm3/lib/libnvm3_CM33_gcc.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg22_gcc_release.a \
 $(BASE_SWL_PATH)/lib/swl_periph_silabs_efr32bg22/libswl_periph_lib.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c99 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++11 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 --specs=nano.specs \
 -g

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--gc-sections


####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o

$(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o: $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
	@echo 'Building $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/simple_timer/sl_simple_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/simple_timer/sl_simple_timer.o

$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(SDK_PATH)/app/common/util/app_log/app_log.c
	@echo 'Building $(SDK_PATH)/app/common/util/app_log/app_log.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o: $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_gpio.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o: $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
	@echo 'Building $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/driver/mx25_flash_shutdown/src/sl_mx25_flash_shutdown_usart/sl_mx25_flash_shutdown.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o: $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
	@echo 'Building $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/toolchain/src/sl_memory.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/toolchain/src/sl_memory.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
	@echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o: $(SDK_PATH)/platform/driver/button/src/sl_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_button.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_button.o

$(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o: $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
	@echo 'Building $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/button/src/sl_simple_button.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/button/src/sl_simple_button.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o: $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/gpiointerrupt/src/gpiointerrupt.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/gpiointerrupt/src/gpiointerrupt.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o: $(SDK_PATH)/platform/emlib/src/em_se.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_se.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_se.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_se.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_emu_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_emu_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_hfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_hfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfrco.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfrco.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_lfxo_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_lfxo_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
	@echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_nvic.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_nvic.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
	@echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager.o

$(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o: $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/hfxo_manager/src/sl_hfxo_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
	@echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
	@echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o: $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_channel_sounding_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_channel_sounding_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_adv_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_adv_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
	@echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o

$(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o: $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
	@echo 'Building $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/silicon_labs/silabs_core/memory_manager/sl_malloc.c
CDEPS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.d
OBJS += $(OUTPUT_DIR)/sdk/util/silicon_labs/silabs_core/memory_manager/sl_malloc.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/constant_time.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/constant_time.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_aead.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_aead.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_driver_wrappers.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_hash.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_mac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_mac.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_se.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_se.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_storage.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_storage.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/mbedtls/library/threading.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba414ep_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/ba431_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptodma_internal.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/cryptolib_types.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_blk_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_dh_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecc_keygen_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_ecdsa_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_math.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcmp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_memcpy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_primitives.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_rng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_cryptoacc_library/src/sx_trng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ccm.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/cryptoacc_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@echo 'Building $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/project/app.o: app.c
	@echo 'Building app.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

#$(OUTPUT_DIR)/project/autogen/gatt_db.o: autogen/gatt_db.c
#	@echo 'Building autogen/gatt_db.c'
#	@mkdir -p $(@D)
#	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/gatt_db.c
#CDEPS += $(OUTPUT_DIR)/project/autogen/gatt_db.d
#OBJS += $(OUTPUT_DIR)/project/autogen/gatt_db.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@echo 'Building autogen/sl_bluetooth.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@echo 'Building autogen/sl_board_default_init.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o: autogen/sl_device_init_clocks.c
	@echo 'Building autogen/sl_device_init_clocks.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_device_init_clocks.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_device_init_clocks.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@echo 'Building autogen/sl_event_handler.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@echo 'Building autogen/sl_iostream_handles.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@echo 'Building autogen/sl_power_manager_handler.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o: autogen/sl_simple_button_instances.c
	@echo 'Building autogen/sl_simple_button_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_button_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_button_instances.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@echo 'Building autogen/sl_simple_led_instances.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/swl_periph/swl_periph_config.o: $(BASE_SWL_PATH)/src/swl_periph_common/swl_periph_config.c
	@echo 'Building $(BASE_SWL_PATH)/src/swl_periph_common/swl_periph_config.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(BASE_SWL_PATH)/src/swl_periph_common/swl_periph_config.c
CDEPS += $(OUTPUT_DIR)/swl_periph/swl_periph_config.d
OBJS += $(OUTPUT_DIR)/swl_periph/swl_periph_config.o

$(OUTPUT_DIR)/project/main.o: main.c
	@echo 'Building main.c'
	@mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA