`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:50:10 PM
// Design Name: 
// Module Name: jk_flip_flop
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



module jk_flip_flop(q, clk, j, k);
input clk, j, k;
output reg q;

always @(posedge clk) begin
    if (j == 0 && k == 0)
        q <= q;
    else if (j == 0 && k == 1)
        q <= 0;
    else if (j == 1 && k == 0)
        q <= 1;
    else
        q <= ~q;
end

endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/27/2026 11:52:13 PM
// Design Name: 
// Module Name: jk_flip_flop_tb
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



module jk_flip_flop_tb;
reg clk, j, k;
wire q;

jk_flip_flop a1(q, clk, j, k);

always #5 clk = ~clk;

initial begin
    clk = 0;
    j = 0; k = 0; #10;
    j = 0; k = 1; #10;
    j = 1; k = 0; #10;
    j = 1; k = 1; #10;
    $finish;
end

endmodule
