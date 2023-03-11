#!/system/bin/sh
# This script unmount additional sdcard and allow Data formating

unmount_sdcard() 
{
	local sd=/sdcard
	local mnt=$(mount | grep $sd | wc -l)
	local enc=$(getprop "ro.crypto.state")
	
	# Check if device is encrypted
	if [ "$enc" != "encrypted" ]; then
		echo "Device is not encrypted so sdcard will not mount more than once"
		exit 0
	fi
	
	# Check if SD card is mounted
	if [ $mnt -ge 1 ]; then
		echo "SD card is mounted multiple times, unmounting..."
		umount $sd
	fi
}

unmount_sdcard
exit 0
#