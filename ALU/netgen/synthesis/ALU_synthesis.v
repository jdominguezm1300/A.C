////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20160913
//  \   \         Application: netgen
//  /   /         Filename: ALU_synthesis.v
// /___/   /\     Timestamp: Tue Sep  4 04:16:45 2018
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ALU.ngc ALU_synthesis.v 
// Device	: xc6slx4-2-csg225
// Input file	: ALU.ngc
// Output file	: /home/ise/Documents/ALU/netgen/synthesis/ALU_synthesis.v
// # of Modules	: 1
// Design Name	: ALU
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ALU (
  BINVERT, CN, A, B, S
);
  input BINVERT;
  output CN;
  input [3 : 0] A;
  input [3 : 0] B;
  output [3 : 0] S;
  wire A_0_IBUF_0;
  wire A_1_IBUF_1;
  wire A_2_IBUF_2;
  wire A_3_IBUF_3;
  wire B_0_IBUF_4;
  wire B_1_IBUF_5;
  wire B_2_IBUF_6;
  wire B_3_IBUF_7;
  wire BINVERT_IBUF_8;
  wire CN_OBUF_10;
  wire S_1_OBUF_11;
  wire S_0_OBUF_12;
  wire S_2_OBUF_13;
  wire S_3_OBUF_14;
  wire [2 : 2] C;
  LUT3 #(
    .INIT ( 8'h96 ))
  \Mxor_S<0>_xo<0>1  (
    .I0(A_0_IBUF_0),
    .I1(B_0_IBUF_4),
    .I2(BINVERT_IBUF_8),
    .O(S_0_OBUF_12)
  );
  LUT5 #(
    .INIT ( 32'h2FF80820 ))
  \C<2>1  (
    .I0(A_0_IBUF_0),
    .I1(B_0_IBUF_4),
    .I2(BINVERT_IBUF_8),
    .I3(B_1_IBUF_5),
    .I4(A_1_IBUF_1),
    .O(C[2])
  );
  LUT5 #(
    .INIT ( 32'h99699666 ))
  \Mxor_S<1>_xo<0>1  (
    .I0(A_1_IBUF_1),
    .I1(B_1_IBUF_5),
    .I2(A_0_IBUF_0),
    .I3(B_0_IBUF_4),
    .I4(BINVERT_IBUF_8),
    .O(S_1_OBUF_11)
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \Mxor_S<2>_xo<0>1  (
    .I0(A_2_IBUF_2),
    .I1(B_2_IBUF_6),
    .I2(BINVERT_IBUF_8),
    .I3(C[2]),
    .O(S_2_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'h80A8FEEAEAFEA880 ))
  CN1 (
    .I0(A_3_IBUF_3),
    .I1(A_2_IBUF_2),
    .I2(C[2]),
    .I3(B_2_IBUF_6),
    .I4(BINVERT_IBUF_8),
    .I5(B_3_IBUF_7),
    .O(CN_OBUF_10)
  );
  IBUF   A_3_IBUF (
    .I(A[3]),
    .O(A_3_IBUF_3)
  );
  IBUF   A_2_IBUF (
    .I(A[2]),
    .O(A_2_IBUF_2)
  );
  IBUF   A_1_IBUF (
    .I(A[1]),
    .O(A_1_IBUF_1)
  );
  IBUF   A_0_IBUF (
    .I(A[0]),
    .O(A_0_IBUF_0)
  );
  IBUF   B_3_IBUF (
    .I(B[3]),
    .O(B_3_IBUF_7)
  );
  IBUF   B_2_IBUF (
    .I(B[2]),
    .O(B_2_IBUF_6)
  );
  IBUF   B_1_IBUF (
    .I(B[1]),
    .O(B_1_IBUF_5)
  );
  IBUF   B_0_IBUF (
    .I(B[0]),
    .O(B_0_IBUF_4)
  );
  IBUF   BINVERT_IBUF (
    .I(BINVERT),
    .O(BINVERT_IBUF_8)
  );
  OBUF   S_3_OBUF (
    .I(S_3_OBUF_14),
    .O(S[3])
  );
  OBUF   S_2_OBUF (
    .I(S_2_OBUF_13),
    .O(S[2])
  );
  OBUF   S_1_OBUF (
    .I(S_1_OBUF_11),
    .O(S[1])
  );
  OBUF   S_0_OBUF (
    .I(S_0_OBUF_12),
    .O(S[0])
  );
  OBUF   CN_OBUF (
    .I(CN_OBUF_10),
    .O(CN)
  );
  LUT6 #(
    .INIT ( 64'h6999999669666696 ))
  \Mxor_S<3>_xo<0>1  (
    .I0(A_3_IBUF_3),
    .I1(B_3_IBUF_7),
    .I2(BINVERT_IBUF_8),
    .I3(A_2_IBUF_2),
    .I4(C[2]),
    .I5(B_2_IBUF_6),
    .O(S_3_OBUF_14)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

