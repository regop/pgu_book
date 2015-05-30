ASFLAGS= --gstabs
square: square.o
	ld square.o -o square 

square.o: square.S
	as $(ASFLAGS) square.S -o square.o

clean:
	@rm -rvf square.o square 
