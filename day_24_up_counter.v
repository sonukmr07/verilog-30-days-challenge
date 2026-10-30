`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 10:19:16 PM
// Design Name: 
// Module Name: up_counter
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



module up_counter(q, clk);
input clk;
output reg [3:0] q;

initial q = 0;

always @(posedge clk) begin
    q <= q + 1;
end

endmodule

#test bench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2026 10:21:15 PM
// Design Name: 
// Module Name: up_counter_tb
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



module up_counter_tb;
reg clk;
wire [3:0] q;

up_counter a1(q, clk);

always #5 clk = ~clk;

initial begin
    clk = 0;
    #160;
    $finish;
end

endmodule

