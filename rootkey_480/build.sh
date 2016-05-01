cd spu
make clean && make
scetool -p C:/PSDK3v2/MinGW/msys/1.0/bin/data --verbose --compress-data=FALSE --sce-type=SELF --key-revision=00 --self-auth-id=1FF000000C000001 --self-vendor-id=FF000000 --self-type=LDR --self-app-version=0004006500000000 --self-fw-version=0000000000000000 --self-ctrl-flags=0000000000000000000000000000000000000000000000000000000000000000 --self-cap-flags=0000000000000000000000000000000000000000000000780000000000000000 --encrypt dumper.elf dumper.spu.self
make code
cp dumper.inc ../payload/dumper.c                                                                                                                                                                                                                         
cd ..
cd payload && make clean && make
make code
cp payload.inc ../source/payload.shellcode.inc
cd ..
cd source && make clean && make
cd ..
scetool -p C:/PSDK3v2/MinGW/msys/1.0/bin/data --sce-type=SELF --key-revision=01 --self-auth-id=1010000001000003 --self-vendor-id=01000002 --self-type=NPDRM --self-fw-version=0004006000000000 --self-app-version=0001000000000000 --self-ctrl-flags=4000000000000000000000000000000000000000000000000000000000000002 --self-cap-flags=00000000000000000000000000000000000000000000003B0000000100002000 --np-license-type=FREE --np-app-type=EXEC --np-content-id=UP0001-FLTZ00010_00-ERKDUMPER0000000 --np-real-fname=EBOOT.BIN --compress-data=TRUE --encrypt source/EBOOT.ELF EBOOT.BIN
cp EBOOT.BIN pkg/USRDIR/
cp package.conf pkg
cd pkg && psn_package_npdrm