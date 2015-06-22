ASFLAG= --gstabs

all: add-year

add-year: add-year.o read-record.o write-record.o count-chars.o write-newline.o  error-exit.o
	ld $^ -o $@

error-exit.o: error-exit.s
	as $(ASFLAG) $^ -o $@

write-record.o: write-record.s
	as $(ASFLAG) $^ -o $@

count-chars.o: count-chars.s
	as $(ASFLAG) $^ -o $@

write-newline.o: write-newline.s
	as $(ASFLAG) $^ -o $@

read-record.o: read-record.s
	as $(ASFLAG) $^ -o $@

add-year.o: add-year.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o add-year testout.dat
