# Name: DeXRAY
# Website: http://www.hexacorn.com/blog/category/software-releases/dexray/
# Description: Extract and decode data fro antivirus quarantine files.
# Category: Gather and Analyze Data
# Author: Hexacorn
# License: Free; copyright by Hexacorn.com: http://hexacorn.com/d/DeXRAY.pl
# Notes: dexray

include:
  - remnux.packages.perl
  - remnux.perl-packages.crypt-rc4
  - remnux.perl-packages.crypt-blowfish
  - remnux.perl-packages.archive-zip
  - remnux.perl-packages.digest-crc
  - remnux.perl-packages.ole-storagelite

remnux-scripts-dexray-source:
  file.managed:
    - name: /usr/local/bin/dexray
    - source: https://hexacorn.com/d/DeXRAY.pl 
    - source_hash: sha256=8ca90a25acd1a0da838c323db12f4706e7690351e995036a7f9b01300efe23c3
    - mode: 755
    - requires:
      - sls: remnux.packages.perl
      - sls: remnux.perl-packages.crypt-rc4
      - sls: remnux.perl-packages.crypt-blowfish
      - sls: remnux.perl-packages.archive-zip
      - sls: remnux.perl-packages.digest-crc
      - sls: remnux.perl-packages.ole-storagelite

remnux-scripts-dexray-replace:
  file.replace:
    - name: /usr/local/bin/dexray
    - pattern: '@r0ns3n'
    - repl: 'r0ns3n'
    - backup: false
    - prepend_if_not_found: false
    - count: 3
    - require:
      - file: remnux-scripts-dexray-source
