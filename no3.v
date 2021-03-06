module byte_comparator( a, b, en, z); 

input [7:0] a, b;
input en;
output z;
 
wire [7:0] c;
wire d;

  xor g1 [7:0] (c,a,b);
  or (d,c);
  notif1 notif_1(z,d,en);

endmodule


module byte_comparator_tb;

reg[7:0]a,b;
reg en;

byte_comparator des(.z(z),.a(a),.b(b),.en(en));

initial begin
  
a = 8'b00000000;

b = 8'b00000000;

en = 1'b0;

end

always

#2 en = 1'b1;

always

begin

 #2 a = a+1'b1;

 #2 b = b+1'b0;

end

initial $monitor($time," en = %b , a = %b ,b = %b ,z = %b ",en,a,b,z);

initial 
#30 
$stop;

endmodule
