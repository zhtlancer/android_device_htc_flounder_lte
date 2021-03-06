# Copyright (C) 2014 The CyanogenMod Project
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

# Base on flounder
$(call inherit-product, device/htc/flounder/lineage.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/telephony.mk)

# Assert for recovery compatibility
TARGET_OTA_ASSERT_DEVICE := flounder,flounder_lte

# Inherit LTE config
$(call inherit-product, device/htc/flounder/device-lte.mk)

$(call inherit-product-if-exists, vendor/htc/flounder_lte/device-vendor.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=flounder_lte \
    PRIVATE_BUILD_DESC="volantisg-user 7.1.1 N4F27P 4333386 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/volantisg/flounder_lte:7.1.1/N4F27P/4333386:user/release-keys

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2017-10-05

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_flounder_lte
PRODUCT_DEVICE := flounder_lte
PRODUCT_BRAND := google
PRODUCT_MODEL := Nexus 9
