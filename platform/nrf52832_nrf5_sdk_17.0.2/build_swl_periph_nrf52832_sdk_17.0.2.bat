@echo        off
set softdevicehexfile=..\..\..\nRF5_SDK_17.0.2_d674dde\components\softdevice\s132\hex\s132_nrf52_7.2.0_softdevice.hex
set outputhexfilename=.\swl_periph_example_nrf52832_sdk_17.0.2.hex
set outputdfupackagefilename=.\swl_periph_example_nrf52832_sdk_17.0.2_dfu_package.zip
set sesdirectory="C:\Program Files\SEGGER\SEGGER Embedded Studio for ARM 5.42b"
set nrfutilexefile="nrfutil.exe"
setlocal ENABLEDELAYEDEXPANSION

cls
echo.
echo        -------------------------------------------------------------------------
echo        *                                                                       *
echo        *                        SwaraLink Technologies                         *
echo        *      Embedded Peripheral (swl_periph) Middleware - Build script       *
echo        *                                                                       *
echo        -------------------------------------------------------------------------
echo.
echo        This batch script will perform the following actions:
echo        1. Build the Secure Bootloader Project
echo        2. Build the SwaraLink Example Application Project
echo        3. Generate the appropriate bootloader settings for DFU (device firmware 
echo           update)
echo        4. Merge the Nordic soft device, bootloader, application, and bootloader 
echo           settings and generate a single "superhex" file that can be used to 
echo           program the nRF52DK kit via USB.
echo        5. Generate a DFU package zip file that can be used to perform an 
echo           over-the-air firmware update of the nRF52 DK kit via the SwaraLink 
echo           Mobile App (or any mobile app running the SWLCentral Middleware).
echo.
echo        This script assumes that you have Segger Embedded Studio for ARM v5.42b 
echo        installed at the following location:
echo. 
echo        %sesdirectory%
echo.
echo        If the above directory is not correct for this machine, please press 
echo        CTRL-C to terminate this script, update the value of "sesdirectory" 
echo        within this batch file, and re-run.
echo.
echo        This script also assumes that you have the Nordic nrfutil tool installed 
echo        and that the nrfutil.exe is contained within a directory within your 
echo        Windows PATH variable. If this is not the case, press CTRL-C to 
echo        terminate this script and install the nrfutil tool.
echo.
echo        Information on installing the nrfutil tool can be found here: 
echo.
echo        https://infocenter.nordicsemi.com/topic/ug_nrfutil/UG/nrfutil/nrfutil_installing.html
echo.
echo        Once nrfutil is installed, please update your Windows PATH variable to 
echo        include the directory containing the nrfutil.exe executable.
echo        Alternatively, you can modify the value of "nrfutilexefile" within this
echo        batch file to include the full path with the location of the nrfutil.exe 
echo        executable.
echo.
echo        Additional note: when building for production, we recommend that you 
echo        generate your own public and private key pair and update the two files in
echo        the dfu directory. This is in an important security feature that will 
echo        ensure that your firmware image is properly signed and that your
echo        over-the-air firmware updates will be properly authenticated.
echo.
echo        Information on generating a new key pair using nrfutil can be found here:
echo.
echo        https://infocenter.nordicsemi.com/topic/sdk_nrf5_v17.0.2/lib_bootloader_dfu_keys.html
echo.
pause
echo.
echo.
echo Step 1: Bulding Bootloader...
echo.
echo.
echo.
echo.
%sesdirectory%\bin\emBuild.exe  -config "Release" dfu\secure_bootloader\pca10040_s132_ble_debug\ses\secure_bootloader_ble_s132_pca10040_debug.emProject -verbose -rebuild
echo.
echo.
echo.
echo.
echo Step 2: Building nordic_example_swl_periph...
echo.
echo.
echo.
echo.
%sesdirectory%\bin\emBuild.exe  -config "Release" swl\nordic_example_swl_periph\pca10040\s132\ses\swl_periph_nrf_pca10040_s132.emProject -verbose -rebuild
echo.
echo.
echo.
echo.
echo Step 3: Generating Bootloader Settings...
echo.
echo.
echo.
echo.
%nrfutilexefile%  settings generate --family NRF52 --application swl\nordic_example_swl_periph\pca10040\s132\ses\Output\Release\Exe\nordic_example_swl_periph.hex --application-version 0 --bootloader-version 0 --bl-settings-version 2 BLSETTINGSHEXFILE.hex
echo.
echo.
echo.
echo.
echo Step 4: Merging images...
echo Merging application and bootloader...
mergehex.exe --merge swl\nordic_example_swl_periph\pca10040\s132\ses\Output\Release\Exe\nordic_example_swl_periph.hex dfu\secure_bootloader\pca10040_s132_ble_debug\ses\Output\Release\Exe\secure_bootloader_ble_s132_pca10040_debug.hex --output output1.hex
echo.
echo.
echo.
echo.
echo Merging soft device...
mergehex.exe --merge output1.hex %softdevicehexfile% --output output2.hex
echo.
echo.
echo.
echo.
echo Step 5: Generating DFU package...
%nrfutilexefile% pkg generate --hw-version 52 --application-version 1 --application swl\nordic_example_swl_periph\pca10040\s132\ses\Output\Release\Exe\nordic_example_swl_periph.hex --sd-req 0x101 --key-file dfu\private_key_nrf.key %outputdfupackagefilename%
echo.
echo.
echo.
echo.
echo Merging dfu hex with bootloader settings hex...
mergehex.exe --merge output2.hex BLSETTINGSHEXFILE.hex --output %outputhexfilename%
echo.
echo.
echo.
echo.
echo All steps complete!
echo Deleting temp files
echo.
echo.
del BLSETTINGSHEXFILE.hex
del output1.hex
del output2.hex
echo.
echo.
echo End of script!
echo.
echo Superhex file generated: %outputhexfilename%
echo.       
echo This superhex file can be flashed to the device using nRF Connect for Desktop
echo.
echo DFU zip package generated: %outputdfupackagefilename%
echo.
echo This DFU package ZIP file can be used for updating the firwamre over-the-air
echo using the SwaraLink mobile app or any other mobile app implementing the 
echo SWLCentral Middleware library.
echo.




    