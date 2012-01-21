$(call inherit-product, device/htc/shooteru/full_shooteru.mk)

PRODUCT_RELEASE_NAME := Evo3DGSM

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooteru BUILD_ID=GRJ22 BUILD_FINGERPRINT="htc_europe/htc_shooteru/shooteru:2.3.4/GRJ22/105308.8:user/release-keys" PRVIATE_BUILD_DESC="1.20.401.8 CL105308 release-keys"

PRODUCT_NAME := cm_shooteru
PRODUCT_DEVICE := shooteru
