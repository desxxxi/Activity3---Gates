module cla (cout, g, p, cin);
input [1:0] g, p;
input cin;
output [1:0] cout;

buf (Cin, cin); 
and a1 (s1, p[0], cin);
or o1 (s2, g[0], s1);
xor a2 (s3, p[1], cin);
or o2 (s4, g, s2);
buf (cout[1], s3);  



endmodule // cla

module cla_tb;

    reg g, p, cin;
    wire cout; 

cla uut(.g(g), .p(p), .cin(cin), .cout(cout));
endmodule 
