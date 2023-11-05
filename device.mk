#
# Copyright 2017 - 2023 The Android Open Source Project
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

# Inherit AOSP product makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Debug
PRODUCT_PACKAGES += \
	crash_dump \
	libprocinfo.recovery

PRODUCT_COPY_FILES += \
	$(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/system/apex/com.android.runtime/bin/crash_dump32:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/crash_dump32 \
	$(OUT_DIR)/target/product/$(PRODUCT_RELEASE_NAME)/system/apex/com.android.runtime/bin/crash_dump64:$(TARGET_COPY_OUT_RECOVERY)/root/system/bin/crash_dump64

ifeq ($(ONEPLUS_DYNAMIC), true)
# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true
PRODUCT_RETROFIT_DYNAMIC_PARTITIONS := true

# fastbootd
PRODUCT_PACKAGES += \
	fastbootd
endif

# qcom standard decryption
PRODUCT_PACKAGES += \
	qcom_decrypt \
	qcom_decrypt_fbe

PRODUCT_PROPERTY_OVERRIDES += \
	ro.hardware.keystore=msm8998 \
	ro.hardware.gatekeeper=msm8998