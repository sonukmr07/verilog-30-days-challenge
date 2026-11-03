`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 10:22:34 PM
// Design Name: 
// Module Name: traffic_light_timer
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


module traffic_light_timer(
    input clk,
    input reset,
    output reg red,
    output reg yellow,
    output reg green
);

reg [1:0] state;
reg [1:0] count;

always @(posedge clk or posedge reset)
begin
    if (reset)
    begin
        state <= 0;
        count <= 0;
    end
    else
    begin
        if (count == 2)
        begin
            count <= 0;
            state <= state + 1;

            if (state == 2)
                state <= 0;
        end
        else
            count <= count + 1;
    end
end

always @(*)
begin
    red = 0;
    yellow = 0;
    green = 0;

    if (state == 0)
        red = 1;
    else if (state == 1)
        yellow = 1;
    else if (state == 2)
        green = 1;
end

endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/03/2026 10:26:18 PM
// Design Name: 
// Module Name: traffic_light_timer_tb
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


module traffic_light_timer_tb;

reg clk, reset;
wire red, yellow, green;

traffic_light_timer uut(clk, reset, red, yellow, green);

always #5 clk = ~clk;

initial
begin
    clk = 0;
    reset = 1;
    #10 reset = 0;
    #150 $finish;
end

endmodule
