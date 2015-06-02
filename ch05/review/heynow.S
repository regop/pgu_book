.section .data

.equ SYS_OPEN, 5
.equ SYS_WRITE, 4
.equ SYS_CLOSE, 6
.equ SYS_EXIT, 1
.equ O_CREAT_WRONLY_TRUNC, 03101
.equ LINUX_SYSCALL, 0x80

file_name:
.ascii "heynow.txt"
.byte 0
file_content:
.ascii "Hey diddle diddle!\n"

.section .bss
.equ FD_SIZE, 4
.lcomm FD_OUT, FD_SIZE

.section .text
.global _start

_start:

movl $SYS_OPEN, %eax
movl $file_name, %ebx
movl $O_CREAT_WRONLY_TRUNC, %ecx
movl $0666, %edx
int $LINUX_SYSCALL

movl $FD_OUT, %edx
movl %eax, (%edx)

movl $SYS_WRITE, %eax
movl FD_OUT, %ebx
movl $file_content, %ecx
movl $19, %edx
int $LINUX_SYSCALL

movl $SYS_CLOSE, %eax
movl FD_OUT, %ebx
int $LINUX_SYSCALL

movl $SYS_EXIT, %eax
movl $0, %ebx
int $LINUX_SYSCALL
