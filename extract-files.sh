#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
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

MANUFACTURER=htc
DEVICE=shooteru

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/bin/3D_calibration ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/3D_calibration_main ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/charging ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/htc_ebdlogd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/htcbatt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/load-modem.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/logcat2 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/mpdecision ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/snd3254 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/thermald ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/xbin/wireless_modem ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/eglsubAndroid.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libC2D2.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOpenVG.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsc-a2xx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhtc_acoustic.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudcal.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudcalwb.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libaudcal_nel.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libacdbloader.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libacdbmapper.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdll.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libhtc_ril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/camera.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcamerapp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcameraLN.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcameraSP.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcameraface.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_qs_s5k4e1_preview.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libchromatix_qs_s5k4e1_video.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmmpo.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboemcamera_main.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libOlaEngine.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libposteffect.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgemini.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmm-color-convertor.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libv8.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/lights.msm8660.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmpl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmllite.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmlplatform.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/hw/sensors.shooteru.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
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

# This file is generated by device/$MANUFACTURER/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera.default.so:obj/lib/hw/camera.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbloader.so:obj/lib/libacdbloader.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbmapper.so:obj/lib/libacdbmapper.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libv8.so:obj/lib/libv8.so

# All the blobs necessary for shooteru
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/3D_calibration:system/bin/3D_calibration \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/3D_calibration_main:system/bin/3D_calibration_main \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/charging:system/bin/charging \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/htc_ebdlogd:system/bin/htc_ebdlogd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/htcbatt:system/bin/htcbatt \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/load-modem.sh:system/bin/load-modem.sh \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/logcat2:system/bin/logcat2 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/mpdecision:system/bin/mpdecision \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/netmgrd:system/bin/netmgrd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/qmuxd:system/bin/qmuxd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/rmt_storage:system/bin/rmt_storage \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/snd3254:system/bin/snd3254 \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/thermald:system/bin/thermald \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/wireless_modem:system/bin/wireless_modem \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgsl.so:system/lib/libgsl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOpenVG.so:system/lib/libOpenVG.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libC2D2.so:system/lib/libC2D2.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsc-a2xx.so:system/lib/libsc-a2xx.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_acoustic.so:system/lib/libhtc_acoustic.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudioalsa.so:system/lib/libaudioalsa.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudcal.so:system/lib/libaudcal.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudcalwb.so:system/lib/libaudcalwb.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libaudcal_nel.so:system/lib/libaudcal_nel.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbloader.so:system/lib/libacdbloader.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libacdbmapper.so:system/lib/libacdbmapper.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdiag.so:system/lib/libdiag.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdll.so:system/lib/libdll.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsi_netctrl.so:system/lib/libdsi_netctrl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdsutils.so:system/lib/libdsutils.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libidl.so:system/lib/libidl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libnetmgr.so:system/lib/libnetmgr.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqdp.so:system/lib/libqdp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libqmi.so:system/lib/libqmi.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libhtc_ril.so:system/lib/libhtc_ril.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/camera.default.so:system/lib/hw/camera.default.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcamerapp.so:system/lib/libcamerapp.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcameraLN.so:system/lib/libcameraLN.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcameraSP.so:system/lib/libcameraSP.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libcameraface.so:system/lib/libcameraface.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_qs_s5k4e1_preview.so:system/lib/libchromatix_qs_s5k4e1_preview.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libchromatix_qs_s5k4e1_video.so:system/lib/libchromatix_qs_s5k4e1_video.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmmpo.so:system/lib/libmmmpo.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera.so:system/lib/liboemcamera.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/liboemcamera_main.so:system/lib/liboemcamera_main.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libOlaEngine.so:system/lib/libOlaEngine.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libposteffect.so:system/lib/libposteffect.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libgemini.so:system/lib/libgemini.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmipl.so:system/lib/libmmipl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmmjpeg.so:system/lib/libmmjpeg.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmm-color-convertor.so:system/lib/libmm-color-convertor.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libv8.so:system/lib/libv8.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/lights.msm8660.so:system/lib/hw/lights.msm8660.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmpl.so:system/lib/libmpl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmllite.so:system/lib/libmllite.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libmlplatform.so:system/lib/libmlplatform.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sensors.shooteru.so:system/lib/hw/sensors.shooteru.so
EOF

./setup-makefiles.sh
