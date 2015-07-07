.section .data

firststring:
.ascii "Hello! %s is a %s who loves the number %d\n\0"

name:
.ascii "Honathan\0"

persionstring:
.ascii "person\0"

numberloved:
.long 3

.section .text
.global _start

_start:

pushl numberloved
pushl $persionstring
pushl $name
pushl $firststring
call printf

pushl $0
call exit

