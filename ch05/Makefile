ASFLAG= --gstabs
toupper: toupper.o
	ld toupper.o -o toupper

toupper.o: toupper.S
	as $(ASFLAG) toupper.S -o toupper.o

clean:
	@rm -rvf toupper.o toupper output.txt
