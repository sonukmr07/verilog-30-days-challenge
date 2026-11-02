`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2026 10:15:19 PM
// Design Name: 
// Module Name: traffic_light
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

module traffic_light(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

reg [1:0] state, next_state;

parameter RED = 2'b00;
parameter YELLOW = 2'b01;
parameter GREEN = 2'b10;

always @(posedge clk or posedge reset)
begin
    if (reset)
        state <= RED;
    else
        state <= next_state;
end

always @(*)
begin
    red = 0;
    yellow = 0;
    green = 0;

    if (state == RED)
    begin
        red = 1;
        next_state = YELLOW;
    end
    else if (state == YELLOW)
    begin
        yellow = 1;
        next_state = GREEN;
    end
    else if (state == GREEN)
    begin
        green = 1;
        next_state = RED;
    end
    else
    begin
        red = 1;
        next_state = RED;
    end
end

endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/02/2026 10:22:34 PM
// Design Name: 
// Module Name: traffic_light_tb
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


module traffic_light_tb;

reg clk, reset;
wire red, yellow, green;

traffic_light uut(clk,reset,red,yellow,green);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100;
    $finish;
end

endmodule
