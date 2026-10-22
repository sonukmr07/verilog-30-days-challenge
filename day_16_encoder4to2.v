`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2026 12:22:55 AM
// Design Name: 
// Module Name: encoder4to2
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


module encoder4to2(
    input I0, I1, I2, I3,
    output reg Y1, Y0
);

always @(*) begin
    if (I0)
        {Y1, Y0} = 2'b00;
    else if (I1)
        {Y1, Y0} = 2'b01;
    else if (I2)
        {Y1, Y0} = 2'b10;
    else if (I3)
        {Y1, Y0} = 2'b11;
    else
        {Y1, Y0} = 2'b00;
end

endmodule

#testbench
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2026 12:28:27 AM
// Design Name: 
// Module Name: encoder4to2_tb
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



module encoder4to2_tb;
reg I0,I1,I2,I3;
wire Y1,Y0;

encoder4to2 dut(I0,I1,I2,I3,Y1,Y0);

initial begin
    {I3,I2,I1,I0}=4'b0001;
    #10 {I3,I2,I1,I0}=4'b0010;
    #10 {I3,I2,I1,I0}=4'b0100;
    #10 {I3,I2,I1,I0}=4'b1000;
    #10 $finish;
end
endmodule
