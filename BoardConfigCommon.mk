# Copyright (C) 2014 The CyanogenMod Project
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

BOARD_VENDOR := samsung

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon

# Graphics
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_DEVICE_DIRS += device/samsung/msm8226-common
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_HAS_DOWNLOAD_MODE := true

VENDOR_PATH := device/samsung/msm8226-common

include device/samsung/msm8226-common/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(VENDOR_PATH)/include

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# CMHW
BOARD_HARDWARE_CLASS += $(VENDOR_PATH)/cmhw

# Custom RIL class
BOARD_RIL_CLASS := ../../../$(VENDOR_PATH)/ril

# QCOM Hardware
BOARD_USES_QCOM_HARDWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Properties (reset them here, include more in device if needed)
TARGET_SYSTEM_PROP := $(VENDOR_PATH)/system.prop

# SELinux
-include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(VENDOR_PATH)/sepolicy

