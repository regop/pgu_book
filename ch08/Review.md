
# Review
## Know the Concepts
#### Q:  What are the advantages and disadvantages of shared libraries?

A:  
advantages: use less memory when many program use the same code; easier to update 

disadvantages: DLL Hell


#### Q:  Given a library named ’foo’, what would the library’s filename be?

A: libfoo.so

#### Q:  What does the ldd command do?

A: print shared library dependencies


#### Q: Let’s say we had the files foo.o and bar.o, and you wanted to link them together, and dynamically link them to the library ’kramer’. What would the linking command be to generate the final executable?

A: ld foo.o bar.o -lkramer -o exe

#### Q: What is typedef for?

A:  rename a type.

#### Q: What are structs for?

A:  A struct is a set of data items that have been put together under a name.


#### Q: What is the difference between a data element of type int and int \*? How would you access them differently in your program?

A: int mean a num, like $1, $32; int \* means a address.

#### Q: If you had a object file called foo.o, what would be the command to create a shared library called ’bar’?

A:  ld -shared foo.o -o libbar.so

#### Q:What is the purpose of LD_LIBRARY_PATH?

A: tell the linker where to search the library.

