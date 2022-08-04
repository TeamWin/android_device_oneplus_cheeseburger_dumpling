#!/system/bin/sh
# This script is needed to automatically set device props.


load_dumpling()
{
    resetprop "ro.product.name" "OnePlus5T"
    resetprop "ro.display.series" "OnePlus 5T"
    resetprop "ro.product.model" "OnePlus A5010"
    resetprop "ro.build.product" "dumpling"
    resetprop "ro.product.device" "dumpling"
    resetprop "ro.product.vendor.device" "dumpling"
  }

  load_cheeseburger()
  {
    resetprop "ro.product.name" "OnePlus5"
    resetprop "ro.display.series" "OnePlus 5"
    resetprop "ro.product.model" "OnePlus A5000"
    resetprop "ro.build.product" "cheeseburger"
    resetprop "ro.product.device" "cheeseburger"
    resetprop "ro.product.vendor.device" "cheeseburger"
}

rf=$(getprop ro.boot.rf_version)
echo $rf

case $rf in
    21)
        load_dumpling
        ;;
    53)
        load_cheeseburger
        ;;
    *)
        load_dumpling
        ;;
esac

exit 0
