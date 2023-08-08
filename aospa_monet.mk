#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from monet device
$(call inherit-product, device/xiaomi/monet/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Include firmware
$(call inherit-product, vendor/xiaomi-firmware/monet/firmware.mk)

# MIUI Camera
# $(call inherit-product, vendor/xiaomi/monet-miuicamera/products/miuicamera.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := aospa_monet
PRODUCT_DEVICE := monet
BOARD_VENDOR := Xiaomi
TARGET_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2002J9G

TARGET_INCLUDE_PIXEL_CHARGER := true
EXTRA_UDFPS_ANIMATIONS := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
