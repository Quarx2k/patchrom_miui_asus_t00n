#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 7696384 7fd9ec249b9c34f365b90bb01de14acca0650a41 5711872 5cb1eb184728662ae928a2ed92ec61ff0afadcf2
fi

if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7696384:7fd9ec249b9c34f365b90bb01de14acca0650a41; then
  log -t recovery "Installing new recovery image"
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:5711872:5cb1eb184728662ae928a2ed92ec61ff0afadcf2 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 7fd9ec249b9c34f365b90bb01de14acca0650a41 7696384 5cb1eb184728662ae928a2ed92ec61ff0afadcf2:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
