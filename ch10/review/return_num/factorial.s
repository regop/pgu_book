.include "linux.s"

.section .data
tmp_buffer:
.ascii "\0\0\0\0\0\0\0\0\0\0\0"

.section .text


.global _start
.global factorial
_start:
movl %esp, %ebp
pushl $4
call factorial

pushl $tmp_buffer
pushl %eax
call integer2string

addl $8, %esp
pushl $tmp_buffer
call count_chars
addl $4, %esp

movl %eax, %edx
movl $SYS_WRITE, %eax
movl $STDOUT, %ebx
movl $tmp_buffer, %ecx

int $LINUX_SYSCALL

pushl $STDOUT
call write_newline

mov $SYS_EXIT, %eax
movl $0, %ebx
int $LINUX_SYSCALL

.type factorial, @function
factorial:
pushl %ebp
movl %esp,%ebp
movl 8(%ebp), %eax
cmpl $1, %eax

je end_factorial
decl %eax
pushl %eax
call factorial
movl 8(%ebp), %ebx
imull %ebx, %eax

end_factorial:
movl %ebp, %esp
popl %ebp
ret
