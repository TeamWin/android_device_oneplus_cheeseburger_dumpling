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

# Release name
PRODUCT_RELEASE_NAME := OnePlus 5

$(call inherit-product, build/target/product/core_64_bit.mk)
$(call inherit-product, build/target/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# qcom standard decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# tzdata
PRODUCT_PACKAGES += \
    tzdata_twrp

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8998 \
    ro.hardware.gatekeeper=msm8998 \
    ro.vendor.build.security_patch=2127-12-31

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cheeseburger
PRODUCT_NAME := twrp_cheeseburger
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A5000
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5-user 10 QKQ1.191014.012 2010292059 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:10/QKQ1.191014.012/2010292059:user/release-keys
