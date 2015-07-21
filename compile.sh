cd boot_image_unpacked/
rm ../other/boot.img
./mkbootfs ./ramdisk | gzip > ramdisk.gz && ./mkbootimg --kernel /mnt/android/git/android_kernel_asus_padfone_s/arch/arm/boot/zImage  --dt devtree  --ramdisk ramdisk.gz --cmdline "console=ttyHSL0,115200,n8 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 androidboot.selinux=disabled" --base 0x00000000 --ramdisk_offset 0x02500000 -o ../other/boot.img
cd ..
make clean
make fullota

