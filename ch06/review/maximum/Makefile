ASFLAG= --gstabs

all: read-records 

read-records: read-record.o read-records.o
	ld $^ -o $@

read-records.o: read-records.s
	as $(ASFLAG) $^ -o $@

read-record.o: read-record.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o read-records  
