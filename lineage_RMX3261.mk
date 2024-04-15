# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMX3261 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMX3261
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMX3261
PRODUCT_MODEL := RMX3261

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMX3261
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="S19610AA1_ctcc-user 11 RP1A.201005.001 06322 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMX3261/RMX3261:11/RP1A.201005.001/1675866988000:user/release-keys
