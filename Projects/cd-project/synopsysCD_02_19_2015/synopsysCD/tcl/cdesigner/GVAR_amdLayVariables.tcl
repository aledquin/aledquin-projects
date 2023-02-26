namespace eval ::amd {

namespace export *

variable GVAR_amdLayVariables
array set GVAR_amdLayVariables {}

set GVAR_amdLayVariables(entryLayer) "text drawing"

set GVAR_amdLayVariables(amdLayoutAMDLSWUserRemovedLayerSets) ""
set GVAR_amdLayVariables(amdLayoutAMDLSWLayers) {{"Active" "act"} {"M1" "l01"} {"M2" "l02"} {"M3" "l03"} {"C4" "l04"} {"C5" "l05"} {"C6" "l06"} {"C7" "l07"} {"K1" "l08"} {"K2" "l09"} {"G1" "l10"} {"G2" "l11"} {"LB" "l12"} {"Metals" "metal"} {"Vias" "vias"} {"VDD" "vdd"} {"VSS" "vss"} {"Labels" "label"} {"Pins" "pin"} {"Tracks" "track"} {"Blockage" "blockage"} {"Border" "border"} {"Implants" "implant"} {"ERC DRD" "ercmarker"} {"M1-M3" "layerset1"} {"M3-C5" "layerset2"} {"C5-C7" "layerset3"} {"C7-G1" "layerset4"} {"Fill" "fill"}}

set GVAR_amdLayVariables(amdLayoutAMDLSWFunctions) {{button "Change Layer" ::amd::_lsw::amdLayoutChangeLPP 1} {button "Function 1" callback 0}}
set GVAR_amdLayVariables(amdLayoutAMDLSWUserOwnedFunctions) ""

set GVAR_amdLayVariables(amdLayoutAlias,implant) {{"BH" "drawing"} {"PH" "drawing"} {"CG" "drawing"} {"CK" "drawing"} {"CL" "drawing"} {"EN" "drawing"} {"EP" "drawing"} {"HE" "drawing"} {"HF" "drawing"} {"HN" "drawing"} {"HP" "drawing"} {"I1" "drawing"} {"I2" "drawing"} {"I3" "drawing"} {"I4" "drawing"} {"I5" "drawing"} {"I6" "drawing"} {"IN" "drawing"} {"IP" "drawing"} {"JE" "drawing"} {"JF" "drawing"} {"JX" "drawing"} {"JZ" "drawing"} {"LW" "drawing"} {"N3" "drawing"} {"P0" "drawing"} {"P1" "drawing"} {"P2" "drawing"} {"PG" "drawing"} {"PP" "drawing"} {"RG" "drawing"} {"XW" "drawing"} {"AD" "drawing"} {"BF" "drawing"} {"TJ" "drawing"} {"WN" "drawing"} {"WP" "drawing"} {"ZL" "drawing"} {"RP" "drawing"} {"LV" "drawing"} {"DV" "drawing"} {"GP" "drawing"} {"GN" "drawing"} {"BV" "drawing"} {"CV" "drawing"} {"GY" "drawing"} {"IY" "drawing"} {"RM" "drawing"} {"CD" "drawing"} {"XL" "drawing"} {"TB" "drawing"} {"TT" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss11) {{"G2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,met06) {{"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,pin) {{"M1" "pin"} {"M2" "pin"} {"M3" "pin"} {"C4" "pin"} {"C5" "pin"} {"C6" "pin"} {"C7" "pin"} {"K1" "pin"} {"K2" "pin"} {"G1" "pin"} {"G2" "pin"} {"LB" "pin"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss03) {{"M3" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,met09) {{"K2" "drawing"} {"K2" "vss"} {"K2" "vdd"} {"K2" "vddio"} {"K2" "vldt"} {"K2" "vtt"} {"K2" "vddr"} {"K2" "vmemp"} {"K2" "vmemio"} {"K2" "clock"} {"K2" "label"} {"K2" "pin"} {"K2" "e1"} {"K2" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,text10) {{"G1" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd02) {{"M2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,vias) {{"CB" "drawing"} {"V0" "drawing"} {"V1" "drawing"} {"V2" "drawing"} {"J3" "drawing"} {"A4" "drawing"} {"A5" "drawing"} {"A6" "drawing"} {"CK" "drawing"} {"U1" "drawing"} {"KG" "drawing"} {"T1" "drawing"} {"VV" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd05) {{"C5" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,l09) {{"K2" "drawing"} {"K2" "vss"} {"K2" "vdd"} {"K2" "vddio"} {"K2" "vldt"} {"K2" "vtt"} {"K2" "vddr"} {"K2" "vmemp"} {"K2" "vmemio"} {"K2" "clock"} {"K2" "label"} {"K2" "pin"} {"K2" "e1"} {"K2" "e2"} {"U1" "drawing"} {"KG" "drawing"} {"K2" "track"} {"TRACK" "k2"} {"K2" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,metal) {{"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"} {"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"} {"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"} {"K2" "drawing"} {"K2" "vss"} {"K2" "vdd"} {"K2" "vddio"} {"K2" "vldt"} {"K2" "vtt"} {"K2" "vddr"} {"K2" "vmemp"} {"K2" "vmemio"} {"K2" "clock"} {"K2" "label"} {"K2" "pin"} {"K2" "e1"} {"K2" "e2"} {"G1" "drawing"} {"G1" "vss"} {"G1" "vdd"} {"G1" "vddio"} {"G1" "vldt"} {"G1" "vtt"} {"G1" "vddr"} {"G1" "vmemp"} {"G1" "vmemio"} {"G1" "clock"} {"G1" "label"} {"G1" "pin"} {"G1" "e1"} {"G1" "e2"} {"G2" "drawing"} {"G2" "vss"} {"G2" "vdd"} {"G2" "vddio"} {"G2" "vldt"} {"G2" "vtt"} {"G2" "vddr"} {"G2" "vmemp"} {"G2" "vmemio"} {"G2" "clock"} {"G2" "label"} {"G2" "pin"} {"G2" "e1"} {"G2" "e2"} {"LB" "drawing"} {"LB" "vss"} {"LB" "vdd"} {"LB" "vddio"} {"LB" "vldt"} {"LB" "vtt"} {"LB" "vddr"} {"LB" "vmemp"} {"LB" "vmemio"} {"LB" "clock"} {"LB" "label"} {"LB" "pin"} {"LB" "e1"} {"LB" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,act) {{"NW" "drawing"} {"NW" "pin"} {"NW" "label"} {"NW" "res"} {"RX" "drawing"} {"AUXPC" "drawing"} {"AUXPC2" "drawing"} {"PC" "drawing"} {"TRACK" "pc"} {"TS" "drawing"} {"TS" "dummy"} {"CA" "drawing"} {"CB" "drawing"} {"V0" "drawing"} {"ESD" "hbm"} {"RM" "drawing"} {"RM_TERM" "drawing"} {"PCSTP2" "drawing"} {"PCSTP4" "drawing"} {"PCSTP6" "drawing"} {"PCSTP8" "drawing"} {"PCSTP10" "drawing"} {"PCSTN2" "drawing"} {"PCSTN4" "drawing"} {"PCSTN6" "drawing"} {"PCSTN8" "drawing"} {"PCSTN10" "drawing"} {"SXCUT" "label"} {"RC" "drawing"} {"ROTDEV" "drawing"} {"ISODEV" "drawing"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss02) {{"M2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd03) {{"M3" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,text06) {{"C6" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,labels) {{"PC" "label"} {"M1" "label"} {"M2" "label"} {"M3" "label"} {"C4" "label"} {"C5" "label"} {"C6" "label"} {"C7" "label"} {"K1" "label"} {"K2" "label"} {"G1" "label"} {"G2" "label"} {"LB" "label"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock10) {{"G1" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd08) {{"K1" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd01) {{"M1" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd03) {{"M3" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,fill) {{"RX" "cfill"} {"RX" "cfillopc"} {"RX" "cfilltr"} {"RX" "cfillcm"} {"RX" "cfillholetr"} {"PC" "cfill"} {"PC" "cfillopc"} {"PC" "cfilltr"} {"PC" "cfillcm"} {"FN" "cfill"} {"FN" "cfillopc"} {"FN" "cfilltr"} {"FN" "cfillcm"} {"FN" "cfmandrel"} {"RC" "cfill"} {"RC" "cfillopc"} {"RC" "cfilltr"} {"RC" "cfillcm"} {"RC" "nix"} {"CT" "cfilltr"} {"CT" "cfillcm"} {"TT" "cfill"} {"TT" "cfillopc"} {"TT" "cfilltr"} {"TT" "cfillcm"} {"TT" "cfillholetr"} {"TB" "cfill"} {"TB" "cfillopc"} {"TB" "cfilltr"} {"TB" "cfillcm"} {"RB" "cfilltr"} {"RB" "cfillcm"} {"RB" "nix"} {"CA" "cfill_e1"} {"CA" "cfill_e2"} {"CA" "cfillcm_e1"} {"CA" "cfillcm_e2"} {"CA" "cfillopc_e1"} {"CA" "cfillopc_e2"} {"CA" "cfilltr_e1"} {"CA" "cfilltr_e2"} {"CB" "cfill_e1"} {"CB" "cfill_e2"} {"CB" "cfillopc_e1"} {"CB" "cfillopc_e2"} {"CB" "cfilltr_e1"} {"CB" "cfilltr_e2"} {"CB" "cfillcm_e1"} {"CB" "cfillcm_e2"} {"PFETCFILLTR" "drawing"} {"NFETCFILLTR" "drawing"} {"TRANSISTORCELL" "drawing"} {"COMBORXPC" "drawing"} {"M1" "cfill_e1"} {"M1" "cfill_e2"} {"M1" "cfillopc_e1"} {"M1" "cfillopc_e2"} {"V1" "cfill"} {"M2" "cfill_e1"} {"M2" "cfill_e2"} {"M2" "cfillopc_e1"} {"M2" "cfillopc_e2"} {"V2" "cfill"} {"M3" "cfill_e1"} {"M3" "cfill_e2"} {"M3" "cfillopc_e1"} {"M3" "cfillopc_e2"} {"J3" "cfill"} {"C4" "cfill"} {"C4" "cfillopc"} {"A4" "cfill"} {"C5" "cfill"} {"C5" "cfillopc"} {"A5" "cfill"} {"C6" "cfill"} {"C6" "cfillopc"} {"A6" "cfill"} {"C7" "cfill"} {"C7" "cfillopc"} {"K1" "cfill"} {"K1" "cfillopc"} {"U1" "cfill"} {"K2" "cfill"} {"K2" "cfillopc"} {"KG" "cfill"} {"G1" "cfill"} {"G2" "cfill"} {"LB" "cfill"} {"QT" "cfill"} {"HT" "cfill"} {"CK" "cfill"}}
set GVAR_amdLayVariables(amdLayoutAlias,text05) {{"C5" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,met02) {{"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock11) {{"G2" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss05) {{"C5" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,l12) {{"LB" "drawing"} {"LB" "vss"} {"LB" "vdd"} {"LB" "vddio"} {"LB" "vldt"} {"LB" "vtt"} {"LB" "vddr"} {"LB" "vmemp"} {"LB" "vmemio"} {"LB" "clock"} {"LB" "label"} {"LB" "pin"} {"LB" "e1"} {"LB" "e2"} {"VV" "drawing"} {"LB" "track"} {"TRACK" "lb"} {"LB" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,text03) {{"M3" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,always_on) {{"y0" "drawing"} {"y0" "flight"} {"y1" "drawing"} {"y1" "flight"} {"y2" "drawing"} {"y2" "flight"} {"y3" "drawing"} {"y3" "flight"} {"y4" "drawing"} {"y4" "flight"} {"y5" "drawing"} {"y5" "flight"} {"y6" "drawing"} {"y6" "flight"} {"y7" "drawing"} {"y7" "flight"} {"y8" "drawing"} {"y8" "flight"} {"y9" "drawing"} {"y9" "flight"} {"stretch" "drawing"} {"instance" "drawing"} {"hilite" "drawing"} {"hilite" "drawing1"} {"hilite" "drawing2"} {"hilite" "drawing3"} {"hilite" "drawing4"} {"hilite" "drawing5"} {"hilite" "drawing6"} {"hilite" "drawing7"} {"hilite" "drawing8"} {"hilite" "drawing9"} {"annotate" "drawing"} {"annotate" "drawing1"} {"annotate" "drawing2"} {"annotate" "drawing3"} {"annotate" "drawing4"} {"annotate" "drawing5"} {"annotate" "drawing6"} {"annotate" "drawing7"} {"annotate" "drawing8"} {"annotate" "drawing9"} {"Unrouted" "drawing"} {"Unrouted" "drawing1"} {"Unrouted" "drawing2"} {"Unrouted" "drawing3"} {"Unrouted" "drawing4"} {"Unrouted" "drawing5"} {"Unrouted" "drawing6"} {"Unrouted" "drawing7"} {"Unrouted" "drawing8"} {"Unrouted" "drawing9"} {"instance" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,text08) {{"K1" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,layerset3) {{"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"A4" "drawing"} {"A5" "drawing"} {"C5" "track"} {"TRACK" "c5"} {"C5" "gnd"} {"TEXTJNK" "drawing"} {"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"} {"A5" "drawing"} {"A6" "drawing"} {"C6" "track"} {"TRACK" "c6"} {"C6" "gnd"} {"TEXTJNK" "drawing"} {"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"A6" "drawing"} {"CK" "drawing"} {"C7" "track"} {"TRACK" "c7"} {"C7" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd) {{"M1" "vdd"} {"M2" "vdd"} {"M3" "vdd"} {"C4" "vdd"} {"C5" "vdd"} {"C6" "vdd"} {"C7" "vdd"} {"K1" "vdd"} {"K2" "vdd"} {"G1" "vdd"} {"G2" "vdd"} {"LB" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,text12) {{"LB" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,l04) {{"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"} {"J3" "drawing"} {"A4" "drawing"} {"C4" "track"} {"TRACK" "c4"} {"C4" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,l06) {{"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"} {"A5" "drawing"} {"A6" "drawing"} {"C6" "track"} {"TRACK" "c6"} {"C6" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd12) {{"LB" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,text04) {{"C4" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd07) {{"C7" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss08) {{"K1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,macros) {{"NW" "drawing"} {"NW" "pin"} {"NW" "label"} {"NW" "res"} {"RX" "drawing"} {"AUXPC" "drawing"} {"AUXPC2" "drawing"} {"PC" "drawing"} {"TRACK" "pc"} {"TS" "drawing"} {"TS" "dummy"} {"CA" "drawing"} {"CB" "drawing"} {"V0" "drawing"} {"ESD" "hbm"} {"RM" "drawing"} {"RM_TERM" "drawing"} {"PCSTP2" "drawing"} {"PCSTP4" "drawing"} {"PCSTP6" "drawing"} {"PCSTP8" "drawing"} {"PCSTP10" "drawing"} {"PCSTN2" "drawing"} {"PCSTN4" "drawing"} {"PCSTN6" "drawing"} {"PCSTN8" "drawing"} {"PCSTN10" "drawing"} {"SXCUT" "label"} {"RC" "drawing"} {"ROTDEV" "drawing"} {"ISODEV" "drawing"} {"TEXTJNK" "drawing"} {"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"} {"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"V2" "drawing"} {"J3" "drawing"} {"M3" "track"} {"TRACK" "m3"} {"M3" "gnd"} {"TEXTJNK" "drawing"} {"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"} {"J3" "drawing"} {"A4" "drawing"} {"C4" "track"} {"TRACK" "c4"} {"C4" "gnd"} {"TEXTJNK" "drawing"} {"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"A4" "drawing"} {"A5" "drawing"} {"C5" "track"} {"TRACK" "c5"} {"C5" "gnd"} {"TEXTJNK" "drawing"} {"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"} {"A5" "drawing"} {"A6" "drawing"} {"C6" "track"} {"TRACK" "c6"} {"C6" "gnd"} {"TEXTJNK" "drawing"} {"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"A6" "drawing"} {"CK" "drawing"} {"C7" "track"} {"TRACK" "c7"} {"C7" "gnd"} {"TEXTJNK" "drawing"} {"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"} {"CK" "drawing"} {"U1" "drawing"} {"K1" "track"} {"TRACK" "k1"} {"K1" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"}}
set GVAR_amdLayVariables(amdLayoutAlias,obsolete) {{"M1" "blockage"} {"M2" "blockage"} {"M3" "blockage"} {"C4" "blockage"} {"C5" "blockage"} {"C6" "blockage"} {"C7" "blockage"} {"K1" "blockage"} {"K2" "blockage"} {"G1" "blockage"} {"G2" "blockage"} {"LB" "blockage"} {"CB" "blockage"} {"V0" "blockage"} {"V1" "blockage"} {"V2" "blockage"} {"J3" "blockage"} {"A4" "blockage"} {"A5" "blockage"} {"A6" "blockage"} {"CK" "blockage"} {"U1" "blockage"} {"KG" "blockage"} {"T1" "blockage"} {"VV" "blockage"} {"M1" "track"} {"M2" "track"} {"M3" "track"} {"C4" "track"} {"C5" "track"} {"C6" "track"} {"C7" "track"} {"K1" "track"} {"K2" "track"} {"G1" "track"} {"G2" "track"} {"LB" "track"} {"PC" "track"} {"M1" "exclude"} {"M2" "exclude"} {"M3" "exclude"} {"C4" "exclude"} {"C5" "exclude"} {"C6" "exclude"} {"C7" "exclude"} {"K1" "exclude"} {"K2" "exclude"} {"G1" "exclude"} {"G2" "exclude"} {"LB" "exclude"} {"PC" "exclude"} {"RX" "exclude"}}
set GVAR_amdLayVariables(amdLayoutAlias,met10) {{"G1" "drawing"} {"G1" "vss"} {"G1" "vdd"} {"G1" "vddio"} {"G1" "vldt"} {"G1" "vtt"} {"G1" "vddr"} {"G1" "vmemp"} {"G1" "vmemio"} {"G1" "clock"} {"G1" "label"} {"G1" "pin"} {"G1" "e1"} {"G1" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,text02) {{"M2" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,layerset1) {{"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"} {"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"V2" "drawing"} {"J3" "drawing"} {"M3" "track"} {"TRACK" "m3"} {"M3" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,all) {}
set GVAR_amdLayVariables(amdLayoutAlias,l10) {{"G1" "drawing"} {"G1" "vss"} {"G1" "vdd"} {"G1" "vddio"} {"G1" "vldt"} {"G1" "vtt"} {"G1" "vddr"} {"G1" "vmemp"} {"G1" "vmemio"} {"G1" "clock"} {"G1" "label"} {"G1" "pin"} {"G1" "e1"} {"G1" "e2"} {"KG" "drawing"} {"T1" "drawing"} {"G1" "track"} {"TRACK" "g1"} {"G1" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,macro) {{"NW" "drawing"} {"NW" "pin"} {"NW" "label"} {"NW" "res"} {"RX" "drawing"} {"AUXPC" "drawing"} {"AUXPC2" "drawing"} {"PC" "drawing"} {"TRACK" "pc"} {"TS" "drawing"} {"TS" "dummy"} {"CA" "drawing"} {"CB" "drawing"} {"V0" "drawing"} {"ESD" "hbm"} {"RM" "drawing"} {"RM_TERM" "drawing"} {"PCSTP2" "drawing"} {"PCSTP4" "drawing"} {"PCSTP6" "drawing"} {"PCSTP8" "drawing"} {"PCSTP10" "drawing"} {"PCSTN2" "drawing"} {"PCSTN4" "drawing"} {"PCSTN6" "drawing"} {"PCSTN8" "drawing"} {"PCSTN10" "drawing"} {"SXCUT" "label"} {"RC" "drawing"} {"ROTDEV" "drawing"} {"ISODEV" "drawing"} {"TEXTJNK" "drawing"} {"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"} {"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"V2" "drawing"} {"J3" "drawing"} {"M3" "track"} {"TRACK" "m3"} {"M3" "gnd"} {"TEXTJNK" "drawing"} {"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"} {"J3" "drawing"} {"A4" "drawing"} {"C4" "track"} {"TRACK" "c4"} {"C4" "gnd"} {"TEXTJNK" "drawing"} {"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"A4" "drawing"} {"A5" "drawing"} {"C5" "track"} {"TRACK" "c5"} {"C5" "gnd"} {"TEXTJNK" "drawing"} {"C6" "drawing"} {"C6" "vss"} {"C6" "vdd"} {"C6" "vddio"} {"C6" "vldt"} {"C6" "vtt"} {"C6" "vddr"} {"C6" "vmemp"} {"C6" "vmemio"} {"C6" "clock"} {"C6" "label"} {"C6" "pin"} {"C6" "e1"} {"C6" "e2"} {"A5" "drawing"} {"A6" "drawing"} {"C6" "track"} {"TRACK" "c6"} {"C6" "gnd"} {"TEXTJNK" "drawing"} {"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"A6" "drawing"} {"CK" "drawing"} {"C7" "track"} {"TRACK" "c7"} {"C7" "gnd"} {"TEXTJNK" "drawing"} {"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"} {"CK" "drawing"} {"U1" "drawing"} {"K1" "track"} {"TRACK" "k1"} {"K1" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss07) {{"C7" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,stdcell) {{"NW" "drawing"} {"NW" "pin"} {"NW" "label"} {"NW" "res"} {"RX" "drawing"} {"AUXPC" "drawing"} {"AUXPC2" "drawing"} {"PC" "drawing"} {"TRACK" "pc"} {"TS" "drawing"} {"TS" "dummy"} {"CA" "drawing"} {"CB" "drawing"} {"V0" "drawing"} {"ESD" "hbm"} {"RM" "drawing"} {"RM_TERM" "drawing"} {"PCSTP2" "drawing"} {"PCSTP4" "drawing"} {"PCSTP6" "drawing"} {"PCSTP8" "drawing"} {"PCSTP10" "drawing"} {"PCSTN2" "drawing"} {"PCSTN4" "drawing"} {"PCSTN6" "drawing"} {"PCSTN8" "drawing"} {"PCSTN10" "drawing"} {"SXCUT" "label"} {"RC" "drawing"} {"ROTDEV" "drawing"} {"ISODEV" "drawing"} {"TEXTJNK" "drawing"} {"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss12) {{"LB" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd11) {{"G2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,met08) {{"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd04) {{"C4" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss) {{"M1" "vss"} {"M2" "vss"} {"M3" "vss"} {"C4" "vss"} {"C5" "vss"} {"C6" "vss"} {"C7" "vss"} {"K1" "vss"} {"K2" "vss"} {"G1" "vss"} {"G2" "vss"} {"LB" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,layerset4) {{"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"A6" "drawing"} {"CK" "drawing"} {"C7" "track"} {"TRACK" "c7"} {"C7" "gnd"} {"TEXTJNK" "drawing"} {"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"} {"CK" "drawing"} {"U1" "drawing"} {"K1" "track"} {"TRACK" "k1"} {"K1" "gnd"} {"TEXTJNK" "drawing"} {"K2" "drawing"} {"K2" "vss"} {"K2" "vdd"} {"K2" "vddio"} {"K2" "vldt"} {"K2" "vtt"} {"K2" "vddr"} {"K2" "vmemp"} {"K2" "vmemio"} {"K2" "clock"} {"K2" "label"} {"K2" "pin"} {"K2" "e1"} {"K2" "e2"} {"U1" "drawing"} {"KG" "drawing"} {"K2" "track"} {"TRACK" "k2"} {"K2" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,l07) {{"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"} {"A6" "drawing"} {"CK" "drawing"} {"C7" "track"} {"TRACK" "c7"} {"C7" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,text09) {{"K2" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,met05) {{"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,met03) {{"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd06) {{"C6" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,met12) {{"LB" "drawing"} {"LB" "vss"} {"LB" "vdd"} {"LB" "vddio"} {"LB" "vldt"} {"LB" "vtt"} {"LB" "vddr"} {"LB" "vmemp"} {"LB" "vmemio"} {"LB" "clock"} {"LB" "label"} {"LB" "pin"} {"LB" "e1"} {"LB" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss01) {{"M1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock02) {{"M2" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd06) {{"C6" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd05) {{"C5" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd10) {{"G1" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd10) {{"G1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,l01) {{"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock03) {{"M3" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd07) {{"C7" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock06) {{"C6" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss06) {{"C6" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,label) {{"PC" "label"} {"M1" "label"} {"M2" "label"} {"M3" "label"} {"C4" "label"} {"C5" "label"} {"C6" "label"} {"C7" "label"} {"K1" "label"} {"K2" "label"} {"G1" "label"} {"G2" "label"} {"LB" "label"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,track) {{"M1" "track"} {"M2" "track"} {"M3" "track"} {"C4" "track"} {"C5" "track"} {"C6" "track"} {"C7" "track"} {"K1" "track"} {"K2" "track"} {"G1" "track"} {"G2" "track"} {"LB" "track"} {"PC" "track"} {"TRACK" "m1"} {"TRACK" "m2"} {"TRACK" "m3"} {"TRACK" "c4"} {"TRACK" "c5"} {"TRACK" "c6"} {"TRACK" "c7"} {"TRACK" "k1"} {"TRACK" "k2"} {"TRACK" "g1"} {"TRACK" "g2"} {"TRACK" "lb"} {"TRACK" "pc"}}
set GVAR_amdLayVariables(amdLayoutAlias,ercmarker) {{"ACTIVE" "erc"}}
set GVAR_amdLayVariables(amdLayoutAlias,text11) {{"G2" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd04) {{"C4" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,l08) {{"K1" "drawing"} {"K1" "vss"} {"K1" "vdd"} {"K1" "vddio"} {"K1" "vldt"} {"K1" "vtt"} {"K1" "vddr"} {"K1" "vmemp"} {"K1" "vmemio"} {"K1" "clock"} {"K1" "label"} {"K1" "pin"} {"K1" "e1"} {"K1" "e2"} {"CK" "drawing"} {"U1" "drawing"} {"K1" "track"} {"TRACK" "k1"} {"K1" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,met04) {{"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,met07) {{"C7" "drawing"} {"C7" "vss"} {"C7" "vdd"} {"C7" "vddio"} {"C7" "vldt"} {"C7" "vtt"} {"C7" "vddr"} {"C7" "vmemp"} {"C7" "vmemio"} {"C7" "clock"} {"C7" "label"} {"C7" "pin"} {"C7" "e1"} {"C7" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock05) {{"C5" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock07) {{"C7" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,text01) {{"M1" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,layerset2) {{"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"V2" "drawing"} {"J3" "drawing"} {"M3" "track"} {"TRACK" "m3"} {"M3" "gnd"} {"TEXTJNK" "drawing"} {"C4" "drawing"} {"C4" "vss"} {"C4" "vdd"} {"C4" "vddio"} {"C4" "vldt"} {"C4" "vtt"} {"C4" "vddr"} {"C4" "vmemp"} {"C4" "vmemio"} {"C4" "clock"} {"C4" "label"} {"C4" "pin"} {"C4" "e1"} {"C4" "e2"} {"J3" "drawing"} {"A4" "drawing"} {"C4" "track"} {"TRACK" "c4"} {"C4" "gnd"} {"TEXTJNK" "drawing"} {"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"A4" "drawing"} {"A5" "drawing"} {"C5" "track"} {"TRACK" "c5"} {"C5" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,l05) {{"C5" "drawing"} {"C5" "vss"} {"C5" "vdd"} {"C5" "vddio"} {"C5" "vldt"} {"C5" "vtt"} {"C5" "vddr"} {"C5" "vmemp"} {"C5" "vmemio"} {"C5" "clock"} {"C5" "label"} {"C5" "pin"} {"C5" "e1"} {"C5" "e2"} {"A4" "drawing"} {"A5" "drawing"} {"C5" "track"} {"TRACK" "c5"} {"C5" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd12) {{"LB" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,stdcells) {{"NW" "drawing"} {"NW" "pin"} {"NW" "label"} {"NW" "res"} {"RX" "drawing"} {"AUXPC" "drawing"} {"AUXPC2" "drawing"} {"PC" "drawing"} {"TRACK" "pc"} {"TS" "drawing"} {"TS" "dummy"} {"CA" "drawing"} {"CB" "drawing"} {"V0" "drawing"} {"ESD" "hbm"} {"RM" "drawing"} {"RM_TERM" "drawing"} {"PCSTP2" "drawing"} {"PCSTP4" "drawing"} {"PCSTP6" "drawing"} {"PCSTP8" "drawing"} {"PCSTP10" "drawing"} {"PCSTN2" "drawing"} {"PCSTN4" "drawing"} {"PCSTN6" "drawing"} {"PCSTN8" "drawing"} {"PCSTN10" "drawing"} {"SXCUT" "label"} {"RC" "drawing"} {"ROTDEV" "drawing"} {"ISODEV" "drawing"} {"TEXTJNK" "drawing"} {"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"} {"V0" "drawing"} {"V1" "drawing"} {"M1" "track"} {"TRACK" "m1"} {"M1" "gnd"} {"TEXTJNK" "drawing"} {"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"} {"prBoundary" "boundary"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd11) {{"G2" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd08) {{"K1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,l02) {{"M2" "drawing"} {"M2" "vss"} {"M2" "vdd"} {"M2" "vddio"} {"M2" "vldt"} {"M2" "vtt"} {"M2" "vddr"} {"M2" "vmemp"} {"M2" "vmemio"} {"M2" "clock"} {"M2" "label"} {"M2" "pin"} {"M2" "e1"} {"M2" "e2"} {"V1" "drawing"} {"V2" "drawing"} {"M2" "track"} {"TRACK" "m2"} {"M2" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock04) {{"C4" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,layerset5) {{"K2" "drawing"} {"K2" "vss"} {"K2" "vdd"} {"K2" "vddio"} {"K2" "vldt"} {"K2" "vtt"} {"K2" "vddr"} {"K2" "vmemp"} {"K2" "vmemio"} {"K2" "clock"} {"K2" "label"} {"K2" "pin"} {"K2" "e1"} {"K2" "e2"} {"U1" "drawing"} {"KG" "drawing"} {"K2" "track"} {"TRACK" "k2"} {"K2" "gnd"} {"TEXTJNK" "drawing"} {"G1" "drawing"} {"G1" "vss"} {"G1" "vdd"} {"G1" "vddio"} {"G1" "vldt"} {"G1" "vtt"} {"G1" "vddr"} {"G1" "vmemp"} {"G1" "vmemio"} {"G1" "clock"} {"G1" "label"} {"G1" "pin"} {"G1" "e1"} {"G1" "e2"} {"KG" "drawing"} {"T1" "drawing"} {"G1" "track"} {"TRACK" "g1"} {"G1" "gnd"} {"TEXTJNK" "drawing"} {"G2" "drawing"} {"G2" "vss"} {"G2" "vdd"} {"G2" "vddio"} {"G2" "vldt"} {"G2" "vtt"} {"G2" "vddr"} {"G2" "vmemp"} {"G2" "vmemio"} {"G2" "clock"} {"G2" "label"} {"G2" "pin"} {"G2" "e1"} {"G2" "e2"} {"T1" "drawing"} {"VV" "drawing"} {"G2" "track"} {"TRACK" "g2"} {"G2" "gnd"} {"TEXTJNK" "drawing"} {"LB" "drawing"} {"LB" "vss"} {"LB" "vdd"} {"LB" "vddio"} {"LB" "vldt"} {"LB" "vtt"} {"LB" "vddr"} {"LB" "vmemp"} {"LB" "vmemio"} {"LB" "clock"} {"LB" "label"} {"LB" "pin"} {"LB" "e1"} {"LB" "e2"} {"VV" "drawing"} {"LB" "track"} {"TRACK" "lb"} {"LB" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,blockage) {{"M1" "blockage"} {"M2" "blockage"} {"M3" "blockage"} {"C4" "blockage"} {"C5" "blockage"} {"C6" "blockage"} {"C7" "blockage"} {"K1" "blockage"} {"K2" "blockage"} {"G1" "blockage"} {"G2" "blockage"} {"LB" "blockage"} {"PC" "blockage"} {"CB" "blockage"} {"V0" "blockage"} {"V1" "blockage"} {"V2" "blockage"} {"J3" "blockage"} {"A4" "blockage"} {"A5" "blockage"} {"A6" "blockage"} {"CK" "blockage"} {"U1" "blockage"} {"KG" "blockage"} {"T1" "blockage"}}
set GVAR_amdLayVariables(amdLayoutAlias,l11) {{"G2" "drawing"} {"G2" "vss"} {"G2" "vdd"} {"G2" "vddio"} {"G2" "vldt"} {"G2" "vtt"} {"G2" "vddr"} {"G2" "vmemp"} {"G2" "vmemio"} {"G2" "clock"} {"G2" "label"} {"G2" "pin"} {"G2" "e1"} {"G2" "e2"} {"T1" "drawing"} {"VV" "drawing"} {"G2" "track"} {"TRACK" "g2"} {"G2" "gnd"} {"TEXTJNK" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock12) {{"LB" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,met11) {{"G2" "drawing"} {"G2" "vss"} {"G2" "vdd"} {"G2" "vddio"} {"G2" "vldt"} {"G2" "vtt"} {"G2" "vddr"} {"G2" "vmemp"} {"G2" "vmemio"} {"G2" "clock"} {"G2" "label"} {"G2" "pin"} {"G2" "e1"} {"G2" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd02) {{"M2" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,always_off) nil
set GVAR_amdLayVariables(amdLayoutAlias,border) {{"prBoundary" "boundary"}}
set GVAR_amdLayVariables(amdLayoutAlias,l03) {{"M3" "drawing"} {"M3" "vss"} {"M3" "vdd"} {"M3" "vddio"} {"M3" "vldt"} {"M3" "vtt"} {"M3" "vddr"} {"M3" "vmemp"} {"M3" "vmemio"} {"M3" "clock"} {"M3" "label"} {"M3" "pin"} {"M3" "e1"} {"M3" "e2"} {"V2" "drawing"} {"J3" "drawing"} {"M3" "track"} {"TRACK" "m3"} {"M3" "gnd"} {"TEXTJNK" "drawing"} {"m3" "drawing"}}
set GVAR_amdLayVariables(amdLayoutAlias,vdd09) {{"K2" "vdd"}}
set GVAR_amdLayVariables(amdLayoutAlias,met01) {{"M1" "drawing"} {"M1" "vss"} {"M1" "vdd"} {"M1" "vddio"} {"M1" "vldt"} {"M1" "vtt"} {"M1" "vddr"} {"M1" "vmemp"} {"M1" "vmemio"} {"M1" "clock"} {"M1" "label"} {"M1" "pin"} {"M1" "e1"} {"M1" "e2"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd01) {{"M1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss04) {{"C4" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,gnd09) {{"K2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss09) {{"K2" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock01) {{"M1" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,vss10) {{"G1" "vss"}}
set GVAR_amdLayVariables(amdLayoutAlias,text07) {{"C7" "label"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock09) {{"K2" "clock"}}
set GVAR_amdLayVariables(amdLayoutAlias,clock08) {{"K1" "clock"}}

set GVAR_amdLayVariables(amdLayoutAMDLSWHiddenLayerSets) {{"StdCells" "stdcells"} {"Macros" "macros"}}
# Added by norayra. AMD need to feed correct information here.
set GVAR_amdLayVariables(amdMetLayers) {M1 M2 M3 M4 M5 M6}
set GVAR_amdLayVariables(validRoutingLayers) {M1 M2 M3 M4 M5 M6}
set GVAR_amdLayVariables(amdLayoutBorderLPP) [list "PinBorder" "boundary"]
### end added by norayra

}
