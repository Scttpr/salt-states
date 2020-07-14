# Name: Frida
# Website: https://frida.re
# Description: Trace the execution of a process to analyze its behavior.
# Category: Dynamically Reverse-Engineer Code: General
# Author: Ole André Vadla Ravnås
# License: wxWindows Library License 3.1: https://github.com/frida/frida/blob/master/COPYING
# Notes: frida, frida-ps, frida-trace, frida-discover, frida-ls-devices, frida-kill

include:
  - remnux.packages.python-pip
  - remnux.packages.python3-pip

remnux-python-packages-frida-install:
  pip.installed:
    - name: frida-tools
    - bin_env: /usr/bin/python3
    - require:
      - sls: remnux.packages.python3-pip
