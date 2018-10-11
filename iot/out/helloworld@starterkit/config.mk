AOS_SDK_MAKEFILES           		+= ./framework/atparser/atparser.mk /Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/auto_component/auto_component.mk ./tools/cli/cli.mk ./utility/digest_algorithm/digest_algorithm.mk ./kernel/hal/hal.mk ./example/helloworld/helloworld.mk ./kernel/init/init.mk ././kernel/modules/fs/kv/kv.mk ././kernel/vfs/device/device.mk ./utility/libc/libc.mk ./utility/log/log.mk ././platform/arch/arm/armv7m/armv7m.mk ././platform/mcu/stm32l4xx_cube/stm32l4xx_cube.mk ./kernel/rhino/rhino.mk ./device/sal/sal.mk ./device/sal/wifi/bk7231/bk7231.mk ./device/sensor/sensor.mk ./board/starterkit/starterkit.mk ./kernel/vcall/vcall.mk ./kernel/vfs/vfs.mk ./kernel/yloop/yloop.mk
TOOLCHAIN_NAME            		:= GCC
AOS_SDK_LDFLAGS             		+= -Wl,--gc-sections -Wl,--cref -mcpu=cortex-m4 -mlittle-endian -mthumb -mthumb-interwork --specs=nosys.specs -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=nano.specs -u _printf_float -T board/starterkit/STM32L433RCTxP_FLASH.ld
AOS_SDK_LDS_FILES                     += 
AOS_SDK_LDS_INCLUDES                  += 
RESOURCE_CFLAGS					+= -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\" -DSTM32L433xx -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"
AOS_SDK_LINK_SCRIPT         		+= 
AOS_SDK_LINK_SCRIPT_CMD    	 	+= 
AOS_SDK_PREBUILT_LIBRARIES 	 	+= 
AOS_SDK_CERTIFICATES       	 	+= 
AOS_SDK_PRE_APP_BUILDS      		+= 
AOS_SDK_LINK_FILES          		+=                                          
AOS_SDK_INCLUDES           	 	+=                       -I./framework/atparser/./ -I./tools/cli/include -I./utility/digest_algorithm/. -I././kernel/modules/fs/kv/include -I././platform/arch/arm/armv7m/gcc/m4/ -I././platform/mcu/stm32l4xx_cube/Drivers/STM32L4xx_HAL_Driver/Inc -I././platform/mcu/stm32l4xx_cube/Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I././platform/mcu/stm32l4xx_cube/Drivers/CMSIS/Include -I././platform/mcu/stm32l4xx_cube/Drivers/CMSIS/Device/ST/STM32L4xx/Include -I./kernel/rhino/core/include -I./kernel/rhino/debug/include -I./device/sal/./include -I./device/sal/wifi/bk7231/./ -I./device/sensor/. -I./board/starterkit/. -I./board/starterkit/hal/ -I./board/starterkit/aos/ -I./board/starterkit/Inc/ -I./kernel/vcall/./mico/include -I./kernel/vfs/include -I./include -I./example/helloworld
AOS_SDK_DEFINES             		+=                           -DBUILD_BIN -DAOS_ATCMD -DHAVE_NOT_ADVANCED_FORMATE -DCONFIG_AOS_CLI -DAOS_HAL -DAOS_NO_WIFI -DAOS_KV -DCONFIG_AOS_KV_MULTIPTN_MODE -DCONFIG_AOS_KV_PTN=6 -DCONFIG_AOS_KV_SECOND_PTN=7 -DCONFIG_AOS_KV_PTN_SIZE=4096 -DCONFIG_AOS_KV_BUFFER_SIZE=8192 -DWITH_SAL -DDEV_SAL_BK7231 -DAOS_SENSOR -DSTDIO_UART=0 -DCONFIG_AOS_CLI_BOARD -DAOS_SENSOR_ACC_MIR3_DA217 -DAOS_SENSOR_ALS_LITEON_LTR553 -DAOS_SENSOR_PS_LITEON_LTR553 -DAOS_SENSOR_ACC_SUPPORT_STEP -DIOTX_WITHOUT_TLS -DMQTT_DIRECT -DVCALL_RHINO -DAOS_VFS -DAOS_LOOP
COMPONENTS                		:= atparser auto_component cli digest_algorithm hal helloworld kernel_init kv vfs_device newlib_stub log armv7m stm32l4xx_cube rhino sal device_sal_bk7231 sensor starterkit vcall vfs yloop
PLATFORM_DIRECTORY        		:= starterkit
APP_FULL                  		:= helloworld
PLATFORM                  		:= starterkit
HOST_MCU_FAMILY                  	:= stm32l4xx_cube
SUPPORT_BINS                          := no
APP                       		:= helloworld
HOST_OPENOCD              		:= stm32l4xx
JTAG              		        := jlink_swd
HOST_ARCH                 		:= Cortex-M4
NO_BUILD_BOOTLOADER           	:= 
NO_BOOTLOADER_REQUIRED         	:= 
atparser_LOCATION         := ./framework/atparser/
auto_component_LOCATION         := /Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/auto_component/
cli_LOCATION         := ./tools/cli/
digest_algorithm_LOCATION         := ./utility/digest_algorithm/
hal_LOCATION         := ./kernel/hal/
helloworld_LOCATION         := ./example/helloworld/
kernel_init_LOCATION         := ./kernel/init/
kv_LOCATION         := ././kernel/modules/fs/kv/
vfs_device_LOCATION         := ././kernel/vfs/device/
newlib_stub_LOCATION         := ./utility/libc/
log_LOCATION         := ./utility/log/
armv7m_LOCATION         := ././platform/arch/arm/armv7m/
stm32l4xx_cube_LOCATION         := ././platform/mcu/stm32l4xx_cube/
rhino_LOCATION         := ./kernel/rhino/
sal_LOCATION         := ./device/sal/
device_sal_bk7231_LOCATION         := ./device/sal/wifi/bk7231/
sensor_LOCATION         := ./device/sensor/
starterkit_LOCATION         := ./board/starterkit/
vcall_LOCATION         := ./kernel/vcall/
vfs_LOCATION         := ./kernel/vfs/
yloop_LOCATION         := ./kernel/yloop/
atparser_SOURCES          += atparser.c 
auto_component_SOURCES          +=  component_init.c testcase_register.c
cli_SOURCES          += cli.c dumpsys.c 
digest_algorithm_SOURCES          += CheckSumUtils.c crc.c digest_algorithm.c md5.c 
hal_SOURCES          += ota.c wifi.c 
helloworld_SOURCES          += helloworld.c 
kernel_init_SOURCES          += aos_init.c 
kv_SOURCES          += kvmgr.c 
vfs_device_SOURCES          += vfs_adc.c vfs_gpio.c vfs_i2c.c vfs_pwm.c vfs_rtc.c vfs_spi.c vfs_uart.c vfs_wdg.c 
newlib_stub_SOURCES          += newlib_stub.c 
log_SOURCES          += log.c 
armv7m_SOURCES          += gcc/m4/port_c.c gcc/m4/port_s.S 
stm32l4xx_cube_SOURCES          += Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/system_stm32l4xx.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_adc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_adc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_can.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_comp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cortex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_crc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_crc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cryp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_cryp_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dac.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dac_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dcmi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dfsdm.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dfsdm_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma2d.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dma_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_dsi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_firewall.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_flash_ramfunc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gfxmmu.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_gpio.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hash.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hash_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_hcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_i2c_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_irda.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_iwdg.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_lcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_lptim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ltdc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ltdc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_nand.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_nor.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_opamp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_opamp_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_ospi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pcd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pcd_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_pwr_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_qspi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rcc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rng.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_rtc_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sai.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sd_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smartcard.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smartcard_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_smbus.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_spi_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_sram.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_swpmi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tim_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_tsc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_uart_ex.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_hal_wwdg.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_adc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_comp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_crc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_crs.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dac.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dma.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_dma2d.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_exti.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_fmc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_gpio.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_i2c.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_lptim.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_lpuart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_opamp.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_pwr.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rcc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rng.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_rtc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_sdmmc.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_spi.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_usart.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_usb.c Drivers/STM32L4xx_HAL_Driver/Src/stm32l4xx_ll_utils.c aos/aos.c aos/soc_impl.c aos/trace_impl.c hal/hal_adc_stm32l4.c hal/hal_flash_stm32l4.c hal/hal_gpio_stm32l4.c hal/hal_i2c_stm32l4.c hal/hal_nand_stm32l4.c hal/hal_nor_stm32l4.c hal/hal_qspi_stm32l4.c hal/hal_rtc_stm32l4.c hal/hal_sd_stm32l4.c hal/hal_spi_stm32l4.c hal/hal_uart_stm32l4.c hal/hw.c hal/ota_port.c 
rhino_SOURCES          += common/k_fifo.c common/k_trace.c core/k_buf_queue.c core/k_dyn_mem_proc.c core/k_err.c core/k_event.c core/k_idle.c core/k_mm.c core/k_mm_blk.c core/k_mm_debug.c core/k_mutex.c core/k_obj.c core/k_pend.c core/k_queue.c core/k_ringbuf.c core/k_sched.c core/k_sem.c core/k_stats.c core/k_sys.c core/k_task.c core/k_task_sem.c core/k_tick.c core/k_time.c core/k_timer.c core/k_workqueue.c debug/k_overview.c 
sal_SOURCES          += ip4_addr.c sal.c sal_arch.c sal_device.c sal_err.c sal_sockets.c 
device_sal_bk7231_SOURCES          += bk7231.c wifi_atcmd_bk7231.c 
sensor_SOURCES          += drv/drv_acc_bosch_bma253.c drv/drv_acc_gyro_st_lsm6dsl.c drv/drv_acc_mir3_da217.c drv/drv_als_ps_liteon_ltr553.c drv/drv_baro_bosch_bmp280.c drv/drv_baro_st_lps22hb.c drv/drv_humi_bosch_bme280.c drv/drv_mag_st_lis3mdl.c drv/drv_mag_temp_memsic_mmc3680kj.c drv/drv_temp_humi_sensirion_shtc1.c drv/drv_temp_humi_st_hts221.c hal/sensor_drv_api.c hal/sensor_hal.c 
starterkit_SOURCES          += Src/stm32l4xx_hal_msp.c aos/board.c aos/board_cli.c aos/soc_init.c aos/st7789.c startup_stm32l433xx.s 
vcall_SOURCES          += aos/aos_rhino.c 
vfs_SOURCES          += device.c select.c vfs.c vfs_file.c vfs_inode.c vfs_register.c 
yloop_SOURCES          += local_event.c yloop.c 
atparser_CHECK_HEADERS    += 
auto_component_CHECK_HEADERS    += 
cli_CHECK_HEADERS    += 
digest_algorithm_CHECK_HEADERS    += 
hal_CHECK_HEADERS    += 
helloworld_CHECK_HEADERS    += 
kernel_init_CHECK_HEADERS    += 
kv_CHECK_HEADERS    += 
vfs_device_CHECK_HEADERS    += 
newlib_stub_CHECK_HEADERS    += 
log_CHECK_HEADERS    += 
armv7m_CHECK_HEADERS    += 
stm32l4xx_cube_CHECK_HEADERS    += 
rhino_CHECK_HEADERS    += 
sal_CHECK_HEADERS    += 
device_sal_bk7231_CHECK_HEADERS    += 
sensor_CHECK_HEADERS    += 
starterkit_CHECK_HEADERS    += 
vcall_CHECK_HEADERS    += 
vfs_CHECK_HEADERS    += 
yloop_CHECK_HEADERS    += 
atparser_INCLUDES         := 
auto_component_INCLUDES         := 
cli_INCLUDES         := 
digest_algorithm_INCLUDES         := 
hal_INCLUDES         := 
helloworld_INCLUDES         := 
kernel_init_INCLUDES         := 
kv_INCLUDES         := 
vfs_device_INCLUDES         := -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/ -I././kernel/vfs/device/../include/device/ -I././kernel/vfs/device/../include/ -I././kernel/vfs/device/../../hal/soc/
newlib_stub_INCLUDES         := 
log_INCLUDES         := 
armv7m_INCLUDES         := 
stm32l4xx_cube_INCLUDES         := 
rhino_INCLUDES         := 
sal_INCLUDES         := 
device_sal_bk7231_INCLUDES         := 
sensor_INCLUDES         := 
starterkit_INCLUDES         := 
vcall_INCLUDES         := 
vfs_INCLUDES         := 
yloop_INCLUDES         := 
atparser_DEFINES          := 
auto_component_DEFINES          := 
cli_DEFINES          := 
digest_algorithm_DEFINES          := 
hal_DEFINES          := 
helloworld_DEFINES          := 
kernel_init_DEFINES          := 
kv_DEFINES          := 
vfs_device_DEFINES          := 
newlib_stub_DEFINES          := 
log_DEFINES          := 
armv7m_DEFINES          := 
stm32l4xx_cube_DEFINES          := 
rhino_DEFINES          := 
sal_DEFINES          := 
device_sal_bk7231_DEFINES          := 
sensor_DEFINES          := 
starterkit_DEFINES          := 
vcall_DEFINES          := 
vfs_DEFINES          := 
yloop_DEFINES          := 
atparser_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
auto_component_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
cli_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
digest_algorithm_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
hal_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
helloworld_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
kernel_init_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
kv_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
vfs_device_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
newlib_stub_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
log_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
armv7m_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
stm32l4xx_cube_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
rhino_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
sal_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
device_sal_bk7231_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
sensor_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
starterkit_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
vcall_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
vfs_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
yloop_CFLAGS           :=             -mcpu=cortex-m4 -march=armv7-m -mlittle-endian -mthumb -mthumb-interwork -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w -D__VFP_FP__ -DSYSINFO_KERNEL_VERSION=\"AOS-R-1.3.1\"    -DSTM32L433xx  -DSYSINFO_OS_VERSION=\"\" -DSYSINFO_PRODUCT_MODEL=\"ALI_AOS_starterkit\" -DSYSINFO_DEVICE_NAME=\"starterkit\"    -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -std=gnu11  -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" -Wall -Werror -Wall -Werror
atparser_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
auto_component_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
cli_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
digest_algorithm_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
hal_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
helloworld_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
kernel_init_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
kv_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
vfs_device_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
newlib_stub_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
log_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
armv7m_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
stm32l4xx_cube_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
rhino_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
sal_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
device_sal_bk7231_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
sensor_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
starterkit_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
vcall_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
vfs_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
yloop_CXXFLAGS         :=                      -ggdb -Os -Wall -Wfatal-errors -fsigned-char -ffunction-sections -fdata-sections -fno-common -fno-rtti -fno-exceptions   -DAOS_SDK_VERSION_MAJOR=3 -DAOS_SDK_VERSION_MINOR=2 -DAOS_SDK_VERSION_REVISION=3 -I/Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/resources/ -DPLATFORM=\"starterkit\" 
atparser_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
auto_component_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
cli_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
digest_algorithm_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
hal_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
helloworld_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
kernel_init_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
kv_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vfs_device_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
newlib_stub_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
log_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
armv7m_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
stm32l4xx_cube_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
rhino_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
sal_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
device_sal_bk7231_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
sensor_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
starterkit_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vcall_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
vfs_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
yloop_ASMFLAGS         :=             -mcpu=cortex-m4 -mlittle-endian -mthumb -mfloat-abi=hard -mfpu=fpv4-sp-d16 -w         -ggdb
atparser_RESOURCES        := 
auto_component_RESOURCES        := 
cli_RESOURCES        := 
digest_algorithm_RESOURCES        := 
hal_RESOURCES        := 
helloworld_RESOURCES        := 
kernel_init_RESOURCES        := 
kv_RESOURCES        := 
vfs_device_RESOURCES        := 
newlib_stub_RESOURCES        := 
log_RESOURCES        := 
armv7m_RESOURCES        := 
stm32l4xx_cube_RESOURCES        := 
rhino_RESOURCES        := 
sal_RESOURCES        := 
device_sal_bk7231_RESOURCES        := 
sensor_RESOURCES        := 
starterkit_RESOURCES        := 
vcall_RESOURCES        := 
vfs_RESOURCES        := 
yloop_RESOURCES        := 
atparser_MAKEFILE         := ./framework/atparser/atparser.mk
auto_component_MAKEFILE         := /Users/garychen/Documents/GitHub/motion_aware/iot/out/helloworld@starterkit/auto_component/auto_component.mk
cli_MAKEFILE         := ./tools/cli/cli.mk
digest_algorithm_MAKEFILE         := ./utility/digest_algorithm/digest_algorithm.mk
hal_MAKEFILE         := ./kernel/hal/hal.mk
helloworld_MAKEFILE         := ./example/helloworld/helloworld.mk
kernel_init_MAKEFILE         := ./kernel/init/init.mk
kv_MAKEFILE         := ././kernel/modules/fs/kv/kv.mk
vfs_device_MAKEFILE         := ././kernel/vfs/device/device.mk
newlib_stub_MAKEFILE         := ./utility/libc/libc.mk
log_MAKEFILE         := ./utility/log/log.mk
armv7m_MAKEFILE         := ././platform/arch/arm/armv7m/armv7m.mk
stm32l4xx_cube_MAKEFILE         := ././platform/mcu/stm32l4xx_cube/stm32l4xx_cube.mk
rhino_MAKEFILE         := ./kernel/rhino/rhino.mk
sal_MAKEFILE         := ./device/sal/sal.mk
device_sal_bk7231_MAKEFILE         := ./device/sal/wifi/bk7231/bk7231.mk
sensor_MAKEFILE         := ./device/sensor/sensor.mk
starterkit_MAKEFILE         := ./board/starterkit/starterkit.mk
vcall_MAKEFILE         := ./kernel/vcall/vcall.mk
vfs_MAKEFILE         := ./kernel/vfs/vfs.mk
yloop_MAKEFILE         := ./kernel/yloop/yloop.mk
atparser_PRE_BUILD_TARGETS:= 
auto_component_PRE_BUILD_TARGETS:= 
cli_PRE_BUILD_TARGETS:= 
digest_algorithm_PRE_BUILD_TARGETS:= 
hal_PRE_BUILD_TARGETS:= 
helloworld_PRE_BUILD_TARGETS:= 
kernel_init_PRE_BUILD_TARGETS:= 
kv_PRE_BUILD_TARGETS:= 
vfs_device_PRE_BUILD_TARGETS:= 
newlib_stub_PRE_BUILD_TARGETS:= 
log_PRE_BUILD_TARGETS:= 
armv7m_PRE_BUILD_TARGETS:= 
stm32l4xx_cube_PRE_BUILD_TARGETS:= 
rhino_PRE_BUILD_TARGETS:= 
sal_PRE_BUILD_TARGETS:= 
device_sal_bk7231_PRE_BUILD_TARGETS:= 
sensor_PRE_BUILD_TARGETS:= 
starterkit_PRE_BUILD_TARGETS:= 
vcall_PRE_BUILD_TARGETS:= 
vfs_PRE_BUILD_TARGETS:= 
yloop_PRE_BUILD_TARGETS:= 
atparser_PREBUILT_LIBRARY := 
auto_component_PREBUILT_LIBRARY := 
cli_PREBUILT_LIBRARY := 
digest_algorithm_PREBUILT_LIBRARY := 
hal_PREBUILT_LIBRARY := 
helloworld_PREBUILT_LIBRARY := 
kernel_init_PREBUILT_LIBRARY := 
kv_PREBUILT_LIBRARY := 
vfs_device_PREBUILT_LIBRARY := 
newlib_stub_PREBUILT_LIBRARY := 
log_PREBUILT_LIBRARY := 
armv7m_PREBUILT_LIBRARY := 
stm32l4xx_cube_PREBUILT_LIBRARY := 
rhino_PREBUILT_LIBRARY := 
sal_PREBUILT_LIBRARY := 
device_sal_bk7231_PREBUILT_LIBRARY := 
sensor_PREBUILT_LIBRARY := 
starterkit_PREBUILT_LIBRARY := 
vcall_PREBUILT_LIBRARY := 
vfs_PREBUILT_LIBRARY := 
yloop_PREBUILT_LIBRARY := 
atparser_TYPE             := 
auto_component_TYPE             := kernel
cli_TYPE             := kernel
digest_algorithm_TYPE             := share
hal_TYPE             := kernel
helloworld_TYPE             := 
kernel_init_TYPE             := kernel
kv_TYPE             := kernel
vfs_device_TYPE             := 
newlib_stub_TYPE             := share
log_TYPE             := share
armv7m_TYPE             := 
stm32l4xx_cube_TYPE             := kernel
rhino_TYPE             := kernel
sal_TYPE             := kernel
device_sal_bk7231_TYPE             := 
sensor_TYPE             := kernel
starterkit_TYPE             := kernel
vcall_TYPE             := kernel
vfs_TYPE             := kernel
yloop_TYPE             := kernel
AOS_SDK_UNIT_TEST_SOURCES   		:=                                          
ALL_RESOURCES             		:= 
INTERNAL_MEMORY_RESOURCES 		:= 
EXTRA_TARGET_MAKEFILES 			:= 
APPS_START_SECTOR 				:=  
BOOTLOADER_FIRMWARE				:=  
ATE_FIRMWARE				        :=  
APPLICATION_FIRMWARE				:=  
PARAMETER_1_IMAGE					:=  
PARAMETER_2_IMAGE					:=  
FILESYSTEM_IMAGE					:=  
WIFI_FIRMWARE						:=  
BT_PATCH_FIRMWARE					:=  
AOS_ROM_SYMBOL_LIST_FILE 		:= 
AOS_SDK_CHIP_SPECIFIC_SCRIPT		:=                     
AOS_SDK_CONVERTER_OUTPUT_FILE	:=                     
AOS_SDK_FINAL_OUTPUT_FILE 		:=                     
AOS_RAM_STUB_LIST_FILE 			:= 
PING_PONG_OTA 					:= 
