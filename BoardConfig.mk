DEVICE_PATH := device/realme/RMX3261
BOARD_VENDOR := realme

# Security patch level
VENDOR_SECURITY_PATCH := 2023-02-05

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.biometrics.fingerprint@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.2-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gatekeeper@1.0-service.trusty.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.health@2.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.keymaster@4.1-unisoc.service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.power.stats@1.0-service-mock.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.thermal@2.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi.hostapd.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.wifi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/lights.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.3-service.clearkey.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.3-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_dualsim.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_face.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/rebootescrow-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor-power-default.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.boot@1.1.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.fingerprintmmi@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.gnss@2.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.thermal@2.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.sprd.hardware.vdsp@1.0-service-lazy.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vibrator.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

-include vendor/realme/RMX3261/BoardConfigVendor.mk