`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2026 10:27:50 PM
// Design Name: 
// Module Name: down_counter
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

module down_counter(q, clk);
input clk;
output reg [3:0] q;

initial q = 4'b1111;

always @(posedge clk) begin
    q <= q - 1;
end

endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/01/2026 12:06:30 PM
// Design Name: 
// Module Name: down_counter_tb
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

module down_counter_tb;

reg clk;
wire [3:0] q;

down_counter a1(q, clk);

always #5 clk = ~clk;

initial begin
    clk = 0;

    #100;
    $finish;
end

endmodule
