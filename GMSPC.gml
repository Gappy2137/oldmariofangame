#define Init
//arg1: the frequency to play all .spc files (normally 41000 is a good rate)
//arg2: the numbers bits to play all .spc at (16 is good)
global._init = external_define("gmspc.dll","Init",dll_cdecl,ty_real,2,0,0);
global._play = external_define("gmspc.dll","Play",dll_cdecl,ty_real,1,1);

return external_call(global._init,argument0,argument1);
#define Play
//arg1: filename of .spc file
return external_call(global._play,argument0);
