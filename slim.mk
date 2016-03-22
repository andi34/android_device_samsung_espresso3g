#
# Copyright (C) 2012 The CyanogenMod Project
# Copyright (C) 2014 SlimRoms Project
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

# Boot animation
TARGET_SCREEN_HEIGHT := 480
TARGET_SCREEN_WIDTH := 600

# Inherit common Slim configuration
$(call inherit-product, vendor/slim/config/gsm.mk)
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# SlimRoms specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso3g/overlay/slim
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressowifi/overlay/slim-common

# Inherit device configuration
$(call inherit-product, device/samsung/espresso3g/aosp_espresso3g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_espresso3g
