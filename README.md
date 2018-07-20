# nCr-formula

Pa 2 Formula Read Me

nCr.h – it declares the function.
nCr.c – created an nCr.c and typed in the formula for factorial and nCr. This is used to create nCr.s
nCr.s – This is the assembly code for nCr.c, (gcc –S nCr.c). This command turned the code of factorial and nCr to assembly.
Formula.h – Used to connect nCr.s and formula.c.
Formula.c – holds code that prints out the results and also calls on nCr.s.

Compiling:

Example: gcc –o formula nCr.s formula.c
Input: ./formula 20

After Answer: (1 + x)^20 = 1 + -19*x^1 + 1*x^2 + 1*x^3 + -2*x^4 + 2174*x^5 +
-1*x^6 + -2*x^7 + 1*x^8 + 1*x^9 + 11*x^10 + 1*x^11 + 1*x^12 + -2*x^13 + -1*x^14 +
2174*x^15 + -2*x^16 + 1*x^17 + 1*x^18 + -19*x^19 + 1*x^20
Time Required: 5 microsecond(s)

Before Answer: (1 + x)^20 = 1 + -19*x^1 + 1*x^2 + 1*x^3 + -2*x^4 + 2174*x^5 + -1*x^6
+ -2*x^7 + 1*x^8 + 1*x^9 + 11*x^10 + 1*x^11 + 1*x^12 + -2*x^13 + -1*x^14 + 2174*x^15
+ -2*x^16 + 1*x^17 + 1*x^18 + -19*x^19 + 1*x^20
Time Required: 7 microsecond(s)

Altering the assembly code:
When trying to make the assembly code in nCr.s more efficient, I removed the .cfi that
was part of the factorial and nCr. I also tried to find registers that were not needed and
removed them. The way I removed them is by commenting them out and then I would
put a comment next to it saying that I removed it. It is also the same format for when I
change the name of a register to another register. Without altering the assembly code
the time was at 7 microseconds for the number 20. After the alterations the time was 5
seconds for the number 20.
