`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 11:18:43
// Design Name: 
// Module Name: des
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

//tapping at 1,2,22,32
module des(
    input clk,
    input reset,   
    output reg [31:0] q
    );
    integer i;
    always @ (posedge clk) begin
    if(reset)
    q<=32'h1;
    else begin
    q[0]<=q[1]^q[0];
    q[1]<=q[2]^q[0];
    for(i=2;i<21;i=i+1)
    q[i]<=q[i+1];
    q[21]<=q[22]^q[0];
    for(i=22;i<31;i=i+1)
    q[i]<=q[i+1];
    q[31]<=q[0]^0;
    end
    end
endmodule
