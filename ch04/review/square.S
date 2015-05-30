.section .data
.section .text
.global _start

_start:
pushl $4
call square
movl %eax, %ebx
movl $1, %eax
int $0x80

.type square, @function
square:
pushl %ebp
movl %esp, %ebp
movl 8(%ebp), %eax
movl %eax, %ebx
imull %ebx, %eax
popl %ebp

ret

