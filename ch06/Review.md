
# Review
## Know the Concepts
#### Q:  What is a record?

A: a record is structured data which contains infomation

#### Q:  What is the advantage of fixed-length records over variable-length records?


A: fixed-length records  is easy to deal with.

#### Q:  How do you include constants in multiple assembly source files?

A: put the constants in a file and use `.include`

#### Q: Why might you want to split up a project into multiple source files?

A: 1. the `KISS` principle 2. easier to manage the project and debug

#### Q: What does the instruction incl record_buffer + RECORD_AGE do? What addressing mode is it using? How many operands does the incl instructions have in this case? Which parts are being handled by the assembler and which parts are being handled when the program is run?

A: 1. increase the value at memory address(record_buffer + RECORD_AGE) by 1. 2. direct addressing mode.  3. 1 operand  4.record_buffer is handled when the program is run,the others is handled by assembler.



