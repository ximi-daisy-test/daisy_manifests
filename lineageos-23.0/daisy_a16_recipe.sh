# manifest is from https://github.com/NeedAlt-Room

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/android_device_xiaomi_daisy device/xiaomi/daisy

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/android_device_xiaomi_msm8953-common device/xiaomi/msm8953-common

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_msm8953-common vendor/xiaomi/msm8953-common

git clone --depth=1 --branch 16 https://github.com/ximi-daisy-test/proprietary_vendor_xiaomi_daisy vendor/xiaomi/daisy

git clone --depth=1 --branch lineage-23.0 https://github.com/LineageOS/android_hardware_xiaomi hardware/xiaomi

git clone --depth=1 --branch lineage-22.2 https://github.com/LineageOS/android_hardware_sony_timekeep hardware/sony/timekeep

# NOTE:
# kernel tree
# git clone --depth=1 --branch lineage-23.0-bpf-mini https://github.com/ximi-daisy-test/android_kernel_xiaomi_msm8953/ kernel/xiaomi/msm8953
