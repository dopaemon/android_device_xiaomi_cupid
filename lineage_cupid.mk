#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from cupid device
$(call inherit-product, device/xiaomi/cupid/device.mk)

# Inherit from common lineage configuration
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := true

# QTI Framework boost
TARGET_SUPPORTS_FRAMEWORK_BOOST := true

# RisingOS
WITH_GMS := true
# TARGET_CORE_GMS := true
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_GOOGLE_TELEPHONY := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
RISING_BUILDTYPE := UNOFFICIAL

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_MAINTAINER="KernelPanix" \
    RISING_CHIPSET="Snapdragon 8 Gen 1"

PRODUCT_NAME := lineage_cupid
PRODUCT_DEVICE := cupid
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := 2201123G

PRODUCT_SYSTEM_NAME := cupid_eea
PRODUCT_SYSTEM_DEVICE := cupid

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="cupid_eea-user 14 UKQ1.230917.001 V816.0.7.0.ULCEUXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/cupid_eea/cupid:14/UKQ1.230917.001/V816.0.7.0.ULCEUXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
