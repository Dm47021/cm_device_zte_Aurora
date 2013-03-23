LOCAL_PATH := $(call my-dir)

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/zte/Aurora/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := device/zte/Aurora/include

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOOTLOADER_BOARD_NAME := hayes
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
ARCH_ARM_HAVE_NEON := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp -march=armv7-a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno220
TARGET_BOARD_PLATFORM_FPU := neon
BOARD_USES_ADRENO_200 := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno225

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 loglevel=7 kgsl.mmutype=gpummu
BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/zte/Aurora/kernel
TARGET_PREBUILT_RECOVERY_KERNEL := device/zte/Aurora/recovery/kernel

# Recovery Defines { Dm47021 }
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_HAS_DOWNLOAD_MODE := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 524288000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2908749824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_INITRC := device/zte/Aurora/recovery/root/init.rc
BOARD_CUSTOM_GRAPHICS := ../../../device/zte/Aurora/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING:= ../../device/zte/Aurora/recovery/recovery_ui.c
TARGET_RECOVERY_FSTAB := device/zte/Aurora/recovery.fstab
BOARD_USE_CUSTOM_RECOVERY_FONT := \"font_7x16.h\"
RECOVERY_NAME := CWM-based Recovery by:TEAM-0SIRIS

## PARTITION LAYOUT/INFO ##
BOARD_HAS_NO_MISC_PARTITION := false
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p15
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p16
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p18
BOARD_SYSTEM_FILESYSTEM := yaffs2
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p8
BOARD_CACHE_FILESYSTEM := yaffs2
BOARD_DATA_DEVICE := /dev/block/mmcblk0p18
BOARD_DATA_FILESYSTEM := yaffs2

# default props
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.debuggable=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.service.adb.enable=1
ADDITIONAL_DEFAULT_PROPERTIES += ro.config.sec_storage=1
ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mass_storage,adb

# USB
BOARD_CUSTOM_USB_CONTROLLER := ../../device/zte/Aurora/UsbController.cpp
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := /sys/devices/platform/msm_hsusb/gadget/lun0/file
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Releasetools
TARGET_PROVIDES_RELEASETOOLS := true
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := ./device/zte/Aurora/releasetools/Aurora_ota_from_target_files
