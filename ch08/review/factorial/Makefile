ASFLAG= --gstabs

all: main

main: main.o libfactorial.so
	ld -L . -dynamic-linker /lib/ld-linux.so.2 main.o -o main -lfactorial -lc

main.o: main.S
	as $(ASFLAG) $^ -o $@

libfactorial.so: factorial.o
	ld -shared factorial.o -o libfactorial.so

factorial.o: factorial.S
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rvf *.o main *.so
