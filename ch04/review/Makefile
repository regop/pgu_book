ASFLAGS= --gstabs
square: square.o
	ld square.o -o square 

square.o: square.S
	as $(ASFLAGS) square.S -o square.o

maximum: maximum.o
	ld maximum.o -o maximum 

maximum.o: maximum.S
	as $(ASFLAGS) maximum.S -o maximum.o

clean:
	@rm -rvf square.o square maximum.o maximum
