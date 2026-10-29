`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 01:34:53 AM
// Design Name: 
// Module Name: t_flip_flop_tb
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



module t_flip_flop_tb;
reg clk, t;
wire q;

t_flip_flop a1(q, clk, t);

always #5 clk = ~clk;

initial begin
    clk = 0;
    t = 1; #10;
    t = 0; #20;
    t = 1; #10;
    t = 0; #20;
    $finish;
end

endmodule

# test bench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2026 01:34:53 AM
// Design Name: 
// Module Name: t_flip_flop_tb
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



module t_flip_flop_tb;
reg clk, t;
wire q;

t_flip_flop a1(q, clk, t);

always #5 clk = ~clk;

initial begin
    clk = 0;
    t = 1; #10;
    t = 0; #20;
    t = 1; #10;
    t = 0; #20;
    $finish;
end

endmodule

