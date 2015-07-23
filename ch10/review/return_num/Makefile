ASFLAG= --gstabs

all:main  

main: factorial.o integer-to-string.o count-chars.o write-newline.o
	ld $^ -o $@

factorial.o:factorial.s
	as $(ASFLAG) $^ -o $@

integer-to-string.o:integer-to-string.s
	as $(ASFLAG) $^ -o $@

count-chars.o: count-chars.s
	as $(ASFLAG) $^ -o $@

write-newline.o: write-newline.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o main
