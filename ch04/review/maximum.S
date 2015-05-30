.section .data
data_list_a:
.long 1,2,5,2,123,31,3,4
data_list_b:
.long 12,34,54,65,54
data_list_c:
.long 32,146,44,56,76

.section .text
.global _start

_start:
pushl $8
pushl $data_list_a
call maximum
pushl $5
pushl $data_list_b
call maximum

pushl $5
pushl $data_list_c
call maximum

movl %eax, %ebx
movl $1, %eax
int $0x80

.type maximum, @function

maximum:
pushl %ebp
movl %esp, %ebp

movl 8(%ebp), %edx
movl 12(%ebp), %esi
movl $0, %edi
movl $0, %eax
movl $0, %ebx

start_loop:

cmpl %esi, %edi
je end_loop 

movl %edi, %ecx
imull $4, %ecx
addl %edx, %ecx
movl (%ecx), %ebx

incl %edi

cmpl %ebx, %eax
jg start_loop
movl %ebx, %eax
jmp start_loop

end_loop:
popl %ebp
ret
