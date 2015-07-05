# Copyright (C) 2011 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for maguro hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, full and maguro, hence its name.
#

# Inherit from jflte device
$(call inherit-product, device/samsung/jflte/full_jflte.mk)

# Inherit our stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# build.prop overrides
PRODUCT_BUILD_PROP_OVERRIDES += \
  PRODUCT_NAME=aosp_jflte \
  BUILD_FINGERPRINT="samsung/jflte/jflte:5.0.1/LRX22C/I9505XXUHOB7:user/release-keys" \
  PRIVATE_BUILD_DESC="jflte-user 5.0.1 LRX22C I9505XXUHOB7 release-keys"
