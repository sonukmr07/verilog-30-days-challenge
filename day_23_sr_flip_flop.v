`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 10:46:48 PM
// Design Name: 
// Module Name: sr_flip_flop
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


module sr_flip_flop(q, clk, s, r);
input clk, s, r;
output reg q;

initial q = 0;

always @(posedge clk) begin
    if (s == 0 && r == 0)
        q <= q;
    else if (s == 0 && r == 1)
        q <= 0;
    else if (s == 1 && r == 0)
        q <= 1;
    else
        q <= 1'bx;
end

endmodule


#test bench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 10:48:42 PM
// Design Name: 
// Module Name: sr_flip_flop_tb
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


module sr_flip_flop_tb;
reg clk, s, r;
wire q;

sr_flip_flop a1(q, clk, s, r);

always #5 clk = ~clk;

initial begin
    clk = 0;
    s = 0; r = 0; #10;
    s = 0; r = 1; #10;
    s = 1; r = 0; #10;
    s = 1; r = 1; #10;
    s = 0; r = 0; #10;
    $finish;
end

endmodule

