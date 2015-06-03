write-records: write-record.o write-records.o
	ld $^ -o $@

write-records.o: write-records.s
	as $^ -o $@

write-record.o: write-record.s
	as $^ -o $@

clean:
	@rm -rvf *.o write-records test.dat
