
`timescale 1ns / 1ps
module fullAdder (In1, In2,Cin,Sum,Cout);
  input In1, In2, Cin;
  output Sum, Cout;
  
xor #(1,4) (Sum,In1,Cin); 
and #(2,4) (d,In1,In2);
and #(3,4) (e,Cin,In2);
or #(4,4) (Cout,d,e); 
endmodule

module fullAdder_tb;


 // Inputs

 reg In1;

 reg In2;

 reg Cin;


 // Outputs

 wire Sum;
wire d;
wire e; 

 wire Cout;

 

 

 // Instantiate the Unit Under Test (UUT)

 fullAdder uut (

  .In1(In1), 

  .In2(In2), 

  .Cin(Cin), 

  .Sum(Sum), 

  .Cout(Cout)

  );

  
 endmodule