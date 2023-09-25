#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs201/overlay-lineage

# Adaptive charging
PRODUCT_COPY_FILES += \
    device/google/gs201/conf/adaptivecharging.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/adaptivecharging.xml

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs101/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Quick Tap
PRODUCT_COPY_FILES += \
    device/google/gs201/conf/quick_tap.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/quick_tap.xml
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.columbus.use_ap_sensor=false

# Camera
PRODUCT_PRODUCT_PROPERTIES += \
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true


# RRO Overlays
PRODUCT_PACKAGES += \
    GoogleParts \
    EuiccSupportPixelOverlay \
    NowPlayingOverlay

# Touch
include hardware/google/pixel/touch/device.mk
