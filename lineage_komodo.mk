#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_komodo.mk)

include device/google/caimito/device-lineage.mk

TARGET_DISABLE_EPPE := true

PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_NAME := lineage_komodo

PRODUCT_SYSTEM_BRAND := google
PRODUCT_SYSTEM_MANUFACTURER := Google

PRODUCT_BRAND_FOR_ATTESTATION := google
PRODUCT_DEVICE_FOR_ATTESTATION := komodo
PRODUCT_MANUFACTURER_FOR_ATTESTATION := Google
PRODUCT_MODEL_FOR_ATTESTATION := Pixel 9 Pro XL
PRODUCT_NAME_FOR_ATTESTATION := komodo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=komodo \
    PRIVATE_BUILD_DESC="komodo_beta-user 15 AP31.240617.015 12207491 release-keys"

BUILD_FINGERPRINT := google/komodo_beta/komodo:15/AP31.240617.015/12207491:user/release-keys

$(call inherit-product, vendor/google/komodo/komodo-vendor.mk)
