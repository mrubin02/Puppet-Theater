// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Wed Nov 16 18:34:48 2022
// Host        : P1-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/dte12/Documents/ECE350/ece350project/project.gen/sources_1/ip/ila_reg/ila_reg_stub.v
// Design      : ila_reg
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.1" *)
module ila_reg(clk, probe0, probe1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[0:0],probe1[31:0]" */;
  input clk;
  input [0:0]probe0;
  input [31:0]probe1;
endmodule
