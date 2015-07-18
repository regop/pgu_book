ASFLAG= --gstabs

all: write-records read-records 


write-records: write-record.o write-records.o
	ld $^ -o $@

write-records.o: write-records.s
	as $(ASFLAG) $^ -o $@

write-record.o: write-record.s
	as $(ASFLAG) $^ -o $@

read-records: read-record.o count-chars.o write-newline.o read-records.o alloc.o
	ld $^ -o $@

read-records.o: read-records.s
	as $(ASFLAG) $^ -o $@

count-chars.o: count-chars.s
	as $(ASFLAG) $^ -o $@

write-newline.o: write-newline.s
	as $(ASFLAG) $^ -o $@

read-record.o: read-record.s
	as $(ASFLAG) $^ -o $@

alloc.o: alloc.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o write-records test.dat read-records testout.dat add-year
