SOURCES=boot.o main.o
GCC = gcc
CFLAGS=-Wall -c -fno-builtin -W -Wstrict-prototypes \
         -Wmissing-prototypes -g
LDFLAGS=-T link.ld
ASFLAGS=-f elf

all: $(SOURCES) link

clean:
	-rm *.o kernel

link:
	ld $(LDFLAGS) -o kernel $(SOURCES)

.s.o:
	nasm $(ASFLAGS) $<

.c.o:
	$(GCC) $(CFLAGS) $< -o $@