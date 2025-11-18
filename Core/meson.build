project(
  'ZephyriumCore',
  'c',
  meson_version : '>= 1.3.0',
  version : '0.1',
  default_options : ['warning_level=3'],
)

os_suffix = ''
if host_machine.system() == 'windows'
  os_suffix = 'Windows.x64'
elif host_machine.system() == 'linux'
  os_suffix = 'Linux.x86_64'
elif host_machine.system() == 'darwin'
  if host_machine.cpu_family() == 'aarch64'
    os_suffix = 'macOS.aarch64'
  else
    os_suffix = 'macOS.x86_64'
  endif
else
  os_suffix = 'unknown'
endif

lib_name = os_suffix / 'ZephyriumCore'

shared_library(lib_name,
  'zephyriumcore.c',
  install: false,
)