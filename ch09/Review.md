
# Review
## Know the Concepts
#### Q:  Describe the layout of memory when a Linux program starts.
A:
**addr 0x08048000 **
**.text**
**.data**
**.bss**
**heap**
**unmap**
**stack**
**addr 0xBFFFFFFF**

#### Q:  What is the heap?

A: The pool of memory used by memory managers is commonly referred to as the heap.

#### Q:  What is the current break?

A: the boundary between the unmaped space the maped space 


#### Q: Which direction does the stack grow in?
A:  in the direction where memory addr decrease

#### Q: Which direction does the heap grow in?

A:  in the direction where memory addr increase

#### Q: What happens when you access unmapped memory?

A:  "segmentation fault"


#### Q: How does the operating system prevent processes from writing over each other’s memory?

A: use virtual memory

#### Q: Describe the process that occurs if a piece of memory you are using is currently residing on disk?

1. the processor notices thit can’t service your memory request directly.
2. asks Linux to step in.
3. Linux notices that the memory is actually on disk.
4. linux moves some data that currently in memory onto disk to make room, and then moves the memory being accessed from the disk back into physical memory.
5. linux then adjusts the processorvirtual-to-physical memory lookup tables so that it can find the memory in the new location.
6. Finally, Linux returns control to the program and restarts it at the instruction which was trying to access the data in the first place.
7. This instructiocan now be completed successfully.


#### Q: Why do you need an allocator?

A: For dynamically allocating the memory.

