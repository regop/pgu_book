ASFLAGS= --gstabs
exit: exit.o
	ld exit.o -o exit

exit.o: exit.S
	as $(ASFLAGS) exit.S -o exit.o

maximum: maximum.o
	ld maximum.o -o maximum

maximum.o: maximum.S
	as $(ASFLAGS) maximum.S -o maximum.o

clean:
	@rm -rvf exit.o exit maximum.o maximum
