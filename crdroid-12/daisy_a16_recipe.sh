git clone --depth=1 --branch lineage-22.2 https://github.com/ximi-daisy-test/android_device_xiaomi_daisy device/xiaomi/daisy

git clone --branch lineage-22.2-re https://github.com/ximi-daisy-test/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common

git clone --depth=1 --branch lineage-22.2 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_daisy vendor/xiaomi/daisy

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


# for Wifi fix add teh following
git clone --depth=1 --branch lineage-22.2-caf https://github.com/LineageOS/android_hardware_qcom_wlan hardware/qcom-caf/wlan

git clone --branch lineage-23.0 https://github.com/LineageOS/android_hardware_qcom_wlan hardware/qcom/wlan
# revert 640d7bc56efbf97d2d8105a2a3202a0c2a4cbe80 - note from rennzalt

git clone --branch lineage-23.0 https://github.com/LineageOS/android_hardware_qcom-caf_common/ hardware/qcom-caf/common 
# revert b5edacbb0a9edb23c32b1d55935425afea13bcab - note from rennzalt
