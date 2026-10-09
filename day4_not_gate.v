`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2026 12:23:58 AM
// Design Name: 
// Module Name: not_gate
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


module not_gate(y,a);
input a;
output reg y;
always @(*)begin 
y = ~a;
end
endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2026 12:35:31 AM
// Design Name: 
// Module Name: not_gate_tb
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


module not_gate_tb();
reg a;
wire y;
not_gate a1(y,a);
initial 
begin
a=0;#10;
a=1;#10;
$finish;
end
endmodule
