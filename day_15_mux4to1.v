`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 11:35:10 PM
// Design Name: 
// Module Name: mux4to1
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
module mux4to1(y,i0,i1,i2,i3,s0,s1);
input i0,i1,i2,i3,s0,s1;
output reg y;
always @(*)begin
    if(s0==0 && s1==0)
        y = i0;
    else if(s0==0 && s1==1)
        y = i1;
    else if(s0==1 && s1==0)
        y = i2;
    else
        y = i3;
end
endmodule

#testbench

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2026 11:46:33 PM
// Design Name: 
// Module Name: mux4to1_tb
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


module mux4to1_tb();
reg i0,i1,i2,i3,s0,s1;
wire y;
mux4to1 a1 (y,i0,i1,i2,i3,s0,s1);
initial
begin
i0=0;i1=0;i2=1;i3=1;
s0=0;s1=0;#10;
s0=0;s1=1;#10;
s0=1;s1=0;#10;
s0=1;s1=1;#10;
$finish;
end
endmodule
