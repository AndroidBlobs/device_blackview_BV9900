# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from BV9900 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := blackview
PRODUCT_DEVICE := BV9900
PRODUCT_MANUFACTURER := blackview
PRODUCT_NAME := lineage_BV9900
PRODUCT_MODEL := BV9900

PRODUCT_GMS_CLIENTID_BASE := android-blackview
TARGET_VENDOR := blackview
TARGET_VENDOR_PRODUCT_NAME := BV9900
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_k79v1_64-user 9 PPR1.180610.011 eng.releas.20200103.112036 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Blackview/BV9900_EEA/BV9900:9/PPR1.180610.011/1575339962:user/release-keys
