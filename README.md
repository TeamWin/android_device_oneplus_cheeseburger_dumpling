# android_device_oneplus_cheeseburger_dumpling

Tree for building official TWRP for OnePlus 5/5T. (Decryption works on Android 12.x ROMs)

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
| Display                 | 5 - 1920 x 1080 px, 5.5 inches (401 PPI) / 5T - 2160 x 1080 px, 6.01 inches (401 PPI density)                                                                              |
| Camera (Back)           | 16 MPx, f/1.7, 24mm, DCAF autofocus + 20 MPx, f/2.6, 36mm, PDAF autofocus                                                                              |
| Camera (Front)          | 16 MPx, f/2.0                                                                                                   |

## Device picture

![OnePlus 5](http://image01.oneplus.cn/ebp/201706/17/291/8dc3e3d2bd22658de5f63eeb27700a83.png "OnePlus 5 in black")

![OnePlus 5T](https://cdn.opstatics.com/store/20170907/assets/images/support/support-list/model-specs-list/details/5t-black.png "OnePlus 5T in black")

## Kernel

Kernel source: (prebuilt)
https://github.com/xLexip/android_kernel_oneplus_msm8998

## Compile

First repo init the TWRP 12.1 tree:

```
mkdir ~/android/twrp-12.1
cd ~/android/twrp-12.1
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
```

Then add to a local manifest (if you don't have .repo/local_manifests then make that directory and make a blank file and name it something like twrp.xml):

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
 <project name="TeamWin/android_device_oneplus_cheeseburger_dumpling" path="device/oneplus/cheeseburger_dumpling" remote="github" revision="android-12.1"/>
</manifest>
```

Now you can sync your source:

```
repo sync
```

To be able to compile you need to cherry-pick the following commits:

```
source build/envsetup.sh
repopick 5405 5540 5653
```

Finally execute these:

```
. build/envsetup.sh
export LC_ALL=C
lunch twrp_cheeseburger_dumpling-eng
mka recoveryimage
```
