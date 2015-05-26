ASFLAGS= --gstabs
power: power.o
	ld power.o -o power 

power.o: power.S
	as $(ASFLAGS) power.S -o power.o

clean:
	@rm -rvf power.o power 
