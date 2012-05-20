$(call inherit-product, device/htc/shooteru/full_shooteru.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_RELEASE_NAME := Evo3DGSM

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooteru BUILD_FINGERPRINT="htc_europe/htc_shooteru/shooteru:4.0.3/IML74K/351412.1:userdebug/test-keys" PRIVATE_BUILD_DESC="3.08.401.1 CL351412 test-keys"

TARGET_BOOTANIMATION_NAME := vertical-540x960

PRODUCT_NAME := cm_shooteru
PRODUCT_DEVICE := shooteru
