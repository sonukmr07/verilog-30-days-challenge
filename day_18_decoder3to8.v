`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2026 11:51:39 PM
// Design Name: 
// Module Name: decoder3to8
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


module decoder3to8(y,a,b,c);
input a,b,c;
output reg [7:0]y;
always @(*)begin
  y = 8'b00000000;
    if ({a,b,c} == 3'b000) 
        y[0] = 1;
    else if ({a,b,c} == 3'b001) 
        y[1] = 1;
    else if ({a,b,c} == 3'b010) 
        y[2] = 1;
    else if ({a,b,c} == 3'b011) 
        y[3] = 1;
    else if ({a,b,c} == 3'b100) 
        y[4] = 1;
    else if ({a,b,c} == 3'b101) 
        y[5] = 1;
    else if ({a,b,c} == 3'b110) 
        y[6] = 1;
    else
        y[7] = 1;
end
endmodule

# TEST BENCH
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2026 12:07:33 AM
// Design Name: 
// Module Name: decoder8to3_tb
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


module decoder8to3_tb();
reg a,b,c;
wire[7:0] y;
decoder3to8 a1 (y,a,b,c);
initial
begin
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;
$finish;
end
endmodule
