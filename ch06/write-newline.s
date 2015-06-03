.include "linux.s"
.global write_newline
.type write_newline, @function

.section .data
newline:
.ascii "\n"

.section .text
.equ ST_FILEDES, 8
write_newline:
pushl %ebp
movl %esp, %ebp

