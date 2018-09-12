# Copyright (C) 2016 The Pure Nexus Project
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

# Google property overides
PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.control_privapp_permissions=enforce \
    ro.build.selinux=1 \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.error.receiver.system.apps=com.google.android.gms \
    ro.com.android.dataroaming=false \
    ro.atrace.core.services=com.google.android.gms,com.google.android.gms.ui,com.google.android.gms.persistent \
    ro.setupwizard.rotation_locked=true \
    ro.config.notification_sound=Chime.ogg \
    ro.config.alarm_alert=Flow.ogg \
    ro.config.ringtone=Zen.ogg \
    esim.enable_esim_system_ui_by_default=false \
    ro.opa.eligible_device=true \
    setupwizard.feature.baseline_setupwizard_enabled=true \
    ro.setupwizard.enterprise_mode=1 \
    ro.setupwizard.rotation_locked=true \
    setupwizard.enable_assist_gesture_training=true \
    ro.setupwizard.esim_cid_ignore=00000001 \
    setupwizard.theme=glif_v3_light \
    ro.carrier=unknown

    # ro.carrier=unknown
#
# Proprietary latinime libs needed for Keyboard swyping
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/lib64/libjni_latinime.so:system/lib64/libjni_latinime.so \
    vendor/nexus/prebuilt/lib64/libjni_latinimegoogle.so:system/lib64/libjni_latinimegoogle.so

# Fix Dialer
PRODUCT_COPY_FILES +=  \
    vendor/nexus/prebuilt/etc/sysconfig/dialer_experience.xml:system/etc/sysconfig/dialer_experience.xml

# Clean up packages cache to avoid wrong strings and resources
PRODUCT_COPY_FILES += \
    vendor/nexus/prebuilt/bin/clean_cache.sh:system/bin/clean_cache.sh

# Get some sounds
$(call inherit-product-if-exists, frameworks/base/data/sounds/GoogleAudio.mk)
