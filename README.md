# android_device_oneplus_cheeseburger
Tree for building TWRP for OnePlus 5

## Kernel Sources

https://github.com/lineageos/android_kernel_oneplus_msm8998/tree/lineage-15.1

## To compile

export ALLOW_MISSING_DEPENDENCIES=true

. build/envsetup.sh && lunch omni_cheeseburger-eng

mka adbd recoveryimage

## Device specifications

| Device       | OnePlus 5                                       |
| -----------: | :---------------------------------------------- |
| SoC          | Qualcomm MSM8998 Snapdragon 835                 |
| CPU          | Quad-core 2.45GHz Kryo & quad-core 1.9GHz Kryo  |
| GPU          | 710MHz Adreno 540                               |
| Memory       | 6GB / 8GM RAM (LPDDR4X)                         |
| Shipped Android version | 7.1.1                                |
| Storage      | 64GB / 128GB (UFS 2.1 2-LANE Flash)             |
| Battery      | Non-removable Li-Po 3300 mAh                    |
| Dimensions   | 152.7 x 74.1 x 7.25 mm                          |
| Display      | 1920 x 1080 px, 5.5 inches (401 PPI)            |
| Rear camera  | 16 MPx, f/1.7, 24mm, DCAF autofocus + 20 MPx, f/2.6, 36mm, PDAF autofocus |
| Front camera | 16 MPx, f/2.0                                   |

## Device picture

![OnePlus 5](http://image01.oneplus.cn/ebp/201706/17/291/8dc3e3d2bd22658de5f63eeb27700a83.png "OnePlus 5 in black")
