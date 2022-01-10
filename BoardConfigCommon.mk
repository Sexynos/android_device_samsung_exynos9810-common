# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2022 The LineageOS Project

COMMON_PATH := device/samsung/universal9810-common

# Include
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# Audio
TARGET_EXCLUDES_AUDIOFX := true
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(COMMON_PATH)/bluetooth

# Firmware
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := universal9810
TARGET_SOC := exynos9810
TARGET_BOOTLOADER_BOARD_NAME := universal9810

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

# Secondary Architecture
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Extracted with libbootimg
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos
TARGET_KERNEL_CLANG_COMPILE := true

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/samsung/universal9810

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE     := 57671680
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 68149248
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
BOARD_VENDORIMAGE_PARTITION_SIZE   := 681574400
BOARD_FLASH_BLOCK_SIZE := 131072

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# Fingerprint
TARGET_SEC_FP_HAS_FINGERPRINT_GESTURES := true

# Ramdisk
BOARD_ROOT_EXTRA_FOLDERS := efs

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/recovery/recovery.fstab

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# VNDK
BOARD_VNDK_VERSION := current

# Vendor
TARGET_COPY_OUT_VENDOR := vendor

# Wifi
TARGET_USES_64_BIT_BCMDHD        := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WPA_SUPPLICANT_USE_HIDL          := true
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_NVRAM_PATH_PARAM     := "/sys/module/dhd/parameters/nvram_path"
WIFI_DRIVER_NVRAM_PATH           := "/vendor/etc/wifi/nvram_net.txt"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_RESET_IFACE_AFTER_MAC_CHANGE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
PRODUCT_CFI_INCLUDE_PATHS += hardware/samsung_slsi/scsc_wifibt/wpa_supplicant_lib

# MACLOADER
BOARD_HAVE_SAMSUNG_WIFI := true

# Enable 64-bits binder
TARGET_USES_64_BIT_BINDER := true

# Graphics
TARGET_USES_HWC2 := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriverArm.so
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"

# HIDL
DEVICE_FRAMEWORK_MANIFEST_FILE := $(COMMON_PATH)/framework_manifest.xml

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# Inherit from the proprietary version
-include vendor/samsung/universal9810-common/BoardConfigVendor.mk
