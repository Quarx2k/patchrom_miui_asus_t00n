#
# Makefile for Oneplus 1+
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_t00n.zip

# the location for local-ota to save target-file
local-previous-target-dir :=

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps :=

local-miui-modified-apps := miuisystem MiuiHome TeleService Settings SecurityCenter MiuiSystemUI DeskClock Music Updater DownloadProvider

local-phone-apps :=

local-phone-priv-apps :=

local-density := XXHDPI

include phoneapps.mk

PORT_PRODUCT := t00n_quarx

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

local-pre-zip-misc:
		#copy files
		cp other/boot.img $(ZIP_DIR)/boot.img
		cp -a -rf other/system/* $(ZIP_DIR)/system/
		cp -a -rf other/data/* $(ZIP_DIR)/data/
		echo "ro.miui.has_real_blur=0" >> $(ZIP_DIR)/system/build.prop
		#density
		sed -i 's/ro.sf.lcd_density/persist.xsdensity/g' $(ZIP_DIR)/system/lib/libsurfaceflinger.so
		echo "persist.xsdensity=480" >> $(ZIP_DIR)/system/build.prop
		#sounds
		echo "persist.xs.power.sound=1" >> $(ZIP_DIR)/system/build.prop
		echo "persist.xs.screenshot.sound=1" >> $(ZIP_DIR)/system/build.prop
		#call audio
		echo "persist.audio.fluence.voicerec=false" >> $(ZIP_DIR)/system/build.prop
		echo "persist.audio.fluence.speaker=false" >> $(ZIP_DIR)/system/build.prop
		#use auto brightadj
		echo "persist.power.useautobrightadj=true" >> $(ZIP_DIR)/system/build.prop
		#DATA APPLIST
		echo "ota-miui-XiaomiBaiduInput.apk" >> $(ZIP_DIR)/data/miui/cust/cn/customized_applist
		echo "ota-miui-XiaomiBaiduInput.apk" >> $(ZIP_DIR)/data/miui/cust/cn/ota_customized_applist
		#fix QuickSearchBox
		mv $(ZIP_DIR)/system/app/QuickSearchBox.apk $(ZIP_DIR)/system/priv-app/QuickSearchBox.apk
		#fix selinux
		sed -i '4asetenforce 0' $(ZIP_DIR)/system/bin/sysinit
		#bye bye miui bin , use stockrom
		rm -rf $(ZIP_DIR)/system/bin/app_process_vendor
		cp -rf stockrom/system/bin/app_process $(ZIP_DIR)/system/bin/app_process
		rm -rf $(ZIP_DIR)/system/bin/debuggerd_vendor
		cp -rf stockrom/system/bin/debuggerd $(ZIP_DIR)/system/bin/debuggerd
		rm -rf $(ZIP_DIR)/system/bin/dexopt_vendor
		cp -rf stockrom/system/bin/dexopt $(ZIP_DIR)/system/bin/dexopt
		#fix mdnsd
		mv $(ZIP_DIR)/system/bin/mdnsd $(ZIP_DIR)/system/bin/mdnsd_original
