#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := msm8994
TARGET_NO_BOOTLOADER := true

# Cpusets
ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true
ENABLE_SCHED_BOOST := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw

# Kernel
BOARD_KERNEL_CMDLINE := console=none quiet androidboot.hardware=qcom ehci-hcd.park=3 lpm_levels.sleep_disabled=1 boot_cpus=0-3 androidboot.selinux=permissive androidboot.verifiedbootstate=green androidboot.veritymode=enforcing androidboot.enable_dm_verity=1 androidboot.secboot=enabled buildvariant=user
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := device/oneplus/oneplus2/prebuilt/Image.gz-dtb

# Platform
TARGET_BOARD_PLATFORM := msm8994
TARGET_BOARD_PLATFORM_GPU := qcom-adreno430

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 59047394304
BOARD_FLASH_BLOCK_SIZE := 262144

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Treble
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
AB_OTA_UPDATER := false

# Init
#TARGET_INIT_VENDOR_LIB := libinit_oneplus2
#TARGET_RECOVERY_DEVICE_MODULES := libinit_oneplus2
#TARGET_UNIFIED_DEVICE := true
#TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# TWRP specific build flags
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 4095
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
#TW_USE_TOOLBOX := true
TW_HAS_EDL_MODE := true
ALLOW_MISSING_DEPENDENCIES := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

