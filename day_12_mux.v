`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 12:05:02 AM
// Design Name: 
// Module Name: mux
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


module mux(y,s,a,b);
input s,a,b;
output reg y;
always @(*) begin
    if (s==1'b0)
        y=a;
    else
        y=b;
end
endmodule

#techbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 12:15:29 AM
// Design Name: 
// Module Name: mux_tb
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


module mux_tb();
reg s,a,b;
wire y;
mux a1(y,s,a,b);
initial begin
s=0;a=0;b=0;#10;
s=0;a=0;b=1;#10;
s=0;a=1;b=0;#10;
s=0;a=1;b=1;#10;

s=1;a=0;b=0;#10;
s=1;a=0;b=1;#10;
s=1;a=1;b=0;#10;
s=1;a=1;b=1;#10;
$finish;
end
endmodule
