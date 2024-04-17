#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/realme/RMX3261
BOARD_VENDOR := realme

# Security patch level
VENDOR_SECURITY_PATCH := 2023-02-05

# Assert
TARGET_OTA_ASSERT_DEVICE := RMX3261

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    vendor \
    system \
    product \
    system_ext
BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := RMX3261
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 video=HDMI-A-1:1280x800@60 buildvariant=user
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_KERNEL_IMAGE_NAME := Image
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
TARGET_KERNEL_CONFIG := RMX3261_defconfig
TARGET_KERNEL_SOURCE := kernel/realme/RMX3261

# Kernel - prebuilt
TARGET_FORCE_PREBUILT_KERNEL := true
ifeq ($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilts/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilts/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_INCLUDE_DTB_IN_BOOTIMG := 
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilts/dtbo.img
BOARD_KERNEL_SEPARATED_DTBO := 
endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_SUPER_PARTITION_SIZE := 9126805504 # TODO: Fix hardcoded value
BOARD_SUPER_PARTITION_GROUPS := realme_dynamic_partitions
BOARD_REALME_DYNAMIC_PARTITIONS_PARTITION_LIST := \
    vendor \
    system \
    product \
    system_ext
BOARD_REALME_DYNAMIC_PARTITIONS_SIZE := 9122611200 # TODO: Fix hardcoded value

# Platform
TARGET_BOARD_PLATFORM := ums512

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_EXT_PROP += $(DEVICE_PATH)/system_ext.prop
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.ums512_2h10
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/odm_manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.biometrics.fingerprint@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gatekeeper@1.0-service.trusty.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.health@2.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.keymaster@4.1-unisoc.service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.power.stats@1.0-service-mock.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.thermal@2.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/lights.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.3-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_dualsim.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_face.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/rebootescrow-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor-power-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.boot@1.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.fingerprintmmi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.gnss@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.thermal@2.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.vdsp@1.0-service-lazy.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vibrator.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Inherit the proprietary files
include vendor/realme/RMX3261/BoardConfigVendor.mk

-include vendor/realme/RMX3261/BoardConfigVendor.mk
