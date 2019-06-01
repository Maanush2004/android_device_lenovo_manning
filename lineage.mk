# Copyright (C) 2018 The LineageOS Project
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

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common lineageos stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT	:= 1920
TARGET_SCREEN_WIDTH		:= 1080
DEVICE_RESOLUTION		:= 1080x1920

# Release name
PRODUCT_RELEASE_NAME := Lenovo K8 Note

PRODUCT_DEVICE			:= manning
PRODUCT_NAME			:= lineage_manning
PRODUCT_BRAND			:= lenovo
PRODUCT_MODEL			:= Lenovo K8 Note
PRODUCT_MANUFACTURER	:= lenovo
TARGET_VENDOR := lenovo
TARGET_VENDOR_PRODUCT_NAME			:= manning
TARGET_VENDOR_DEVICE_NAME		:= manning
# Google client ID property.
PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Stock Device props
PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=manning_retail \
  PRIVATE_BUILD_DESC="manning_retail-user 8.0.0 OMB27.43-70 77 release-keys"
  
BUILD_FINGERPRINT := lenovo/manning_retail/manning:8.0.0/OMB27.43-70/77:user/release-keys

