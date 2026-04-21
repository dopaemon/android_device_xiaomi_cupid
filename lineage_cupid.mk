#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# LunarisAOSP
TARGET_DISABLE_EPPE := true
TARGET_OPTIMIZED_DEXOPT := true
WITH_BCR := true
WITH_GMS := true
TARGET_USES_CORE_GAPPS := true
TARGET_CUSTOM_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,120

PRODUCT_NAME := lineage_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cupid_global-user 15 AQ3A.250226.002 OS3.0.3.0.VLCMIXM release-keys" \
    BuildFingerprint=Xiaomi/cupid_global/cupid:15/AQ3A.250226.002/OS3.0.3.0.VLCMIXM:user/release-keys \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
