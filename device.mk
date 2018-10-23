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
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml


# Audio XML files
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:system/vendor/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_configuration.xml:system/vendor/etc/audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_configuration_generic.xml:system/vendor/etc/audio_policy_configuration_generic.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_configuration_stub.xml:system/vendor/etc/audio_policy_configuration_stub.xml \
	frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:system/vendor/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:system/vendor/etc/default_volume_tables.xml \
	frameworks/av/services/audiopolicy/config/primary_audio_policy_configuration.xml:system/vendor/etc/primary_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/stub_audio_policy_configuration.xml:system/vendor/etc/stub_audio_policy_configuration.xml \
	frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:system/vendor/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:system/vendor/etc/usb_audio_policy_configuration.xml

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/vendor/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/vendor/etc/permissions/android.hardware.bluetooth.xml \
	frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/vendor/etc/permissions/android.hardware.bluetooth_le.xml \
	frameworks/native/data/etc/android.hardware.faketouch.xml:system/vendor/etc/permissions/android.hardware.faketouch.xml \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
	frameworks/native/data/etc/android.hardware.location.gps.xml:system/vendor/etc/permissions/android.hardware.location.gps.xml \
	frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/vendor/etc/permissions/android.hardware.opengles.aep.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/vendor/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/vendor/etc/permissions/android.hardware.sensor.compass.xml \
	frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/vendor/etc/permissions/android.hardware.sensor.gyroscope.xml \
	frameworks/native/data/etc/android.hardware.sensor.light.xml:system/vendor/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/vendor/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/vendor/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/vendor/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/vendor/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/vendor/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/vendor/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/vendor/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/vendor/etc/permissions/android.hardware.usb.host.xml \
	frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/vendor/etc/permissions/android.hardware.vr.high_performance.xml \
	frameworks/native/data/etc/android.hardware.vulkan.level-1.xml:system/vendor/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/vendor/etc/permissions/android.hardware.vulkan.version.xml \
	frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/vendor/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/vendor/etc/permissions/android.hardware.wifi.xml \
	frameworks/native/data/etc/android.software.midi.xml:system/vendor/etc/permissions/android.software.midi.xml \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/vendor/etc/permissions/android.software.sip.voip.xml \
	frameworks/native/data/etc/android.software.vr.xml:system/vendor/etc/permissions/android.software.vr.xml \
	frameworks/native/data/etc/android.software.webview.xml:system/vendor/etc/permissions/android.software.webview.xml \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/vendor/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.default \
    audio.a2dp.default \
    audio.usb.default \
	libaudio-resampler \
    libtinyalsa \
    libtinymix \
	libtinyxml2

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
	android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@2.0-service \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.broadcastradio@1.0-service \
    android.hardware.soundtrigger@2.0-impl \
    android.hardware.soundtrigger@2.0-service
	
# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
	android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service
	
# Camera
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service 
	
# Configstore
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.0-service

# Display
PRODUCT_PACKAGES += \
	libtinyxml2
	
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
    android.hardware.gnss@1.0-impl \
    libcurl 

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0-java

# VNDK-SP:
PRODUCT_PACKAGES += \
    vndk-sp
	
# Misc
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2

# Power
PRODUCT_PACKAGES+= \
    android.hardware.power@1.0 \
	android.hardware.power@1.0-impl 


# RIL
PRODUCT_PACKAGES+= \
	android.hardware.radio@1.0 \
	android.hardware.radio.deprecated@1.0 


# Sensors
PRODUCT_PACKAGES+= \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service
	

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \
    com.android.future.usb.accessory

# Vibrator
PRODUCT_PACKAGES+= \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service 

# Wifi
	PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0 \
    android.hardware.wifi@1.0-service

# FMRadio
PRODUCT_PACKAGES += \
	FMRadio	

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	make_ext4fs \
	resize2fs \
	setup_fs \
	fsck.f2fs \
	fsck.exfat
	
# Ramdisk
PRODUCT_PACKAGES += \
	factory_init.connectivity.rc \
	factory_init.project.rc \
	factory_init.rc \
	fstab.enableswap \
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

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Dalvik Tweak
PRODUCT_TAGS += dalvik.gc.type-precise
	
# Dalvik heap configurations
$(call inherit-product, frameworks/native/build/phone-xxxhdpi-3072-dalvik-heap.mk)

# Call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-3072-hwui-memory.mk)

# Vendor
$(call inherit-product, vendor/lenovo/manning/manning-vendor.mk)
