#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common cherish configuration
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# CherishOS
TARGET_DISABLE_EPPE := true
WITH_GMS := true
TARGET_USES_PICO_GAPPS := true
TARGET_HAS_UDFPS := true
CHERISH_BUILD_TYPE := UNOFFICIAL
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += ro.cherish.maintainer=KernelPanix

PRODUCT_NAME := cherish_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cupid_global-user 15 AQ3A.241006.001 OS2.0.202.0.VLCMIXM release-keys" \
    BuildFingerprint=Xiaomi/cupid_global/cupid:15/AQ3A.241006.001/OS2.0.202.0.VLCMIXM:user/release-keys \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
