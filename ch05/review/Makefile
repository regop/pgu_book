ASFLAG= --gstabs
toupper: toupper.o
	ld toupper.o -o toupper

toupper.o: toupper.S
	as $(ASFLAG) toupper.S -o toupper.o

toupper_bss: toupper_bss.o
	ld $^ -o $@

toupper_bss.o: toupper_bss.S
	as $(ASFLAG) $^ -o $@

heynow: heynow.o
	ld $^ -o $@

heynow.o: heynow.S
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o toupper  toupper_bss heynow *.txt
