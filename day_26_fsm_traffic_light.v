# Day 26 – FSM Design for Smart Traffic Light Controller

## Objective
To understand the Finite State Machine (FSM) and design a basic Smart Traffic Light Controller using three states.

## What is FSM?
A Finite State Machine (FSM) is a sequential logic circuit that changes its state based on clock pulses and defined transition conditions.

## Project Overview
In this project, we use three states:

- RED
- YELLOW
- GREEN

The traffic light follows this sequence:

**RED → YELLOW → GREEN → RED**

## State Encoding

| State | Binary Code |
|---|---|
| RED | 00 |
| YELLOW | 01 |
| GREEN | 10 |

## State Transition Table

| Present State | Next State |
|---|---|
| RED | YELLOW |
| YELLOW | GREEN |
| GREEN | RED |

## Output Table

| State | Red | Yellow | Green |
|---|---:|---:|---:|
| RED | 1 | 0 | 0 |
| YELLOW | 0 | 1 | 0 |
| GREEN | 0 | 0 | 1 |

## FSM Type
**Moore FSM:** The outputs depend only on the current state.

## What I Learned
- Basics of Finite State Machines.
- Difference between present state and next state.
- State encoding using binary values.
- State transition table and output table.
- Basic design of a traffic light controller.

## Tools
- Verilog HDL
- Xilinx Vivado

## Next Step
In Day 27, I will implement the FSM design using Verilog HDL and simulate it in Vivado.

**Note:** Day 26 focuses on FSM design and planning. Verilog implementation will be done in the next step.


fsm diagram:
# Day 26 – FSM State Transition Diagram

## Smart Traffic Light Controller

```text
              +-------------+
              |  RED (00)   |
              +-------------+
                     |
                     v
              +-------------+
              | YELLOW (01) |
              +-------------+
                     |
                     v
              +-------------+
              | GREEN (10)  |
              +-------------+
                     |
                     |
                     +-----------> RED (00)


State Sequence:
RED → YELLOW → GREEN → RED

State Encoding:
RED    = 00
YELLOW = 01
GREEN  = 10

FSM Type: Moore FSM



