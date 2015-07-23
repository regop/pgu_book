.section .data
.section .text

.global _start
_start:

pushl $4
call is_negative

movl %eax, %ebx
movl $1, %eax

int $0x80
