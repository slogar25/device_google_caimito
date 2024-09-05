#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Audio
RELEASE_PIXEL_AIDL_AUDIO_HAL := true

# Battery
RELEASE_PIXEL_AIDL_BATTERY_MITIGATION_HAL := true

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/google/caimito/overlay-lineage/vendor
PRODUCT_PACKAGE_OVERLAYS += device/google/caimito/overlay-lineage/product

ifneq (,$(filter lineage_caiman, $(TARGET_PRODUCT)))
PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayCaiman
endif

ifneq (,$(filter lineage_komodo, $(TARGET_PRODUCT)))
PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayKomodo
endif

ifneq (,$(filter lineage_tokay, $(TARGET_PRODUCT)))
PRODUCT_PACKAGES += \
    PixelDisplayServiceOverlayTokay
endif

# Wireless Charging
include device/google/gs-common/wireless_charger/wireless_charger.mk
