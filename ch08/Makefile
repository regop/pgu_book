ASFLAG= --gstabs

all: helloworld-nolib helloworld-lib

helloworld-nolib: helloworld-nolib.o
	ld $^ -o $@

helloworld-nolib.o: helloworld-nolib.s
	as $(ASFLAG) $^ -o $@

helloworld-lib: helloworld-lib.o
	ld -dynamic-linker /lib/ld-linux.so.2 -o helloworld-lib helloworld-lib.o -lc

helloworld-lib.o: helloworld-lib.s
	as $(ASFLAG) $^ -o $@

clean:
	@rm -rfv *.o helloworld-nolib helloworld-lib
