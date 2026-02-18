
BIN_LIB=CMPSYS
LIBLIST=$(BIN_LIB) HONGYIZ
SHELL=/QOpenSys/usr/bin/qsh

all: test11.rpgle test11b.rpgle test12.rpgle

%.rpgle:
	system -s "CHGATR OBJ('/home/HONGYIZ/test11/qrpglesrc/$*.rpgle') ATR(*CCSID) VALUE(1252)"
	liblist -a $(LIBLIST);\
	system "CRTBNDRPG PGM($(BIN_LIB)/$*) SRCSTMF('/home/HONGYIZ/test11/qrpglesrc/$*.rpgle') DBGVIEW(*SOURCE) OPTION(*EVENTF)"

