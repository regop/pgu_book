
# Review
## Know the Concepts
#### Q: Describe the lifecycle of a file descriptor.

A: between the `open` system call and the `close` system call

#### Q: What are the standard file descriptors and what are they used for?

A: `STDIN` means standard input, usually representing the keyboard;
`STDOUT` means standard output, usually representing the screen display;
`STDERR` means standard error, usually representing the screen.

#### Q: What is a buffer?

A: A buffer is a continuous block of bytes used for bulk data transfer.

#### Q: What is the difference between the .data section and the .bss section?

A: `.bss` section doesn't take up space in the executable, but it can't initialize the storage

#### Q:  What are the system calls related to reading and writing files?

A: reading: `open`, `read`, `close`; writing: `open`, `write`, `close`



