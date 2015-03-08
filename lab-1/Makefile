CC	= arm-linux-gnueabihf-gcc
CFLAGS	= -O1 -Wall
LDFLAGS = -fno-stack-protector

objects	= fibseq.o fib.o

default: fibseq

.PHONY: default clean qemu

fibseq: $(objects)
	$(CC) $(LDFLAGS) -o $@ $^

fib.o: fib.s
fibseq.o: fibseq.c

%.o: %.c
	$(CC) -c $(CFLAGS) -o $@ $<

%.o: %.s
	$(CC) -c $(CFLAGS) -o $@ $<

clean:
	rm -f $(objects) fibseq

QEMU_CMD = qemu-arm -L /usr/arm-linux-gnueabihf ./fibseq &
CMD = yes 9 | $(call QEMU_CMD) && sleep 1
qemu: fibseq
	@yes 15 | $(call QEMU_CMD)
	@sleep 1
	@yes 16 | $(call QEMU_CMD)
	@sleep 1
	@yes 17 | $(call QEMU_CMD)
	@sleep 1
	@yes 18 | $(call QEMU_CMD)
	@sleep 1
	@yes 19 | $(call QEMU_CMD)
	@sleep 1
	@yes 20 | $(call QEMU_CMD)
	@sleep 1
	@yes 21 | $(call QEMU_CMD)
	@sleep 1
	@yes 22 | $(call QEMU_CMD)
	@sleep 1
	@yes 23 | $(call QEMU_CMD)
	@sleep 1
	@yes 24 | $(call QEMU_CMD)
	@sleep 1
	@yes 25 | $(call QEMU_CMD)
	@sleep 1
