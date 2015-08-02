CC ?= 
CFLAGS ?= -g
LFLAGS ?=
RM ?= rm -f 

OBJS = hello2.o hello.o

default: all

all: hello

%.o: %.c
	$(CC) $(CFLAGS) -c $<	

hello: $(OBJS) 
	$(CC) $(LFLAGS) -o $@ $^

clean:
	$(RM) *.o hello

.PHONY: clean
