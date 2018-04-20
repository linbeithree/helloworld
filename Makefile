OBJS += rand.o
OBJS += main.o
OBJS += counter.o

CFLAG += -g

all: $(OBJS)
	$(CC) -o demo $(OBJS)

%.o:%c
	$(CC) $(CFLAGS) -o $@ -c $<

.PHONY: clean
clean:
	rm -rf *.o *.d *.out *.bin *.dat demo

