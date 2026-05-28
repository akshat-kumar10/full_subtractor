`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 19:56:46
// Design Name: 
// Module Name: full_subtractor
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


`timescale 1ns / 1ps

module full_subtractor(
    input A,
    input B,
    input Bin,
    output D,
    output Bout
);

wire x1;
wire nA;
wire w1, w2, w3;

// Difference
xor (x1, A, B);
xor (D, x1, Bin);

// Borrow Output
not (nA, A);

and (w1, nA, B);
and (w2, nA, Bin);
and (w3, B, Bin);

or (Bout, w1, w2, w3);

endmodule
