.equ ST_VALUE, 8

.global is_negative
.type is_negative, @function

is_negative:
pushl %ebp
movl %esp, %ebp
movl ST_VALUE(%ebp), %ebx
cmpl $0, %ebx
jge positive

movl $0, %eax
popl %ebp
ret

positive:
movl $1, %eax
popl %ebp
ret
