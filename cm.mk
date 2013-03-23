## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/cdma.mk)

# Release name
PRODUCT_RELEASE_NAME := force

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/zte/Aurora/device_Aurora.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Aurora
PRODUCT_NAME := cm_Aurora
PRODUCT_BRAND := zte
PRODUCT_MODEL := Aurora
PRODUCT_MANUFACTURER := zte
