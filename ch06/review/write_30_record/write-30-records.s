.include "linux.s"
.include "record-def.s"

.section .data

record:
.ascii "Fredrick\0"
.rept 31
.byte 0
.endr

.ascii "Bartlett\0"
.rept 31
.byte 0
.endr

.ascii "4242 S Prairie\nTulsa, OK 55555\0"
.rept 209
.byte 0
.endr

.long 45

file_name:
.ascii "test.dat\0"

.equ ST_FILE_DESCRIPTOR, -4
.global _start

_start:

movl %esp, %ebp
subl $4, %esp

movl $SYS_OPEN, %eax
movl $file_name, %ebx
movl $0101, %ecx
movl $0666, %edx
int $LINUX_SYSCALL
movl %eax, ST_FILE_DESCRIPTOR(%ebp)

movl $30, %ecx
begin_loop:
cmpl $0, %ecx
je end_loop

pushl %ecx
pushl ST_FILE_DESCRIPTOR(%ebp)
pushl $record
call write_record
addl $8, %esp

popl %ecx
decl %ecx
jmp begin_loop

end_loop:

movl $SYS_CLOSE, %eax
movl ST_FILE_DESCRIPTOR(%ebp), %ebx
int $LINUX_SYSCALL

movl $SYS_EXIT, %eax
movl $0, %ebx
int $LINUX_SYSCALL

