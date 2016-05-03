Files need edited / ported [I did manually but it was waste of time after all, aldo's getsymbol can do this less than 30 secs, [it took me 30 mins to manually ported]

source/common.h 
source/main.c 
payload/symbols.h
payload/main.c

Files need compiled

payload.bin from payload folder

converted c code from payload.bin

payload.shellcode.inc 

and then build source to compile EBOOT.ELF/self

Then launch build.bat from main folder it will look for eboot.elf from source folder to generate EBOOT.BIN

[Don't forget to edit build.sh to change app version [4.65/4.66/4.70 and etc]
 
Edit PARAM.SFO and build pkg with EBOOT.BIN