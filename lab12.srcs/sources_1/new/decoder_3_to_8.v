`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/17/2024 03:14:08 PM
// Design Name: 
// Module Name: decoder_3_to_8
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


module decoder_3to8(
  input wire Enable,
  input wire S2, S1, S0,
  output wire D0, D1, D2, D3, D4, D5, D6, D7
);

  and(D7, Enable, ~S2, ~S1, ~S0);
  and(D6, Enable, ~S2, ~S1, S0);
  and(D5, Enable, ~S2, S1, ~S0);
  and(D4, Enable, ~S2, S1, S0); 
  and(D3, Enable, S2, ~S1, ~S0);
  and(D2, Enable, S2, ~S1, S0);
  and(D1, Enable, S2, S1, ~S0);
  and(D0, Enable, S2, S1, S0);

endmodule
