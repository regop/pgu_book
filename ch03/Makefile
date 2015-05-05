exit: exit.o
	ld exit.o -o exit

exit.o: exit.S
	as exit.S -o exit.o

clean:
	@rm -rvf exit.o exit
