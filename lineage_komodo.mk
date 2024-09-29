#

# Inherit some dumb shit
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ICONS := true
EXTRA_UDFPS_ANIMATIONS := true

# Launcher fucking madness
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false

# Lame ass flags
WITH_GAPPS := true
WITH_GMS := true

#Xtras
TARGET_IS_PIXEL_9 := true
TARGET_IS_PIXEL := true

# Inherit device configuration
$(call inherit-product, device/google/caimito/aosp_komodo.mk)

# Inherit some common TheParasiteProject flags, WIP ofc
#TARGET_SUPPORTS_GOOGLE_RECORDER := true
#TARGET_INCLUDE_STOCK_ARCORE := true
#TARGET_INCLUDE_LIVE_WALLPAPERS := true
#TARGET_SUPPORTS_QUICK_TAP := true
#TARGET_SUPPORTS_CALL_RECORDING := true
#TARGET_INCLUDE_CARRIER_SERVICES := true
#TARGET_INCLUDE_CARRIER_SETTINGS := true
#TARGET_INCLUDE_CARRIER_SERVICES := true
#TARGET_SUPPORTS_ADPATIVE_CHARGING := true
#TARGET_SUPPORTS_GOOGLE_BATTERY := true
#MAINLINE_INCLUDE_VIRT_MODULE := true
#TARGET_SUPPORTS_NOW_PLAYING := true
#TARGET_SUPPORTS_GOOGLE_CAMERA := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel Sepolicy
#TARGET_INCLUDE_PIXEL_SEPOLICY := false

# Keys
#TARGET_BUILD_FULLY_SIGN := true

#TARGET_SUPPORTS_PREBUILT_UPDATABLE_APEX := true
TARGET_DISABLE_EPPE := true

# More dumb shit, sort of important
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 9 Pro XL
PRODUCT_NAME := lineage_komodo

# Boot animation
TARGET_SCREEN_HEIGHT := 2992
TARGET_SCREEN_WIDTH := 1344

PRODUCT_GMS_CLIENTID_BASE := android-google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=komodo \
    PRIVATE_BUILD_DESC="komodo-user 14 AD1A.240905.004 12196292 release-keys"

BUILD_FINGERPRINT := google/komodo/komodo:14/AD1A.240905.004/12196292:user/release-keys

$(call inherit-product, vendor/google_devices/komodo/komodo.mk)
