.include "linux.s"
.include "record-def.s"

.section .data
file_name:
.ascii "test.dat\0"

.section .bss
.lcomm record_buffer, RECORD_SIZE


.section .text
.global _start

_start:
.equ ST_INPUT_DESCRIPTOR, -4
.equ ST_OUTPUT_DESCRIPTOR, -8

movl %esp, %ebp
subl $8, %esp

movl $SYS_OPEN, %eax
movl $file_name, %ebx
movl $0, %ecx
movl $0666, %edx
int $LINUX_SYSCALL

movl %eax, ST_INPUT_DESCRIPTOR(%ebp)
movl $STDOUT, ST_OUTPUT_DESCRIPTOR(%ebp)

movl $254, %ecx

swap_value:
movl %ecx, %edx

record_read_loop:
pushl %ecx
pushl %edx
pushl ST_INPUT_DESCRIPTOR(%ebp)
pushl $record_buffer
call read_record
addl $8, %esp
popl %edx
popl %ecx

cmpl $RECORD_SIZE, %eax
jne finished_reading

movl RECORD_AGE+record_buffer, %ecx

cmpl %ecx, %edx
jge  swap_value

jmp record_read_loop

finished_reading:
movl $SYS_EXIT, %eax
movl %edx, %ebx
int $LINUX_SYSCALL
