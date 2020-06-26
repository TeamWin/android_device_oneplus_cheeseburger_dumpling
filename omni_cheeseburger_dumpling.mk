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
PRODUCT_RELEASE_NAME := cheeseburger_dumpling

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Set by init module based on ro.boot.rf_version argument from bootloader
PRODUCT_SYSTEM_PROPERTY_BLACKLIST += ro.product.device ro.product.model ro.build.product 

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8998 \
    ro.hardware.gatekeeper=msm8998

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := cheeseburger_dumpling
PRODUCT_NAME := omni_cheeseburger_dumpling
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OnePlus A5000
PRODUCT_MANUFACTURER := OnePlus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus5-user 9 PKQ1.180716.001 1902221944 release-keys"

BUILD_FINGERPRINT := OnePlus/OnePlus5/OnePlus5:9/PKQ1.180716.001/1902221944:user/release-keys
