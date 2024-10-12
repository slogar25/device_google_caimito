#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, device/google/caimito/aosp_komodo.mk)

include device/google/caimito/device-lineage.mk

# Flags
TARGET_BOOT_ANIMATION_RES := 1440
#TARGET_SUPPORTS_BLUR := true
#TARGET_HAS_UDFPS := true
#EXTRA_UDFPS_ICONS := true
#EXTRA_UDFPS_ANIMATIONS := true

# Face Unlock
#TARGET_FACE_UNLOCK_SUPPORTED := true

# Launcher fucking madness
#TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
#TARGET_DEFAULT_PIXEL_LAUNCHER := true
#TARGET_INCLUDE_PIXEL_LAUNCHER := true

# Lame ass flags
#WITH_GAPPS := true
#WITH_GMS := true

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
    PRIVATE_BUILD_DESC="komodo-user 14 AD1A.240905.004 12196292 release-keys"

BUILD_FINGERPRINT := google/komodo/komodo:14/AD1A.240905.004/12196292:user/release-keys

$(call inherit-product, vendor/google/komodo/komodo-vendor.mk)
