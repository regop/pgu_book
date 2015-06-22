ASFLAG= --gstabs


write-30-records: write-record.o write-30-records.o
	ld $^ -o $@

write-30-records.o: write-30-records.s
	as $(ASFLAG) $^ -o $@

write-record.o: write-record.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o write-records test.dat  write-30-records
