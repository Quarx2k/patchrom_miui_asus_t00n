#!/bin/bash
#
# $1: dir for original miui app
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify
GIT_APPLY=$PORT_ROOT/tools/git.apply
curdir=`pwd`

function applyPatch () {
    for patch in `find $1 -name *.patch`
    do
        cd out
        $GIT_APPLY ../$patch
        cd ..
        for rej in `find $2 -name *.rej`
        do
            echo "Patch $patch fail"
            exit 1
        done
    done
}

if [ $1 = "miuisystem" ];then
	applyPatch $1 $2
	cp $1/ASUS_T00N.xml $2/assets/device_features/
fi

if [ $1 = "TeleService" ];then
	applyPatch $1 $2
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	applyPatch $1 $2
	$XMLMERGYTOOL $1/res/values $2/res/values
	$XMLMERGYTOOL $1/res/values-zh-rCN $2/res/values-zh-rCN
fi

if [ $1 = "SecurityCenter" ];then
	applyPatch $1 $2
fi

if [ $1 = "MiuiSystemUI" ];then
	applyPatch $1 $2
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "DeskClock" ];then
    	python other/tools/idtoname.py other/tools/public_miui.xml $2/smali
    	python other/tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi

if [ $1 = "Music" ];then
	applyPatch $1 $2
fi

if [ $1 = "Updater" ];then
	applyPatch $1 $2
fi

if [ $1 = "DownloadProvider" ];then
    	python other/tools/idtoname.py other/tools/public_miui.xml $2/smali
    	python other/tools/nametoid.py framework-res/res/values/public.xml $2/smali
fi
