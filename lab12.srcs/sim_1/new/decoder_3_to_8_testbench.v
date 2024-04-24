`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 03:33:11 PM
// Design Name: 
// Module Name: decoder_3_to_8_testbench
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


module decoder_3to8_testbench();
  reg Enable, S2, S1, S0;
  wire D7, D6, D5, D4, D3, D2, D1, D0;

  decoder_3to8 dut(Enable, S2, S1, S0, D7, D6, D5, D4, D3, D2, D1, D0);

  initial begin
        Enable=0;    S2=0;  S1=0;   S0=0;
    #1  Enable=0;    S2=0;  S1=0;   S0=1;
    #1  Enable=0;    S2=0;  S1=1;   S0=0;
    #1  Enable=0;    S2=0;  S1=1;   S0=1;
    #1  Enable=0;    S2=1;  S1=0;   S0=0;
    #1  Enable=0;    S2=1;  S1=0;   S0=1;
    #1  Enable=0;    S2=1;  S1=1;   S0=0;
    #1  Enable=0;    S2=1;  S1=1;   S0=1;
    #1  Enable=1;    S2=0;  S1=0;   S0=0;
    #1  Enable=1;    S2=0;  S1=0;   S0=1;
    #1  Enable=1;    S2=0;  S1=1;   S0=0;
    #1  Enable=1;    S2=0;  S1=1;   S0=1;
    #1  Enable=1;    S2=1;  S1=0;   S0=0;
    #1  Enable=1;    S2=1;  S1=0;   S0=1;
    #1  Enable=1;    S2=1;  S1=1;   S0=0;
    #1  Enable=1;    S2=1;  S1=1;   S0=1;
  end
endmodule