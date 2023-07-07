# OpenRule1um PDK
OpenRule1um PDK for open hardware LSI design. OpenRule1um has been developed by MakeLSI: project. 
See https://github.com/MakeLSI/OpenRule1um

This package contains layer definitions, PCells, DRC, LVS and others for KLayout.

The PDK utilizes Open PDK technology presented at SASIMI 2022 under the title "An NDA-free Oriented Open PDK
Technology and EDA for Small Volume LSI Developments".
https://tsys.jp/sasimi/2022/program/program_abst.html#C-4

Process indepent part of PDKs is available at https://github.com/mineda-support/AnagixLoader
which needs to be installed together with the OpenRule1um PDK.

## PDK contents
* Symbols for LTspice and Xschem
* SPICE models for LTspice and NGspice
* Layout properties file
* PCells
* DRC and LVS
* Support scripts
  - get_reference --- create LVS reference netlist from LTspice/Xschem netlist
  - change PCell defaults
  - convert library cells
  - Backannotate device parasitics
  - autoplace
  - force_ongrid

## PDK installation
Please follow instruction in the PDK Users's manual:
https://www.dropbox.com/scl/fi/dyfb149804js9yqocoep0/OpenRule1um-v2-PDKv0.3.paper?rlkey=79z8g5id6cnem7vga39yy2t8h&dl=0

Because the PDK is installed as a package in KLayout, please clone this repository under 
the "salt" directory (~/.klayout/salt for Linux and Mac, ~/KLayout/salt for Windows).
KLayout version 0.28.3 is recommended until the broken menu issue is recognized and fixed in KLayout.

## License
The OpenRule1um Open Source PDK is released under the Apache 2.0 license.

The copyright details are:

Copyright 2023 Seijiro Moriyama (Anagix Corporation)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

## Author
Seijiro Moriyama (seijiro.moriyama@anagix.com)
