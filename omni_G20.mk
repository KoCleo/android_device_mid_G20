#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from G20 device
$(call inherit-product, device/mid/G20/device.mk)

PRODUCT_DEVICE := G20
PRODUCT_NAME := omni_G20
PRODUCT_BRAND := G20
PRODUCT_MODEL := G20
PRODUCT_MANUFACTURER := mid

PRODUCT_GMS_CLIENTID_BASE := android-mid

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_mt8783_ttb_c_n-user 7.0 NRD90M 1624599443 dev-keys"

BUILD_FINGERPRINT := alps/full_mt8783_ttb_c_n/mt8783_ttb_c_n:7.0/NRD90M/1624599443:user/dev-keys
