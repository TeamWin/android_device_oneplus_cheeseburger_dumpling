# android_device_oneplus_cheeseburger

Tree for building Unofficial TWRP for OnePlus 5.

| Basic                   | Spec Sheet                                                                                                                     |
| -----------------------:|:------------------------------------------------------------------------------------------------------------------------------ |
| CPU                     | Quad-core 2.45GHz Kryo & quad-core 1.9GHz Kryo                                                                           |
| Chipset                 | Qualcomm MSM8998 Snapdragon 835                                                                                                  |
| GPU                     | 710MHz Adreno 540                                                                                                                       |
| Memory                  | 6GB / 8GM RAM (LPDDR4X)                                                                                                                     |
| Shipped Android Version | Android 7.1.1                                                                                                                            |
| Last Android Version    | Android 10.0                                                                                                                            |
| Storage                 | 64/128 GB                                                                                                                          |
| Battery                 | Non-removable Li-Po 3300 mAh battery                                                                                           |
| Display                 | 1920 x 1080 px, 5.5 inches (401 PPI) density)                                                                              |
| Camera (Back)           | 16 MPx, f/1.7, 24mm, DCAF autofocus + 20 MPx, f/2.6, 36mm, PDAF autofocus                                                                              |
| Camera (Front)          | 16 MPx, f/2.0                                                                                                   |

## Device picture

![OnePlus 5](http://image01.oneplus.cn/ebp/201706/17/291/8dc3e3d2bd22658de5f63eeb27700a83.png "OnePlus 5 in black")

## Kernel

Kernel source:
https://github.com/LineageOS/android_kernel_oneplus_msm8998

## Compile

First repo init the TWRP 11.0 tree (and necessary qcom dependencies):

```
mkdir ~/android/twrp-11.0
cd ~/android/twrp-11.0
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-11.0
mkdir -p .repo/local_manifests
curl https://raw.githubusercontent.com/TeamWin/buildtree_manifests/master/min-aosp-11/qcom.xml > .repo/local_manifests/qcom.xml
```

Then add to a local manifest (if you don't have .repo/local_manifest then make that directory and make a blank file and name it something like twrp.xml):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="LineageOS/android_kernel_oneplus_msm8998" path="kernel/oneplus/msm8998" remote="github" revision="lineage-18.1"/>
  <project name="faoliveira78/android_device_oneplus_cheeseburger" path="device/oneplus/cheeseburger" remote="github" revision="android-11"/>
</manifest>
```

Now you can sync your source:

```
repo sync
```

Finally execute these:

```
. build/envsetup.sh
export LC_ALL=C
lunch twrp_cheeseburger-eng
mka recoveryimage
```
