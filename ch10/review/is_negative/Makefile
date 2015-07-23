ASFLAG= --gstabs

all:main  

main:  is_negative.o main.o
	ld $^ -o $@

is_negative.o:is_negative.s
	as $(ASFLAG) $^ -o $@

main.o:main.s
	as $(ASFLAG) $^ -o $@


clean:
	@rm -rvf *.o main
