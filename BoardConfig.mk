$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

#Kernel
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT= generic
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOARD_PLATFORM := msm8937
TARGET_BOARD_PLATFORM_GPU := qcom-adreno505
TARGET_BOOTLOADER_BOARD_NAME := msm8937
TARGET_NO_BOOTLOADER := true
TARGET_PREBUILT_KERNEL := device/samsung/j2y18lte/prebuilt/kernel
#Kernel Source
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000 --kernel_offset 0x00008000 --tags_offset 0x01e00000
TARGET_KERNEL_APPEND_DTB := true
TARGET_KERNEL_CONFIG := msm8937_sec_j2y18lte_mea_open_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/j2y18lte

#USE_NINJA := false
#TARGET_RECOVERY_FSTAB := device/samsung/j2y18lte/recovery.fstab
TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy
#BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy-tmp
#TARGET_EXCLUDE_QCOM_SEPOLICY := true



