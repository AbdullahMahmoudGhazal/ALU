module ALU(op,A,B,out,flag_c,flag_z);
  input [3:0]op; // operation code ==> 4 bit
  input [7:0]A,B; // two operands // each 8 bit
  output reg [15:0]out = 16'b0; // result
  output reg flag_c = 1'b0, // it will set when there is a carry after addition
             flag_z = 1'b0; // it will set when the result out = 0000 0000 0000 0000
  
  parameter [3:0] //to define the operation codes
  // Arithmetic Unit (5 )
  Add = 4'b0000, // + 
  Sub = 4'b0001, // - 
  Mul = 4'b0010, // *
  Div = 4'b0011, // /
  Mod = 4'b0100, // %
  // Logical Unit (7)
  AND = 4'b0101, // &
  OR  = 4'b0110, // |
  NOT = 4'b0111, // ~
  NAND= 4'b1000, // ~&
  NOR = 4'b1001, // ~|
  XOR = 4'b1010, // ^ 
  XNOR= 4'b1011, // ~^
  // Shif & Rotate (4)
  sh_L= 4'b1100, // A<<1
  sh_R= 4'b1101, // A>>1
  rt_L= 4'b1110, // A rotate left by 1
  rt_R= 4'b1111; // A rotate right by 1
  
  always@(*)
  begin
    case (op)
      Add:
        begin
          out = A + B;
          flag_c = out[8];
          flag_z = (out == 16'b0);
        end
      Sub:
        begin
          out = A - B;
          flag_c = out[8];
          flag_z = (out == 16'b0);
        end
      Mul:
        begin
          out = A * B;
          flag_z = (out == 16'b0);
        end
      Div:
        begin
          out = A / B;
          flag_z = (out == 16'b0);
        end
      Mod:
        begin
          out = A % B;
          flag_z = (out == 16'b0);
        end
      AND:
        begin
          out = A & B;
          flag_z = (out == 16'b0);
        end
      OR:
        begin
          out = A | B;
          flag_z = (out == 16'b0);
        end
      NOT:
        begin
          out = ~A;
          flag_z = (out == 16'b0);
        end
      NAND:
        begin
          out = ~(A & B);
          flag_z = (out == 16'b0);
        end
      NOR:
        begin
          out = ~(A | B);
          flag_z = (out == 16'b0);
        end
      XOR:
        begin
          out = A ^ B;
          flag_z = (out == 16'b0);
        end
      XNOR:
        begin
          out = ~(A ^ B);
          flag_z = (out == 16'b0);
        end
        
      sh_L:
        begin
          out = A<<1;
          flag_z = (out == 16'b0);
        end
      sh_R:
        begin
          out = A>>1;
          flag_z = (out == 16'b0);
        end
      rt_L: 
        begin
          out = {A[6:0],A[7]};
          flag_z = (out == 16'b0);
        end
      rt_R:
        begin
          out = {A[0],A[7:1]};
          flag_z = (out == 16'b0);
        end
      default: 
        begin
          out = 16'b0;
          flag_c = 1'b0;
          flag_z = 1'b0;
        end
    endcase
  end
endmodule
                  
                    
