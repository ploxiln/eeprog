CFLAGS = -g -O2 -Wall -Wextra -Wshadow

all: eeprog 

clean: 
	rm -f eeprog eeprog.o 24cXX.o

%.o: %.c 24cXX.h
	$(CC) $(CFLAGS) -c -o $@ $<

eeprog: eeprog.o 24cXX.o
	$(CC) $(CFLAGS) -o $@ $^ -li2c
