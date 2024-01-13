`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.01.2024 11:33:43
// Design Name: 
// Module Name: tb
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


module tb(

    );
    reg clk;
    reg reset;
    wire [31:0] q;
    always #5 clk=~clk;
    des dut(.clk(clk),.reset(reset),.q(q));
    initial begin
    $dumpvars("dump.vcd");
    $dumpvars;
    $display("time=%0t reset=%b q=%b",$time,reset,q);
    clk<=0;
    reset<=1;
    #5 reset<=0;
    #100 $finish;
    end
endmodule
