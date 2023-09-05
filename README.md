# ALU 8-bit
## 1) Introduction:
ALU is the fundamental building block of the processor, which is responsible for carrying out the arithmetic and logic functions. ALU comprises of combinatorial logic that implements arithmetic operations such as Addition, Subtraction and Multiplication,and logic operations such as AND, OR, NOT. The ALU reads two input operands In A and In B. The operation to perform on these input operands is selected using the control input Op. The ALU performs the selected operation on the input operands In A and In B and produces the output, Out. The ALU also updates different flag signals after performing the selected function. Note that the ALU is purely combinatorial logic and contains no registers or latches.
## 2) Input registers (A, B): 
Two 8-bit registers to hold the input operands. These registers will store the input values for the ALU's operations.
## 3) Control unit (op): 
 A control unit that receives an operation code as input and determines which operation the ALU should perform. The control unit decodes the operation code and generates control signals to select the appropriate operation.
## 4) Output register (out): 
 An 16-bit register to store the result of the ALU operation. This register holds the final output value produced by the ALU.
 
 ![Block Diagram](https://github.com/AbdullahMahmoudGhazal/ALU/assets/113705881/945fc2f8-3235-4c2f-b70e-75fea6493302)
## 5) Flags:
  ALU updates the conditional flags, which are used by the processor to perform other operations like condition checking and branching. In this example two flags are implemented. They are:
- ### Zero - If all the bits of the result data are zero then the zero flag is set
- ### Carry out - If the addition of the two operands gives the carry out this flag is set
## 6) Function: 
### a] The Arithmetic Unit:
     these operations can be implemented using arithmetic logic such as ripple carry adders and 2's complement subtraction circuits.
- Addition
- Subtraction
- Multiplication
- Devision
- Modulus
### b] The Logical Unit:
These operations can be implemented using logic gates such as AND gates, OR gates, and XOR gates.
- Bitwise AND
- Bitwise OR
- Bitwise NOT
- Bitwise NAND
- Bitwise NOR
- Bitwise XOR
- Bitwise XNOR
### c] Shift operations:
 The ALU should support logical left and right shift operations. These operations shift the bits of the input operand by a certain number of positions.
- Shift Lift
- Shift Right
- Rotate Lift
- Rotate Right

