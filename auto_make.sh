#!/bin/bash
#
#sh for miui patchrom
if [ $# != 1 ];then
    echo "Usage: ./auto_make.sh LAST_TARGET"
    exit
fi
function BUILD_DATE() {
    date=`date +%y%m%d`
    year="${date:1:1}"
    month="${date:2:2}"
    days="${date:4:2}"
    #if month
    if [ $month -lt "10" ];then
        month=$(echo $month | sed 's/0//g')
    fi
    #if days
    if [ $days -lt "10" ];then
        days=$(echo $days | sed 's/0//g')
    fi
    BUILD_NUMBER=$year.$month.$days
}
BUILD_DATE
LAST_TARGET_ZIP=$1
clear
echo "Will make fullota , if you want to make ota package, please input ./auto_make.sh LAST_TARGET_ZIP(to make ota package) "
sleep 5s
cd ..
. build/envsetup.sh
cd -
make clean
make fullota BUILD_NUMBER=$BUILD_NUMBER
cp out/fullota.zip $BUILD_NUMBER-fullota.zip
../tools/releasetools/ota_from_target_files -k ../build/security/testkey -i $LAST_TARGET_ZIP out/target_files.zip OTA-$LAST_TARGET_ZIP-$BUILD_NUMBER.zip
cp out/target_files.zip $BUILD_NUMBER-target.zip
#clean something and save out sources
rm -rf out/*-tozip
rm -rf out/*.apk
rm -rf out/*.zip
rm -rf out/*.jar
rm -rf out/target_files
mv out out-$BUILD_NUMBER
#clean stockrom.zip and something
make clean
