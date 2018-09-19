--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: ALU_translate.vhd
-- /___/   /\     Timestamp: Wed Sep 19 11:15:57 2018
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm ALU -w -dir netgen/translate -ofmt vhdl -sim ALU.ngd ALU_translate.vhd 
-- Device	: 7a100tcsg324-2
-- Input file	: ALU.ngd
-- Output file	: C:\Documents and Settings\Laboratorio\Escritorio\alu\ALU\netgen\translate\ALU_translate.vhd
-- # of Entities	: 1
-- Design Name	: ALU
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity ALU is
  port (
    A : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    B : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ALUOP : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    RESULT : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    FLAG : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end ALU;

architecture Structure of ALU is
  signal A_0_IBUF_0 : STD_LOGIC; 
  signal A_1_IBUF_1 : STD_LOGIC; 
  signal A_2_IBUF_2 : STD_LOGIC; 
  signal A_3_IBUF_3 : STD_LOGIC; 
  signal B_0_IBUF_4 : STD_LOGIC; 
  signal B_1_IBUF_5 : STD_LOGIC; 
  signal B_2_IBUF_6 : STD_LOGIC; 
  signal B_3_IBUF_7 : STD_LOGIC; 
  signal ALUOP_3_IBUF_8 : STD_LOGIC; 
  signal ALUOP_2_IBUF_9 : STD_LOGIC; 
  signal ALUOP_1_IBUF_10 : STD_LOGIC; 
  signal ALUOP_0_IBUF_11 : STD_LOGIC; 
  signal A_0_B_0_AND_2_o : STD_LOGIC; 
  signal A_1_B_1_AND_5_o : STD_LOGIC; 
  signal A_2_B_2_AND_10_o : STD_LOGIC; 
  signal ALUOP_1_PWR_5_o_Mux_31_o : STD_LOGIC; 
  signal RESULT_0_OBUF_16 : STD_LOGIC; 
  signal RESULT_1_OBUF_17 : STD_LOGIC; 
  signal RESULT_2_OBUF_18 : STD_LOGIC; 
  signal FLAG_2_OBUF_19 : STD_LOGIC; 
  signal A_0_ALUOP_2_OR_2_o : STD_LOGIC; 
  signal G_0_21 : STD_LOGIC; 
  signal A_0_B_0_XOR_5_o : STD_LOGIC; 
  signal A_1_ALUOP_2_OR_8_o : STD_LOGIC; 
  signal G_1_24 : STD_LOGIC; 
  signal A_1_B_1_XOR_13_o : STD_LOGIC; 
  signal A_2_ALUOP_2_OR_15_o : STD_LOGIC; 
  signal G_2_27 : STD_LOGIC; 
  signal A_2_B_2_XOR_21_o : STD_LOGIC; 
  signal A_3_ALUOP_2_OR_23_o : STD_LOGIC; 
  signal C_3_33 : STD_LOGIC; 
  signal C_2_34 : STD_LOGIC; 
  signal C_1_35 : STD_LOGIC; 
  signal P_2_36 : STD_LOGIC; 
  signal P_1_37 : STD_LOGIC; 
  signal P_0_38 : STD_LOGIC; 
  signal FLAG_0_OBUF_39 : STD_LOGIC; 
  signal FLAG_3_OBUF_40 : STD_LOGIC; 
  signal FLAG_1_OBUF_41 : STD_LOGIC; 
  signal A_3_ALUOP_2_OR_23_o1 : STD_LOGIC; 
  signal A_1_ALUOP_2_OR_8_o1 : STD_LOGIC; 
  signal Mmux_RES_1_1 : STD_LOGIC; 
  signal Mmux_RES_2_1 : STD_LOGIC; 
  signal Mmux_FLAG_2_1 : STD_LOGIC; 
  signal N4 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal MUXB : STD_LOGIC_VECTOR ( 3 downto 1 ); 
begin
  G_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_0_B_0_AND_2_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => G_0_21,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  G_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_1_B_1_AND_5_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => G_1_24,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  G_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_2_B_2_AND_10_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => G_2_27,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  C_3 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_2_ALUOP_2_OR_15_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => C_3_33,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  C_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_1_ALUOP_2_OR_8_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => C_2_34,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  C_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_0_ALUOP_2_OR_2_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => C_1_35,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  P_2 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_2_B_2_XOR_21_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => P_2_36,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  P_1 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_1_B_1_XOR_13_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => P_1_37,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  P_0 : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      I => A_0_B_0_XOR_5_o,
      CLK => ALUOP_1_PWR_5_o_Mux_31_o,
      O => P_0_38,
      GE => VCC,
      SET => GND,
      RST => GND
    );
  ALUOP_1_PWR_5_o_Mux_31_o_1_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => ALUOP_1_IBUF_10,
      ADR1 => ALUOP_0_IBUF_11,
      O => ALUOP_1_PWR_5_o_Mux_31_o
    );
  FLAG_1_1 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => FLAG_2_OBUF_19,
      ADR1 => RESULT_0_OBUF_16,
      ADR2 => RESULT_1_OBUF_17,
      ADR3 => RESULT_2_OBUF_18,
      O => FLAG_1_OBUF_41
    );
  Mxor_MUXB_3_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ALUOP_2_IBUF_9,
      ADR1 => B_3_IBUF_7,
      O => MUXB(3)
    );
  Mxor_MUXB_2_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ALUOP_2_IBUF_9,
      ADR1 => B_2_IBUF_6,
      O => MUXB(2)
    );
  Mxor_MUXB_1_xo_0_1 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => ALUOP_2_IBUF_9,
      ADR1 => B_1_IBUF_5,
      O => MUXB(1)
    );
  A_0_ALUOP_2_OR_2_o1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => B_0_IBUF_4,
      ADR1 => A_0_IBUF_0,
      ADR2 => ALUOP_2_IBUF_9,
      O => A_0_ALUOP_2_OR_2_o
    );
  A_3_ALUOP_2_OR_23_o11 : X_LUT6
    generic map(
      INIT => X"FDD5FDD5FD80A880"
    )
    port map (
      ADR0 => ALUOP_1_PWR_5_o_Mux_31_o,
      ADR1 => A_1_IBUF_1,
      ADR2 => MUXB(1),
      ADR3 => A_1_ALUOP_2_OR_8_o1,
      ADR4 => P_1_37,
      ADR5 => G_1_24,
      O => A_3_ALUOP_2_OR_23_o1
    );
  A_0_B_0_AND_2_o1 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => A_0_IBUF_0,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_0_IBUF_4,
      O => A_0_B_0_AND_2_o
    );
  Mxor_A_0_B_0_XOR_5_o_xo_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => A_0_IBUF_0,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_0_IBUF_4,
      O => A_0_B_0_XOR_5_o
    );
  A_1_ALUOP_2_OR_8_o11 : X_LUT6
    generic map(
      INIT => X"DFD5DFD5DF808A80"
    )
    port map (
      ADR0 => ALUOP_1_PWR_5_o_Mux_31_o,
      ADR1 => A_0_IBUF_0,
      ADR2 => B_0_IBUF_4,
      ADR3 => ALUOP_2_IBUF_9,
      ADR4 => P_0_38,
      ADR5 => G_0_21,
      O => A_1_ALUOP_2_OR_8_o1
    );
  Mmux_RES_1_12 : X_LUT6
    generic map(
      INIT => X"E8BEBEE8481E1E48"
    )
    port map (
      ADR0 => ALUOP_0_IBUF_11,
      ADR1 => MUXB(1),
      ADR2 => ALUOP_1_IBUF_10,
      ADR3 => A_1_IBUF_1,
      ADR4 => ALUOP_3_IBUF_8,
      ADR5 => Mmux_RES_1_1,
      O => RESULT_1_OBUF_17
    );
  Mmux_RES_2_12 : X_LUT6
    generic map(
      INIT => X"E8BEBEE8481E1E48"
    )
    port map (
      ADR0 => ALUOP_0_IBUF_11,
      ADR1 => MUXB(2),
      ADR2 => ALUOP_1_IBUF_10,
      ADR3 => A_2_IBUF_2,
      ADR4 => ALUOP_3_IBUF_8,
      ADR5 => Mmux_RES_2_1,
      O => RESULT_2_OBUF_18
    );
  Mmux_FLAG_2_12 : X_LUT6
    generic map(
      INIT => X"EABEBEEA401E1E40"
    )
    port map (
      ADR0 => ALUOP_0_IBUF_11,
      ADR1 => MUXB(3),
      ADR2 => ALUOP_1_IBUF_10,
      ADR3 => A_3_IBUF_3,
      ADR4 => ALUOP_3_IBUF_8,
      ADR5 => Mmux_FLAG_2_1,
      O => FLAG_2_OBUF_19
    );
  A_3_IBUF : X_BUF
    port map (
      I => A(3),
      O => A_3_IBUF_3
    );
  A_2_IBUF : X_BUF
    port map (
      I => A(2),
      O => A_2_IBUF_2
    );
  A_1_IBUF : X_BUF
    port map (
      I => A(1),
      O => A_1_IBUF_1
    );
  A_0_IBUF : X_BUF
    port map (
      I => A(0),
      O => A_0_IBUF_0
    );
  B_3_IBUF : X_BUF
    port map (
      I => B(3),
      O => B_3_IBUF_7
    );
  B_2_IBUF : X_BUF
    port map (
      I => B(2),
      O => B_2_IBUF_6
    );
  B_1_IBUF : X_BUF
    port map (
      I => B(1),
      O => B_1_IBUF_5
    );
  B_0_IBUF : X_BUF
    port map (
      I => B(0),
      O => B_0_IBUF_4
    );
  ALUOP_3_IBUF : X_BUF
    port map (
      I => ALUOP(3),
      O => ALUOP_3_IBUF_8
    );
  ALUOP_2_IBUF : X_BUF
    port map (
      I => ALUOP(2),
      O => ALUOP_2_IBUF_9
    );
  ALUOP_1_IBUF : X_BUF
    port map (
      I => ALUOP(1),
      O => ALUOP_1_IBUF_10
    );
  ALUOP_0_IBUF : X_BUF
    port map (
      I => ALUOP(0),
      O => ALUOP_0_IBUF_11
    );
  A_1_ALUOP_2_OR_8_o2 : X_LUT5
    generic map(
      INIT => X"AAAAF0CC"
    )
    port map (
      ADR0 => N8,
      ADR1 => N7,
      ADR2 => N9,
      ADR3 => P_0_38,
      ADR4 => G_0_21,
      O => A_1_ALUOP_2_OR_8_o
    );
  A_2_ALUOP_2_OR_15_o1 : X_LUT6
    generic map(
      INIT => X"BEBE2828BE28BE28"
    )
    port map (
      ADR0 => A_2_IBUF_2,
      ADR1 => B_2_IBUF_6,
      ADR2 => ALUOP_2_IBUF_9,
      ADR3 => N4,
      ADR4 => N5,
      ADR5 => A_1_ALUOP_2_OR_8_o1,
      O => A_2_ALUOP_2_OR_15_o
    );
  A_3_ALUOP_2_OR_23_o11_SW1 : X_LUT6
    generic map(
      INIT => X"FFF7FFF7FFF78880"
    )
    port map (
      ADR0 => ALUOP_1_IBUF_10,
      ADR1 => ALUOP_0_IBUF_11,
      ADR2 => A_1_IBUF_1,
      ADR3 => MUXB(1),
      ADR4 => P_1_37,
      ADR5 => G_1_24,
      O => N5
    );
  A_3_ALUOP_2_OR_23_o11_SW0 : X_LUT6
    generic map(
      INIT => X"60FFFFFF60000000"
    )
    port map (
      ADR0 => B_1_IBUF_5,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => A_1_IBUF_1,
      ADR3 => ALUOP_0_IBUF_11,
      ADR4 => ALUOP_1_IBUF_10,
      ADR5 => G_1_24,
      O => N4
    );
  Mmux_RES_0_1 : X_LUT6
    generic map(
      INIT => X"3D296D8679927C68"
    )
    port map (
      ADR0 => ALUOP_1_IBUF_10,
      ADR1 => A_0_IBUF_0,
      ADR2 => B_0_IBUF_4,
      ADR3 => ALUOP_0_IBUF_11,
      ADR4 => ALUOP_3_IBUF_8,
      ADR5 => ALUOP_2_IBUF_9,
      O => RESULT_0_OBUF_16
    );
  Mmux_FLAG_2_11 : X_LUT6
    generic map(
      INIT => X"A659956AAAAAAAAA"
    )
    port map (
      ADR0 => MUXB(3),
      ADR1 => ALUOP_0_IBUF_11,
      ADR2 => A_2_ALUOP_2_OR_15_o,
      ADR3 => A_3_IBUF_3,
      ADR4 => C_3_33,
      ADR5 => ALUOP_1_IBUF_10,
      O => Mmux_FLAG_2_1
    );
  A_1_ALUOP_2_OR_8_o11_SW0 : X_LUT6
    generic map(
      INIT => X"8AFFFF8000808A00"
    )
    port map (
      ADR0 => ALUOP_1_PWR_5_o_Mux_31_o,
      ADR1 => A_0_IBUF_0,
      ADR2 => B_0_IBUF_4,
      ADR3 => ALUOP_2_IBUF_9,
      ADR4 => B_1_IBUF_5,
      ADR5 => A_1_IBUF_1,
      O => N7
    );
  A_1_ALUOP_2_OR_8_o11_SW1 : X_LUT6
    generic map(
      INIT => X"BAECBBEE2A8CBBEE"
    )
    port map (
      ADR0 => A_1_IBUF_1,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_0_IBUF_4,
      ADR3 => B_1_IBUF_5,
      ADR4 => ALUOP_1_PWR_5_o_Mux_31_o,
      ADR5 => A_0_IBUF_0,
      O => N8
    );
  A_1_ALUOP_2_OR_8_o11_SW2 : X_LUT6
    generic map(
      INIT => X"F6E2E2E260E2E2E2"
    )
    port map (
      ADR0 => ALUOP_2_IBUF_9,
      ADR1 => B_1_IBUF_5,
      ADR2 => A_1_IBUF_1,
      ADR3 => ALUOP_1_PWR_5_o_Mux_31_o,
      ADR4 => B_0_IBUF_4,
      ADR5 => A_0_IBUF_0,
      O => N9
    );
  A_1_B_1_AND_5_o1 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => A_1_IBUF_1,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_1_IBUF_5,
      O => A_1_B_1_AND_5_o
    );
  A_2_B_2_AND_10_o1 : X_LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      ADR0 => A_2_IBUF_2,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_2_IBUF_6,
      O => A_2_B_2_AND_10_o
    );
  Mxor_A_2_B_2_XOR_21_o_xo_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => A_2_IBUF_2,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_2_IBUF_6,
      O => A_2_B_2_XOR_21_o
    );
  Mxor_A_1_B_1_XOR_13_o_xo_0_1 : X_LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      ADR0 => A_1_IBUF_1,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_1_IBUF_5,
      O => A_1_B_1_XOR_13_o
    );
  Mmux_FLAG_0_11 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => ALUOP_1_IBUF_10,
      ADR1 => ALUOP_0_IBUF_11,
      ADR2 => A_3_ALUOP_2_OR_23_o,
      O => FLAG_0_OBUF_39
    );
  Mmux_FLAG_3_11 : X_LUT6
    generic map(
      INIT => X"0808088008808080"
    )
    port map (
      ADR0 => ALUOP_1_IBUF_10,
      ADR1 => ALUOP_0_IBUF_11,
      ADR2 => A_3_ALUOP_2_OR_23_o,
      ADR3 => A_3_ALUOP_2_OR_23_o1,
      ADR4 => MUXB(2),
      ADR5 => A_2_IBUF_2,
      O => FLAG_3_OBUF_40
    );
  Mmux_RES_1_11 : X_LUT5
    generic map(
      INIT => X"5666A666"
    )
    port map (
      ADR0 => A_1_B_1_XOR_13_o,
      ADR1 => C_1_35,
      ADR2 => ALUOP_1_IBUF_10,
      ADR3 => ALUOP_0_IBUF_11,
      ADR4 => A_0_ALUOP_2_OR_2_o,
      O => Mmux_RES_1_1
    );
  Mmux_RES_2_11 : X_LUT5
    generic map(
      INIT => X"5666A666"
    )
    port map (
      ADR0 => A_2_B_2_XOR_21_o,
      ADR1 => C_2_34,
      ADR2 => ALUOP_1_IBUF_10,
      ADR3 => ALUOP_0_IBUF_11,
      ADR4 => A_1_ALUOP_2_OR_8_o,
      O => Mmux_RES_2_1
    );
  A_3_ALUOP_2_OR_23_o3 : X_MUX2
    port map (
      IA => N11,
      IB => N12,
      SEL => ALUOP_1_PWR_5_o_Mux_31_o,
      O => A_3_ALUOP_2_OR_23_o
    );
  A_3_ALUOP_2_OR_23_o3_F : X_LUT6
    generic map(
      INIT => X"BEBEBE28BE28BE28"
    )
    port map (
      ADR0 => A_3_IBUF_3,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_3_IBUF_7,
      ADR3 => G_2_27,
      ADR4 => A_3_ALUOP_2_OR_23_o1,
      ADR5 => P_2_36,
      O => N11
    );
  A_3_ALUOP_2_OR_23_o3_G : X_LUT6
    generic map(
      INIT => X"BEBEBE28BE282828"
    )
    port map (
      ADR0 => A_3_IBUF_3,
      ADR1 => ALUOP_2_IBUF_9,
      ADR2 => B_3_IBUF_7,
      ADR3 => MUXB(2),
      ADR4 => A_2_IBUF_2,
      ADR5 => A_3_ALUOP_2_OR_23_o1,
      O => N12
    );
  RESULT_3_OBUF : X_OBUF
    port map (
      I => FLAG_2_OBUF_19,
      O => RESULT(3)
    );
  RESULT_2_OBUF : X_OBUF
    port map (
      I => RESULT_2_OBUF_18,
      O => RESULT(2)
    );
  RESULT_1_OBUF : X_OBUF
    port map (
      I => RESULT_1_OBUF_17,
      O => RESULT(1)
    );
  RESULT_0_OBUF : X_OBUF
    port map (
      I => RESULT_0_OBUF_16,
      O => RESULT(0)
    );
  FLAG_3_OBUF : X_OBUF
    port map (
      I => FLAG_3_OBUF_40,
      O => FLAG(3)
    );
  FLAG_2_OBUF : X_OBUF
    port map (
      I => FLAG_2_OBUF_19,
      O => FLAG(2)
    );
  FLAG_1_OBUF : X_OBUF
    port map (
      I => FLAG_1_OBUF_41,
      O => FLAG(1)
    );
  FLAG_0_OBUF : X_OBUF
    port map (
      I => FLAG_0_OBUF_39,
      O => FLAG(0)
    );
  NlwBlock_ALU_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_ALU_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

