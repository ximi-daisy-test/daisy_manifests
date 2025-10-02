# manifest is from https://github.com/NeedAlt-Room

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/android_device_xiaomi_daisy device/xiaomi/daisy

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_daisy vendor/xiaomi/daisy

git clone --depth=1 --branch lineage-23.0 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

git clone --depth=1 --branch lineage-22.2 https://github.com/LineageOS/android_hardware_sony_timekeep hardware/sony/timekeep

# NOTE:
# kernel tree
# git clone --depth=1 --branch lineage-23.0-bpf-test https://github.com/ximi-daisy-test/android_kernel_xiaomi_msm8953/ kernel/xiaomi/msm8953

# for the kernel use something like zyc clang 22, so yes external clang
# https://github.com/ZyCromerZ/Clang/releases
# extract and then add its path to TARGET_KERNEL_CLANG_PATH on device/xiaomi/msm8953-common/BoardConfigCommon.mk

# -- add these too and remove /external on build/soong/ui/build/androidmk_denylist.go
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_client.git external/ant-wireless/ant_client
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_native.git external/ant-wireless/ant_native
git clone --depth=1 https://github.com/LineageOS/android_external_ant-wireless_ant_service.git external/ant-wireless/ant_service

# apply this fix on external/ant-wireless/ant_service
# https://github.com/LineageOS/android_external_ant-wireless_ant_service/commit/808676c8bf84dddec22c76fdff880e6e394c366e

# for recovery, add bypasses
# apply on bootable/recovery
# https://github.com/ximi-daisy-test/android_bootable_recovery/commit/74a50ca6db16ac4c6b7353e9d50f035e19891ff8
