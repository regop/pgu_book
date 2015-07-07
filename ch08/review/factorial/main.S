.section .data
message:
.ascii "result of is %d\n\0"

.section .text
.global _start

_start:

pushl $4
call factorial

pushl %eax
pushl $message
call printf

pushl $0
call exit

