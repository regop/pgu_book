ASFLAGS= --gstabs
power: power.o
	ld power.o -o power 

power.o: power.S
	as $(ASFLAGS) power.S -o power.o

factorial: factorial.o
	ld factorial.o -o factorial 

factorial.o: factorial.S
	as $(ASFLAGS) factorial.S -o factorial.o

clean:
	@rm -rvf power.o power factorial factorial.o
