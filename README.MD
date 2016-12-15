FLATZ's eid root key dumper v1.0

Supported CFW

4.80 [CEX]
4.80 [DEX]
4.81 [CEX]
4.81 [DEX]


[Files need edited / ported ]

source/common.h 
source/main.c 
payload/symbols.h
payload/main.c

[Files need compiled]

payload.bin from payload folder
converted c code from payload.bin
payload.shellcode.inc 
and then build source to compile EBOOT.ELF/self

Then launch build.bat from main folder it will look for eboot.elf from source folder to generate EBOOT.BIN

[Don't forget to edit build.sh to change app version [4.65/4.66/4.70 and etc]
 
Edit PARAM.SFO and build pkg with EBOOT.BIN