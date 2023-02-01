#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Permissions
PRODUCT_COPY_FILES += \
    vendor/xiaomi/haydn-miuicamera/configs/default-permissions/miuicamera-permissions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/default-permissions/miuicamera-permissions.xml \
    vendor/xiaomi/haydn-miuicamera/configs/permissions/privapp-permissions-miuicamera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-miuicamera.xml

# Sysconfig
PRODUCT_COPY_FILES += \
    vendor/xiaomi/haydn-miuicamera/configs/sysconfig/miuicamera-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/miuicamera-hiddenapi-package-whitelist.xml

# Miui Camera init rc file
PRODUCT_COPY_FILES += \
    vendor/xiaomi/haydn-miuicamera/init/init.miuicamera.rc:$(TARGET_COPY_OUT_SYSTEM_EXT)/etc/init/init.miuicamera.rc

# Props
PRODUCT_PRODUCT_PROPERTIES += \
	ro.com.google.lens.oem_camera_package=com.android.camera

PRODUCT_SYSTEM_PROPERTIES += \
    vendor.camera.aux.packagelist=com.android.camera,org.pixelexperience.faceunlock \
    persist.vendor.camera.privapp.list=com.android.camera

PRODUCT_VENDOR_PROPERTIES += \
    ro.hardware.camera=xiaomi

PRODUCT_PACKAGES += \
    DisableCamera2 \
    DisableMiuiCamera \
    MiuiCameraOverlayLos \
    MiuiCameraOverlayAosp


$(call inherit-product, vendor/xiaomi/haydn-miuicamera/common/common-vendor.mk)
