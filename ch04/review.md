# Review
## Know the Concepts
#### Q:What are primitives?

A:  things that you cannot write functions for which must be provided by the system. In assembly language, the primitives are usually the same thing as the system calls.

#### Q:What are calling conventions?
A: The way that the variables are stored and the parameters and return values are transferred by the computer.

#### Q:What is the stack?
A: a region of memory which must be used in an appropriate way

#### Q:How do pushl and popl affect the stack? What special-purpose register do they affect?
A: `pushl` will push 4-byte-long data into stack, which decrease %esp by 4;
`popl` will pop 4-byte-long data out of stack, which increase %esp by 4.

#### Q: What are local variables and what are they used for?
A: local variables are data stored in stack, thay are only valid when the function is called.

#### Q: Why are local variables so necessary in recursive functions?
A: 1. registers are not enogh to store data.2. local variables are stored in stack which will be used when the function return 

#### Q: What are %ebp and %esp used for?
A: `esp` shows the top of the stack
`ebp` is the base address when access local variables

#### Q: What is a stack frame?
A: the stack frame consists of all of the stack variables used within a function, including parameters, local variables, and the return address