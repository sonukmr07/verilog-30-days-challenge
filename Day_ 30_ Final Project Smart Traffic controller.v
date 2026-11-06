# Day 30/30 – Final Project: Smart Traffic Light Controller

## Project Overview
This is the final project of my 30 Days of Verilog HDL Challenge.

I designed a Smart Traffic Light Controller using Verilog HDL and a Moore Finite State Machine (FSM).

## Project Objective
To design a traffic light controller that automatically changes traffic signals after a fixed number of clock cycles.

## State Sequence
RED → YELLOW → GREEN → RED

## State Encoding

| Traffic Light | State |
|---|---|
| RED | 00 |
| YELLOW | 01 |
| GREEN | 10 |

## Features
- Moore FSM-based design
- Three traffic light states
- 2-bit timer counter
- State transition after 3 clock cycles
- Asynchronous reset
- Testbench-based simulation

## Tools Used
- Verilog HDL
- Xilinx Vivado
- Behavioral Simulation

## Project Files
- `traffic_light_timer.v` – Main Verilog design
- `traffic_light_timer_tb.v` – Testbench
- `waveform.png` – Simulation waveform

## Expected Output

| State | Red | Yellow | Green |
|---|---|---|---|
| RED | 1 | 0 | 0 |
| YELLOW | 0 | 1 | 0 |
| GREEN | 0 | 0 | 1 |

Each traffic light remains ON for 3 clock cycles.

## What I Learned
- FSM design and implementation
- Moore FSM architecture
- Timer and counter integration
- Clock and reset functionality
- Testbench development
- Simulation and verification using Vivado

## Conclusion
Successfully completed my 30 Days of Verilog Challenge.

This journey improved my understanding of Digital Logic Design and RTL Design using Verilog HDL.

**30 Days Completed – Learning Continues!**


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
