`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.05.2026 19:57:38
// Design Name: 
// Module Name: full_subtractor_tb
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

module full_subtractor_tb;

// Inputs
reg A;
reg B;
reg Bin;

// Outputs
wire D;
wire Bout;

// Instantiate the Full Subtractor
full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .Bout(Bout)
);

initial begin

    // Display Output
    $display("A B Bin | D Bout");
    $display("----------------");

    // Test Case 1
    A = 0; B = 0; Bin = 0;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 2
    A = 0; B = 0; Bin = 1;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 3
    A = 0; B = 1; Bin = 0;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 4
    A = 0; B = 1; Bin = 1;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 5
    A = 1; B = 0; Bin = 0;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 6
    A = 1; B = 0; Bin = 1;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 7
    A = 1; B = 1; Bin = 0;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    // Test Case 8
    A = 1; B = 1; Bin = 1;
    #10;
    $display("%b %b  %b  | %b   %b", A, B, Bin, D, Bout);

    $finish;

end

endmodule
