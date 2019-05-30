# Copyright (C) 2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
	$(LOCAL_PATH)/overlay \
	$(LOCAL_PATH)/overlay-lineage

# Screen Density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Fingerprint
FINGERPRINT_SUPPORT := true

# Google Media Codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml


# Audio XML files
PRODUCT_COPY_FILES += \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_configuration_stub.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration_stub.xml \
	frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/primary_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/primary_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
	$(call add-to-product-copy-files-if-exists, frameworks/av/services/audiopolicy/config/stub_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/stub_audio_policy_configuration.xml)

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.opengles.aep.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.opengles.aep.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.vr.high_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vr.high_performance.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.vr.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.vr.xml \
	frameworks/native/data/etc/android.software.webview.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.webview.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Needed by /vendor/bin/mtk_agpsd
PRODUCT_PACKAGES += \
	libandroid_net

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0
	
# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.usb.default \
	libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml \
	libtinyxml2 \
	libxml2

PRODUCT_PACKAGES += \
	android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl 

# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service 
	
# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# Gatekeeper HAL
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service
	
# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Display
PRODUCT_PACKAGES += \
    libion

# FMRadio
PRODUCT_PACKAGES += \
    libfmjni \
    FMRadio

# GPS
PRODUCT_PACKAGES += \
    libcurl 

# OMX
PRODUCT_PACKAGES += \
	android.hardware.media.omx@1.0-service
	
# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
	android.hardware.keymaster@3.0-service

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp
	
# Misc
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2

# Power
PRODUCT_PACKAGES+= \
    android.hardware.power@1.0 

# Thermal HAL
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service
	
# RIL
PRODUCT_PACKAGES+= \
	android.hardware.radio@1.0 \
	android.hardware.radio.deprecated@1.0 \
	android.hardware.broadcastradio@1.1

# RenderScript
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl
	
# Vibrator
PRODUCT_PACKAGES+= \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service 

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-service \
	 dhcpcd.conf \
    hostapd \
    lib_driver_cmd_mt66xx \
    libwpa_client \
    wificond \
    wpa_supplicant \
    wpa_supplicant.conf \
	libwifi-hal-mt66xx

# FMRadio
PRODUCT_PACKAGES += \
	FMRadio	

# OpenGL
PRODUCT_PACKAGES += \
	libGLES_android
	
# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	fibmap.f2fs \
	fsck.f2fs \
	mkfs.f2fs \
	make_ext4fs \
	resize2fs \
	setup_fs \
	ext4_resize \
	libext2_blkid \
	libext2_uuid_static \
	superumount

# exFAT
PRODUCT_PACKAGES += \
	mount.exfat \
	fsck.exfat \
	mkfs.exfat

# NTFS
PRODUCT_PACKAGES += \
	fsck.ntfs \
	mkfs.ntfs \
	mount.ntfs
	
# Ramdisk
PRODUCT_PACKAGES += \
	factory_init.connectivity.rc \
	factory_init.project.rc \
	factory_init.rc \
	fstab.mt6797 \
	init.connectivity.rc \
	init.mmi.common.rc \
	init.mmi.diag.rc \
	init.modem.rc \
	init.mt6797.rc \
	init.mt6797.usb.rc \
	init.project.rc \
	init.recovery.mt6797.rc \
	init.sensor_1_0.rc \
	meta_init.connectivity.rc \
	meta_init.modem.rc \
	meta_init.project.rc \
	meta_init.rc \
	multi_init.rc \
	ueventd.mt6797.rc

PRODUCT_PACKAGES += netutils-wrapper-1.0 

	
# Extras
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.mount.fs=EXT4 \
    ro.allow.mock.location=0 \
    persist.service.acm.enable=0 \
    persist.radio.apn_delay=5000 \
    persist.sys.media.use-awesome=false \
    media.stagefright.use-awesome=false \
    ro.secure=0 \
    ro.allow.mock.location=1 \
    ro.debuggable=1 \
    ro.adb.secure=0 \
    ro.oem_unlock_supported=1

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=cfq

# Dalvik Tweak
PRODUCT_TAGS += dalvik.gc.type-precise
	
# Dalvik heap configurations
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Vendor
$(call inherit-product, vendor/lenovo/manning/manning-vendor.mk)

# Properties
-include device/lenovo/manning/vendor_prop.mk
