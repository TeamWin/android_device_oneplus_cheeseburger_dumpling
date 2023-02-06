#!/sbin/sh
# This script unmount the duplicate sdcard and allow Data formating
#
local part=/sdcard;
local var=$(mount | grep $part | wc -l);
echo $var;
local decrypt=$(getprop "ro.crypto.state")

	if ([ $var -ge 1 ] && [ $decrypt = "encrypted" ]); then
		umount $part;
	fi

exit 0
#