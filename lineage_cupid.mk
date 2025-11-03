#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Build
TARGET_DISABLE_EPPE := true
MISTOS_MAINTAINER := KernelPanix
WITH_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
BYPASS_CHARGE_SUPPORTED := false
TARGET_DEFAULT_PIXEL_LAUNCHER := true

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.mist.display=1080 x 2400, 120 hz
    ro.mist.battery=4500mah
    ro.mist.soc=Snapdragon® 8 Gen 1
    ro.mist.camera=50MP + 13MP + 5MP
    ro.mist.front=32MP
    ro.mist.platform=SM8450
    ro.mist.screen=6.2' AMOLED
    ro.mist.device.name=Xiaomi 12

PRODUCT_NAME := lineage_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="cupid_global-user 15 AQ3A.241006.001 OS2.0.204.0.VLCMIXM release-keys" \
    BuildFingerprint=Xiaomi/cupid_global/cupid:15/AQ3A.241006.001/OS2.0.204.0.VLCMIXM:user/release-keys \
    DeviceProduct=cupid \
    SystemName=cupid_global

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
