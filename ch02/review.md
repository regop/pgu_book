# Review
## Know the Concepts
#### Q:  Describe the fetch-execute cycle.
A: get next instruction from PC -> decode instuction in instruction decoder -> fetch data from data bus if needs -> pass instruction to arithmetic and logic uint -> exec in arithmetic and logic unit

#### Q: What is a register? How would computation be more difficult without register?
A: Registers are what the computer uses for computation, holding things you are currently working on.You will have to use memory units for computing without registers and the computer system will change too.

#### Q: How do you represent numbers larger than 255?

A: use more memory units to combine a larger number

#### Q: How big are the register on the machines we will be using?
A: 32-bit long

#### Q: How does a computer know how to interpret a given byte or set of bytes of memory?
A: the computer doesn't care, it depends on how you use them.

#### Q: What are the addressing modes and what are they used for?
A: addressing modes are the ways of accessing data.they are used for different types


#### Q: What does the instruction pointer do?
A: a pointer is a number that points to a specify memory unit, aka the address of a memory unit

## Use the Comcepts
#### Q:What data would you use in an employee record? How would you lay it out in memory?
A: use linked list

#### Q:If I hand the pointer the beginning of the employee recoed above, and wanted to access a particular piece of data inside of it, what addressing mode would I use?
A: base pointer addressing mode

#### Q: In base pointer addressing mode, if you have a register holding the value 3122,and an offset of 20, what address would you be trying to access?
A: 3122 + 20 = 3142

#### Q: In indexed addressing mode, if the base address is 6512, the index register has a 5, and the multiplier is 4, what address would you be trying to access?
A: 6512 + 4*5 = 6532

#### Q: In indexed addressing mode, if the base address is 123472, the index register
has a 0, and the multiplier is 4, what address would you be trying to access?
A: 123472 + 0*4 = 123472

#### Q: In indexed addressing mode, if the base address is 9123478, the index register has a 20, and the multiplier is 1, what address would you be trying to access?
A: 9123478 + 20*1 = 9123498




