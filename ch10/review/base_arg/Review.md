
# Review
## Know the Concepts
#### Q:  Convert the decimal number 5,294 to binary.
A: `0b 1 0100 1010 1110`

#### Q: What number does 0x0234aeff represent? Specify in binary, octal, and decimal.
binary: `0b10 0011 0100 1010 1110 1111 1111`
octal: `02 1512 7377`
decimal: `37007103`

#### Q:  Add the binary numbers 10111001 and 101011.
10111001 + 101011 = 11100100

#### Q: Multiply the binary numbers 1100 1010110.
1100 * 1010110 = 100 0000 1000

#### Q: Convert the results of the previous two problems into decimal.
12 * 86 = 1032

#### Q: Describe how AND, OR, NOT, and XOR work.

AND: 0 AND 0 = 0; 0 AND 1 = 0; 1 AND 0 =0; 1 AND 1 = 1;
OR:  0 OR 0 = 0; 0 OR 1 = 1; 1 OR 0 = 1; 1 OR 1 = 1;
NOT: NOT 1 = 0; NOT 0 =1;
XOR: 0 XOR 0 = 0; 0 XOR 1 = 1; 1 XOR 0 =1; 1 XOR 1 = 0;

#### Q: What is masking for?
to remove unnecessary bits

#### Q: What number would you use for the flags of the open system call if you wanted to open the file for writing, and create the file if it doesn’t exist?

O_WRONLY | O_CREAT

#### Q: How would you represent -55 in a thirty-two bit register?

0b 1111 1111 1111 1111 1111 1111 1100 1001

#### Q: Sign-extend the previous quantity into a 64-bit register.
0b 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1111 1100 1001 
#### Q: Describe the difference between little-endian and big-endian storage of words in memory.

little-endian: the lsb is in the low memory addr while the msb is in the high memory addr

big-endian: the lsb is in the high memory addr while the msb is in the low memory addr
