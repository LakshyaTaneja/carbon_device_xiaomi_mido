#
# Copyright (C) 2017 The LineageOS Project
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

# Provide meaningful APN configuration
PRODUCT_COPY_FILES := device/xiaomi/mido/configs/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CARBON stuff.
$(call inherit-product, vendor/carbon/config/common.mk)

# Inherit Carbon GSM telephony parts
$(call inherit-product, vendor/carbon/config/gsm.mk)

$(call inherit-product, device/xiaomi/mido/device.mk)

$(call inherit-product-if-exists, vendor/xiaomi/mido/mido-vendor.mk)

TARGET_VENDOR := Xiaomi
PRODUCT_DEVICE := mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := carbon_mido
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="xiaomi/mido/mido:6.0.1/MMB29M/V8.2.4.0.MCFMIDL:user/release-keys" \
    PRIVATE_BUILD_DESC="mido-user 6.0.1 MMB29M V8.2.4.0.MCFMIDL release-keys"

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.carbon.maintainer="Lakku"
