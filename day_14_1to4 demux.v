`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/20/2026 11:49:07 PM
// Design Name: 
// Module Name: demux1to4
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


module demux1to4(y0,y1,y2,y3,d,s0,s1);
input d,s0,s1;
output reg y0,y1,y2,y3;
always @(*)begin
y0 = 0;
y1 = 0;
y2 = 0;
y3 = 0;
    if(s0==0&&s1==0)
    y0 = d;
    else if(s0==0&&s1==1)
    y1 = d;
    else if(s0==1&&s1==0)
    y2 = d;
    else
    y3 = d;
end 
endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 12:08:19 AM
// Design Name: 
// Module Name: demux1to4_tb
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


module demux1to4_tb();
reg d,s0,s1;
wire y0,y1,y2,y3;
demux1to4 a1(y0,y1,y2,y3,d,s0,s1);
initial
begin
d=0;s0=0;s1=0;#10;
d=0;s0=0;s1=1;#10;
d=0;s0=1;s1=0;#10;
d=0;s0=1;s1=1;#10;
d=1;s0=0;s1=0;#10;
d=1;s0=0;s1=1;#10;
d=1;s0=1;s1=0;#10;
d=1;s0=1;s1=1;#10;
$finish;
end
endmodule

