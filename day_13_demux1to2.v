`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 06:08:30 PM
// Design Name: 
// Module Name: demux2to1
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


//module demux2to1(i0,i1,s,d);
//input s,d;
//output reg i0,i1;
//always @(*)begin
   // if(s==1'b0)
     //   i0=1;
  //  else
       // i1=1;
//end
//endmodule// 
module demux1to2(y0, y1, d, s);

input d, s;
output reg y0, y1;

always @(*) begin
    if (s == 1'b0) begin
        y0 = d;
        y1 = 1'b0;
    end
    else begin
        y0 = 1'b0;
        y1 = d;
    end
end

endmodule

#testbench

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2026 06:29:41 PM
// Design Name: 
// Module Name: demux1to2_tb
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


module demux1to2_tb();
reg d,s;
wire y0,y1;
demux1to2 a1 (y0,y1,d,s);
initial
begin
d=0;s=0;#10;
d=0;s=1;#10;
d=1;s=0;#10;
d=1;s=1;#10;
$finish;
end
endmodule
