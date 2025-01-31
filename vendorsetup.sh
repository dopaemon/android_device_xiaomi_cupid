#!/bin/bash

PWDIR=$(pwd)

# source "vendor/lineage/build/envsetup.sh";

if [ -d "vendor/xiaomi/miuicamera-cupid" ]; then
    echo "vendor/xiaomi/miuicamera-cupid: done"
else
    git clone -b lineage-21 https://git.mainlining.org/cupid-development/proprietary_vendor_xiaomi_miuicamera-cupid.git vendor/xiaomi/miuicamera-cupid
fi

if [ -d "device/xiaomi/miuicamera-cupid" ]; then
    echo "device/xiaomi/miuicamera-cupid: done"
else
    git clone -b lineage-21 https://github.com/cupid-development/android_device_xiaomi_miuicamera-cupid.git device/xiaomi/miuicamera-cupid
fi

if [ -d "hardware/xiaomi" ]; then
    echo "hardware/xiaomi: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_hardware_xiaomi.git hardware/xiaomi
fi

if [ -d "kernel/xiaomi/sm8450" ]; then
    echo "kernel/xiaomi/sm8450: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_kernel_xiaomi_sm8450.git kernel/xiaomi/sm8450
fi

if [ -d "kernel/xiaomi/sm8450/KernelSU" ]; then
    echo "KernelSU: done"
else
    cd kernel/xiaomi/sm8450
    rm -rf KernelSU
    git submodule add -f https://github.com/tiann/KernelSU.git KernelSU
    cd $PWDIR
fi

if [ -d "kernel/xiaomi/sm8450-devicetrees" ]; then
    echo "kernel/xiaomi/sm8450-devicetrees: done"
else
    git clone -b lineage-21 --single-branch https://github.com/cupid-development/android_kernel_xiaomi_sm8450-devicetrees.git kernel/xiaomi/sm8450-devicetrees
fi

if [ -d "kernel/xiaomi/sm8450-modules" ]; then
    echo "kernel/xiaomi/sm8450-modules: done"
else
    git clone -b lineage-21 --single-branch https://github.com/cupid-development/android_kernel_xiaomi_sm8450-modules.git kernel/xiaomi/sm8450-modules
fi

if [ -d "device/xiaomi/sm8450-common" ]; then
    echo "device/xiaomi/sm8450-common: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_device_xiaomi_sm8450-common.git device/xiaomi/sm8450-common
fi

if [ -d "vendor/xiaomi/sm8450-common" ]; then
    echo "vendor/xiaomi/sm8450-common: done"
else
    git clone -b lineage-21 --single-branch https://github.com/dopaemon/android_vendor_xiaomi_sm8450-common.git vendor/xiaomi/sm8450-common
fi

if [ -d "vendor/xiaomi/cupid" ]; then
    echo "vendor/xiaomi/cupid: done"
else
    git clone -b lineage-21 --single-branch https://git.mainlining.org/cupid-development/proprietary_vendor_xiaomi_cupid.git vendor/xiaomi/cupid
fi

# hardware/xiaomi
# changes=(
# 352657 # Add dummy sensors sub HAL
# 352658 # sensors: Make sensor batch function virtual
# # 352659 # sensors: Make sensor run function virtual
# # 352660 # sensors: Make sensor flush function virtual
# 352661 # sensors: Make sensor set mode operation function virtual
# 352662 # sensors: Move one shot sensor out of main class
# 352663 # sensors: Fix locking around setOperationMode and activate
# 352664 # sensors: Create sysfs polling one shot sensor
# 392967 # sensors: Let the reading of poll fd be configurable
# 392968 # sensors: Add SysfsPollingOneShotSensor constructor without enable path
# 392969 # sensors: Add udfps long press sensor using SysfsPollingOneShotSensor
# 352665 # sensors: Handle fod_pressed_state without coordinates
# 363160 # hidl: biometrics: fingerprint: Add enroll methods to udfps handler
# 392965 # vibrator: effect: Create double click effect from click if necessary
# 392966 # vibrator: effect: Fallback to click if an effect is missing
# )
# repopick -P hardware/xiaomi ${changes[@]}&

# frameworks/base
# changes=(
# 386158 # Add 5G Ultra Wideband icon carrier config keys
# 386159 # Fix default values for 5G Ultra Wideband icon carrier config keys
# )
# repopick -P frameworks/base ${changes[@]}&

# vendor/lineage
# changes=(
# 367044 # android: merge_dtbs: Respect miboard-id while merging
# )
# repopick -P vendor/lineage ${changes[@]}&

# vendor/qcom/opensource/vibrator
# changes=(
# 392952 # vibrator: Use a better check for primitive effects
# )
# repopick -P vendor/qcom/opensource/vibrator ${changes[@]}&

# wait
