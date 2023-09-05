module ALU_tb();
// 1) Declare local reg and wire identifiers
reg [3:0]op;
reg [7:0]A,B;

wire [15:0] out;
wire flag_c, flag_z;
// 2) Instantiate the module under test
ALU uut(.op(op),.A(A),.B(B),.out(out),.flag_c(flag_c),.flag_z(flag_z));
//temprary variable
reg [3:0]count = 4'b0;
// 3) Specify a stopwatch to stop the simulation
// 4) Generate stimuli, using initial and always
initial 
begin
  op = 4'b0;
  A = 8'b0;
  B = 8'b0;
  //Wait 100 ns for global reset to finish
  #100;
  // stimulus << first method in decimal>>
  A = 8'd30;
  B = 8'd10;
  op = 4'b0000; // Add
  op = 4'b0001; // Sub
  #20;
  op = 4'b0010; // Mul
  #20;
  op = 4'b0011; // Div
  #20;
  op = 4'b0100; // Mod
  #20;
  op = 4'b0101; // AND
  #20;
  op = 4'b0110; // OR 
  #20;
  op = 4'b0111; // NOT
  #20;
  op = 4'b1000; // NAND
  #20;
  op = 4'b1001; // NOR 
  #20;
  op = 4'b1010; // XOR
  #20;
  op = 4'b1011; // XNOR
  #20;
  op = 4'b1100; // sh_L
  #20;
  op = 4'b1101; // sh_R
  #20;
  op = 4'b1110; // rt_L
  #20;
  op = 4'b1111; // rt_R
  #50;
  op = 4'b0;
  A = 8'b0;
  B = 8'b0;
  //Wait 100 ns for global reset to finish
  #100;
  A = 8'd100;
  B = 8'd20;
  
  for(count = 0; count < 16; count = count + 1'b1)
    begin
      op = count;
      #20;
    end
    
end
// 5) Display the output response (text or graphics (or both) )
initial
begin
  for(count = 0 ; count< 16 ; count = count + 1'b1)
  begin
  $monitor("op(%d): A=%d\tB=%d\t\t out=%d",count,A,B,out);
  #10;
  end
end


endmodule