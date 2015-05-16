# Review
## Know the Concepts
#### Q:What does if mean if a line in the program starts with the ’#’ character?
A: These are comments

#### Q:What is the difference between an assembly language file and an object code file?

A: assembly language file is human-readable . An object file is code that is in the machine’s language, but has not been completely put together.

#### Q:What does the linker do?
A: The linker is the program that is responsible for putting the object files together and adding information to it so that the kernel knows how to load and run it.

#### Q: How do you check the result status code of the last program you ran?
A: run `echo $?` command in the shell

#### Q: What is the difference between movl $1, %eax and movl 1, %eax?
A: `movl 1, %eax` means direct addressing mode, loading %eax with the value in memory address 1. `movl $1, %eax` means immediate mode, loading %eax with value 1 

#### Q: Which register holds the system call number?
A: %eax

#### Q: What are indexes used for?
A: access element in an array.

#### Q: Why do indexes usually start at 0?
A: http://stackoverflow.com/questions/7320686/why-does-the-indexing-start-with-zero-in-c

#### Q:If I issued the command movl data_items(,%edi,4), %eax and data_items was address 3634 and %edi held the value 13, what address would you be using to move into %eax?
A: address = 3634 + 13 *4 = 3686

#### Q: List the general-purpose registers.
A: %eax, %ebx, %ecx, %edx, %edi, %esi

#### Q: What is the difference between movl and movb?
A: movb is same as movl, but operates on individual bytes.

#### Q: What is flow control?
A: control flow ?

#### Q:What does a conditional jump do?
A: if the conditional is true, then jump

#### Q: What things do you have to plan for when writing a program?
A: how many memory do I need?
where shall they be stored

#### Go through every instruction and list what addressing mode is being used for each operand.
A: OK