`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 11:36:11 PM
// Design Name: 
// Module Name: comparator4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator4(gt,eq,lt,a,b);
input [3:0]a,b;
output reg gt,eq,lt;
always @(*) begin
        gt=0;
        eq=0;
        lt=0;
    if(a>b)begin
        gt=1;
   end
    else if(a == b)
        eq=1;
    else
        lt=1;
end
endmodule
 
#test bench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 11:52:28 PM
// Design Name: 
// Module Name: comparator4_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module comparator4_tb();
reg [3:0] a,b;
wire gt,eq,lt;
comparator4 a1(gt,eq,lt,a,b);
initial 
begin
a=10;b=1;#10;
a=5;b=5;#10;
a=4;b=10;#10;
$finish;
end
endmodule
