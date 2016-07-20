
CC	=	gcc
CFLAGS	+= 	-g -O -Wall -Wshadow
ALL	=	zcc zcs cyclesoak run_rr run_on_cpu udpspam

%.o : %.c
	$(CC) $(CFLAGS) -c $<

all:	$(ALL)

run_rr: run_rr.o
run_on_cpu: run_on_cpu.o zclib.o
zcc: zcc.o zclib.o
zcs: zcs.o zclib.o
cyclesoak: cyclesoak.o zclib.o
udpspam: udpspam.o

zcc.o zcs.o zclib.o: zc.h

clean:
	$(RM) *.o $(ALL) counts_per_sec

