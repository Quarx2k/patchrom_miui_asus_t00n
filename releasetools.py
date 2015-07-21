import common
import edify_generator
import os

TARGET_DIR = os.getenv('OUT')

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "assert" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "getprop" in edify.script[i]:
      edify.script[i] = ''
      return

def MountSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "unmount(" in edify.script[i] and "/system" in edify.script[i]:
      edify.script[i] = 'mount("ext4", "EMMC", "/dev/block/platform/msm_sdcc.1/by-name/system", "/system");'
      return

def DeleteSystem(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "format(" in edify.script[i] and "/dev/block/platform/msm_sdcc.1/by-name/system" in edify.script[i]:
      edify.script[i] = 'delete_recursive("/system");'
      return

def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"
    
def InstallBased(info):
    common.ZipWriteStr(info.output_zip, "fixup.sh", info.input_zip.read("fixup.sh"))
    info.script.AppendExtra('package_extract_file("fixup.sh", "/tmp/fixup.sh");')
    info.script.AppendExtra('set_metadata("/tmp/fixup.sh", "uid", 0, "gid", 0, "mode", 0755);')
    info.script.Mount("/system")
    info.script.AppendExtra('run_program("/tmp/fixup.sh");')

def FullOTA_InstallEnd(info):
    RemoveDeviceGetprop(info)
    MountSystem(info)
    DeleteSystem(info)
    WritePolicyConfig(info)
    InstallBased(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
