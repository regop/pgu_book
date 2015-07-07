ASFLAG= --gstabs
toupper: toupper.o
	ld -dynamic-linker /lib/ld-linux.so.2 toupper.o -o toupper -lc

toupper.o: toupper.S
	as $(ASFLAG) toupper.S -o toupper.o

clean:
	@rm -rvf toupper.o toupper output.txt
