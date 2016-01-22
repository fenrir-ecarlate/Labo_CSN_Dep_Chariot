-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "01/21/2016 11:40:32"

-- 
-- Device: Altera 5M570ZF256C5 Package FBGA256
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	maxv_top IS
    PORT (
	Clk_Gen_i : IN std_logic;
	Clk_Main_i : IN std_logic;
	Con_25p_io : INOUT std_logic_vector(25 DOWNTO 1);
	Con_80p_io : INOUT std_logic_vector(79 DOWNTO 2);
	Mezzanine_io : INOUT std_logic_vector(20 DOWNTO 5);
	Encoder_A_i : IN std_logic;
	Encoder_B_i : IN std_logic;
	nButton_i : IN std_logic_vector(8 DOWNTO 1);
	nReset_i : IN std_logic;
	Switch_i : IN std_logic_vector(7 DOWNTO 0);
	nLed_o : OUT std_logic_vector(7 DOWNTO 0);
	Led_RGB_o : OUT std_logic_vector(2 DOWNTO 0);
	nSeven_Seg_o : OUT std_logic_vector(7 DOWNTO 0)
	);
END maxv_top;

-- Design Ports Information
-- Clk_Gen_i	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_A_i	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Encoder_B_i	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[2]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[7]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[8]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk_Main_i	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nReset_i	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[1]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[7]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[3]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[6]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[5]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nButton_i[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[0]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[1]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[4]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[5]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Switch_i[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- nLed_o[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[1]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[5]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nLed_o[7]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[0]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[1]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Led_RGB_o[2]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[0]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[2]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[3]	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[5]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[6]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- nSeven_Seg_o[7]	=>  Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[1]	=>  Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[2]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[3]	=>  Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[5]	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[6]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[7]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[8]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[9]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[10]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[11]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[12]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[13]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[14]	=>  Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[15]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[16]	=>  Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[17]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[18]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[19]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[20]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[21]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[22]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[23]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[24]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_25p_io[25]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[2]	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[3]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[4]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[5]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[6]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[7]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[8]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[9]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[10]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[11]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[12]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[13]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[14]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[15]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[16]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[17]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[18]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[19]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[20]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[21]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[22]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[23]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[24]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[25]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[26]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[27]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[28]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[29]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[30]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[31]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[32]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[33]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[34]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[35]	=>  Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[36]	=>  Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[37]	=>  Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[38]	=>  Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[39]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[40]	=>  Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[41]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[42]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[43]	=>  Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[44]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[45]	=>  Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[46]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[47]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[48]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[49]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[50]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[51]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[52]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[53]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[54]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[55]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[56]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[57]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[58]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[59]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[60]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[61]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[62]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[63]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[64]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[65]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[66]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[67]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[68]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[69]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[70]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[71]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[72]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[73]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[74]	=>  Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[75]	=>  Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[76]	=>  Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[77]	=>  Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[78]	=>  Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Con_80p_io[79]	=>  Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[5]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[6]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[7]	=>  Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[8]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[9]	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[10]	=>  Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[12]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[13]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[14]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[15]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[16]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[17]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[18]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[19]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- Mezzanine_io[20]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF maxv_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk_Gen_i : std_logic;
SIGNAL ww_Clk_Main_i : std_logic;
SIGNAL ww_Encoder_A_i : std_logic;
SIGNAL ww_Encoder_B_i : std_logic;
SIGNAL ww_nButton_i : std_logic_vector(8 DOWNTO 1);
SIGNAL ww_nReset_i : std_logic;
SIGNAL ww_Switch_i : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_nLed_o : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Led_RGB_o : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_nSeven_Seg_o : std_logic_vector(7 DOWNTO 0);
SIGNAL \Con_80p_io[2]~4\ : std_logic;
SIGNAL \Con_80p_io[39]~41\ : std_logic;
SIGNAL \Con_80p_io[40]~42\ : std_logic;
SIGNAL \Clk_Main_i~combout\ : std_logic;
SIGNAL \nReset_i~combout\ : std_logic;
SIGNAL \U1|sel_vitesse_s[2]~_wirecell_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux4~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux9~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[0]~7\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[0]~7COUT1_55\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[1]~9\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[1]~9COUT1_57\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[2]~11\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[2]~11COUT1_59\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[3]~13\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux10~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux11~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux12~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux13~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[4]~15\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[4]~15COUT1_61\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[5]~17\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[5]~17COUT1_63\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[6]~19\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[6]~19COUT1_65\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[7]~21\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[7]~21COUT1_67\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[8]~23\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux5~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux6~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux7~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux8~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[9]~25\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[9]~25COUT1_69\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[10]~27\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[10]~27COUT1_71\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[11]~29\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[11]~29COUT1_73\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[12]~31\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[12]~31COUT1_75\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[13]~33\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux2~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux3~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[14]~35\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[14]~35COUT1_77\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[15]~37\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[15]~37COUT1_79\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux0~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Mux1~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[16]~1\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[16]~1COUT1_81\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[17]~3\ : std_logic;
SIGNAL \U1|div_clk_mod|cpt_now[17]~3COUT1_83\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~2_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~0_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~3_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~1_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~4_combout\ : std_logic;
SIGNAL \U1|div_clk_mod|Equal0~5_combout\ : std_logic;
SIGNAL \U1|start_s~regout\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[2]~20_combout\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[0]~1\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[0]~1COUT1_31\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[1]~3\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[1]~3COUT1_33\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[2]~5\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[2]~5COUT1_35\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[3]~7\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[3]~7COUT1_37\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[4]~9\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[5]~11\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[5]~11COUT1_39\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[6]~13\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[6]~13COUT1_41\ : std_logic;
SIGNAL \U1|cpt_pas|Equal0~1_combout\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[7]~15\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[7]~15COUT1_43\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[8]~17\ : std_logic;
SIGNAL \U1|cpt_pas|cpt_now[8]~17COUT1_45\ : std_logic;
SIGNAL \U1|cpt_pas|Equal0~2_combout\ : std_logic;
SIGNAL \U1|cpt_pas|Equal0~0_combout\ : std_logic;
SIGNAL \U1|mss|Mux0~0\ : std_logic;
SIGNAL \U1|mss|Mux0~1_combout\ : std_logic;
SIGNAL \U1|m_auto_s~regout\ : std_logic;
SIGNAL \U1|mss|Fut~0_combout\ : std_logic;
SIGNAL \U1|dir_s~regout\ : std_logic;
SIGNAL \U1|mss|Mux2~5_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~6_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~1_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~0_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~2_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~3_combout\ : std_logic;
SIGNAL \U1|mss|Mux1~0_combout\ : std_logic;
SIGNAL \U1|mss|Mux2~4_combout\ : std_logic;
SIGNAL \Cpt_s[1]~37\ : std_logic;
SIGNAL \Cpt_s[1]~37COUT1_56\ : std_logic;
SIGNAL \Cpt_s[2]~35\ : std_logic;
SIGNAL \Cpt_s[2]~35COUT1_58\ : std_logic;
SIGNAL \Cpt_s[3]~33\ : std_logic;
SIGNAL \Cpt_s[3]~33COUT1_60\ : std_logic;
SIGNAL \Cpt_s[4]~31\ : std_logic;
SIGNAL \Cpt_s[5]~29\ : std_logic;
SIGNAL \Cpt_s[5]~29COUT1_62\ : std_logic;
SIGNAL \Cpt_s[6]~27\ : std_logic;
SIGNAL \Cpt_s[6]~27COUT1_64\ : std_logic;
SIGNAL \Cpt_s[7]~25\ : std_logic;
SIGNAL \Cpt_s[7]~25COUT1_66\ : std_logic;
SIGNAL \Cpt_s[8]~23\ : std_logic;
SIGNAL \Cpt_s[8]~23COUT1_68\ : std_logic;
SIGNAL \Cpt_s[9]~21\ : std_logic;
SIGNAL \Cpt_s[10]~19\ : std_logic;
SIGNAL \Cpt_s[10]~19COUT1_70\ : std_logic;
SIGNAL \Cpt_s[11]~17\ : std_logic;
SIGNAL \Cpt_s[11]~17COUT1_72\ : std_logic;
SIGNAL \Cpt_s[12]~15\ : std_logic;
SIGNAL \Cpt_s[12]~15COUT1_74\ : std_logic;
SIGNAL \Cpt_s[13]~13\ : std_logic;
SIGNAL \Cpt_s[13]~13COUT1_76\ : std_logic;
SIGNAL \Cpt_s[14]~11\ : std_logic;
SIGNAL \Cpt_s[15]~9\ : std_logic;
SIGNAL \Cpt_s[15]~9COUT1_78\ : std_logic;
SIGNAL \Cpt_s[16]~7\ : std_logic;
SIGNAL \Cpt_s[16]~7COUT1_80\ : std_logic;
SIGNAL \Cpt_s[17]~5\ : std_logic;
SIGNAL \Cpt_s[17]~5COUT1_82\ : std_logic;
SIGNAL \Cpt_s[18]~3\ : std_logic;
SIGNAL \Cpt_s[18]~3COUT1_84\ : std_logic;
SIGNAL \U1|acqu_pos|reset_pos_s\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Fut~3_combout\ : std_logic;
SIGNAL \U1|init_s~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Fut~1_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Fut~2_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\ : std_logic;
SIGNAL \U1|capt_a_s~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Selector21~0\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Selector21~2\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Selector21~3_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Fut~0_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr8~0_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\ : std_logic;
SIGNAL \U1|capt_b_s~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr15~0_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr15~combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr16~0_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[0]~1\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[1]~3\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[3]~7\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[4]~9\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[5]~11\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[6]~13\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[8]~17\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[9]~19\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[10]~21\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[11]~23\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[13]~27\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[14]~29\ : std_logic;
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres[14]~29COUT1_68\ : std_logic;
SIGNAL \nButton_i~combout\ : std_logic_vector(8 DOWNTO 1);
SIGNAL \Switch_i~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL Cpt_s : std_logic_vector(19 DOWNTO 0);
SIGNAL \U1|sel_vitesse_s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|dist_x_s\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \U1|mss|Etat_Pres\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U1|div_clk_mod|cpt_now\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \U1|cpt_pas|cpt_now\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \U1|acqu_pos|Bloc_position|cpt_pres\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_Con_80p_io[2]~4\ : std_logic;
SIGNAL \ALT_INV_nReset_i~combout\ : std_logic;
SIGNAL \ALT_INV_nButton_i~combout\ : std_logic_vector(8 DOWNTO 8);
SIGNAL ALT_INV_Cpt_s : std_logic_vector(19 DOWNTO 19);
SIGNAL \U1|mss|ALT_INV_Etat_Pres\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_Clk_Gen_i <= Clk_Gen_i;
ww_Clk_Main_i <= Clk_Main_i;
ww_Encoder_A_i <= Encoder_A_i;
ww_Encoder_B_i <= Encoder_B_i;
ww_nButton_i <= nButton_i;
ww_nReset_i <= nReset_i;
ww_Switch_i <= Switch_i;
nLed_o <= ww_nLed_o;
Led_RGB_o <= ww_Led_RGB_o;
nSeven_Seg_o <= ww_nSeven_Seg_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Con_80p_io[2]~4\ <= NOT \Con_80p_io[2]~4\;
\ALT_INV_nReset_i~combout\ <= NOT \nReset_i~combout\;
\ALT_INV_nButton_i~combout\(8) <= NOT \nButton_i~combout\(8);
ALT_INV_Cpt_s(19) <= NOT Cpt_s(19);
\U1|mss|ALT_INV_Etat_Pres\(1) <= NOT \U1|mss|Etat_Pres\(1);
\U1|mss|ALT_INV_Etat_Pres\(0) <= NOT \U1|mss|Etat_Pres\(0);
\U1|mss|ALT_INV_Etat_Pres\(2) <= NOT \U1|mss|Etat_Pres\(2);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(2),
	combout => \Con_80p_io[2]~4\);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[39]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(39),
	combout => \Con_80p_io[39]~41\);

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[40]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(40),
	combout => \Con_80p_io[40]~42\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Main_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Main_i,
	combout => \Clk_Main_i~combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(6),
	combout => \nButton_i~combout\(6));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nReset_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nReset_i,
	combout => \nReset_i~combout\);

-- Location: LC_X11_Y4_N7
\U1|sel_vitesse_s[2]\ : maxv_lcell
-- Equation(s):
-- \U1|sel_vitesse_s\(2) = DFFEAS((((!\nButton_i~combout\(6)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \nButton_i~combout\(6),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|sel_vitesse_s\(2));

-- Location: LC_X11_Y4_N2
\U1|sel_vitesse_s[2]~_wirecell\ : maxv_lcell
-- Equation(s):
-- \U1|sel_vitesse_s[2]~_wirecell_combout\ = (((!\U1|sel_vitesse_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|sel_vitesse_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|sel_vitesse_s[2]~_wirecell_combout\);

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(5),
	combout => \nButton_i~combout\(5));

-- Location: LC_X11_Y4_N5
\U1|sel_vitesse_s[1]\ : maxv_lcell
-- Equation(s):
-- \U1|sel_vitesse_s\(1) = DFFEAS((((!\nButton_i~combout\(5)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \nButton_i~combout\(5),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|sel_vitesse_s\(1));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(4),
	combout => \nButton_i~combout\(4));

-- Location: LC_X11_Y4_N0
\U1|sel_vitesse_s[0]\ : maxv_lcell
-- Equation(s):
-- \U1|sel_vitesse_s\(0) = DFFEAS((((!\nButton_i~combout\(4)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \nButton_i~combout\(4),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|sel_vitesse_s\(0));

-- Location: LC_X11_Y4_N8
\U1|div_clk_mod|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux4~0_combout\ = (\U1|sel_vitesse_s\(1) & (\U1|sel_vitesse_s\(0) & (\U1|sel_vitesse_s\(2)))) # (!\U1|sel_vitesse_s\(1) & (\U1|sel_vitesse_s\(0) $ ((\U1|sel_vitesse_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9494",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sel_vitesse_s\(1),
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux4~0_combout\);

-- Location: LC_X12_Y3_N1
\U1|div_clk_mod|Mux9~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux9~0_combout\ = ((\U1|sel_vitesse_s\(0) & (\U1|sel_vitesse_s\(2) $ (!\U1|sel_vitesse_s\(1)))) # (!\U1|sel_vitesse_s\(0) & (!\U1|sel_vitesse_s\(2) & \U1|sel_vitesse_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c30c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux9~0_combout\);

-- Location: LC_X5_Y4_N5
\~GND\ : maxv_lcell
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND~combout\);

-- Location: LC_X10_Y3_N1
\U1|div_clk_mod|cpt_now[0]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(0) = DFFEAS(((!\U1|div_clk_mod|cpt_now\(0))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \~GND~combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[0]~7\ = CARRY(((\U1|div_clk_mod|cpt_now\(0))))
-- \U1|div_clk_mod|cpt_now[0]~7COUT1_55\ = CARRY(((\U1|div_clk_mod|cpt_now\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(0),
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(0),
	cout0 => \U1|div_clk_mod|cpt_now[0]~7\,
	cout1 => \U1|div_clk_mod|cpt_now[0]~7COUT1_55\);

-- Location: LC_X10_Y3_N2
\U1|div_clk_mod|cpt_now[1]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(1) = DFFEAS((\U1|div_clk_mod|cpt_now\(1) $ ((!\U1|div_clk_mod|cpt_now[0]~7\))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \~GND~combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[1]~9\ = CARRY(((!\U1|div_clk_mod|cpt_now\(1) & !\U1|div_clk_mod|cpt_now[0]~7\)))
-- \U1|div_clk_mod|cpt_now[1]~9COUT1_57\ = CARRY(((!\U1|div_clk_mod|cpt_now\(1) & !\U1|div_clk_mod|cpt_now[0]~7COUT1_55\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(1),
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin0 => \U1|div_clk_mod|cpt_now[0]~7\,
	cin1 => \U1|div_clk_mod|cpt_now[0]~7COUT1_55\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(1),
	cout0 => \U1|div_clk_mod|cpt_now[1]~9\,
	cout1 => \U1|div_clk_mod|cpt_now[1]~9COUT1_57\);

-- Location: LC_X10_Y3_N3
\U1|div_clk_mod|cpt_now[2]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(2) = DFFEAS(\U1|div_clk_mod|cpt_now\(2) $ ((((\U1|div_clk_mod|cpt_now[1]~9\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \~GND~combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[2]~11\ = CARRY((\U1|div_clk_mod|cpt_now\(2)) # ((!\U1|div_clk_mod|cpt_now[1]~9\)))
-- \U1|div_clk_mod|cpt_now[2]~11COUT1_59\ = CARRY((\U1|div_clk_mod|cpt_now\(2)) # ((!\U1|div_clk_mod|cpt_now[1]~9COUT1_57\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(2),
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin0 => \U1|div_clk_mod|cpt_now[1]~9\,
	cin1 => \U1|div_clk_mod|cpt_now[1]~9COUT1_57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(2),
	cout0 => \U1|div_clk_mod|cpt_now[2]~11\,
	cout1 => \U1|div_clk_mod|cpt_now[2]~11COUT1_59\);

-- Location: LC_X10_Y3_N4
\U1|div_clk_mod|cpt_now[3]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(3) = DFFEAS(\U1|div_clk_mod|cpt_now\(3) $ ((((!\U1|div_clk_mod|cpt_now[2]~11\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \~GND~combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[3]~13\ = CARRY((!\U1|div_clk_mod|cpt_now\(3) & ((!\U1|div_clk_mod|cpt_now[2]~11COUT1_59\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(3),
	datac => \~GND~combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin0 => \U1|div_clk_mod|cpt_now[2]~11\,
	cin1 => \U1|div_clk_mod|cpt_now[2]~11COUT1_59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(3),
	cout => \U1|div_clk_mod|cpt_now[3]~13\);

-- Location: LC_X12_Y3_N9
\U1|div_clk_mod|Mux10~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux10~0_combout\ = ((\U1|sel_vitesse_s\(0) & (!\U1|sel_vitesse_s\(2) & \U1|sel_vitesse_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux10~0_combout\);

-- Location: LC_X12_Y3_N8
\U1|div_clk_mod|Mux11~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux11~0_combout\ = ((\U1|sel_vitesse_s\(2) & ((!\U1|sel_vitesse_s\(1)))) # (!\U1|sel_vitesse_s\(2) & (!\U1|sel_vitesse_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "03f3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux11~0_combout\);

-- Location: LC_X11_Y4_N9
\U1|div_clk_mod|Mux12~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux12~0_combout\ = (\U1|sel_vitesse_s\(0) $ ((\U1|sel_vitesse_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux12~0_combout\);

-- Location: LC_X12_Y3_N7
\U1|div_clk_mod|Mux13~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux13~0_combout\ = ((\U1|sel_vitesse_s\(0) & (\U1|sel_vitesse_s\(2) & \U1|sel_vitesse_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux13~0_combout\);

-- Location: LC_X10_Y3_N5
\U1|div_clk_mod|cpt_now[4]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(4) = DFFEAS(\U1|div_clk_mod|cpt_now\(4) $ ((((\U1|div_clk_mod|cpt_now[3]~13\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \U1|div_clk_mod|Mux13~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[4]~15\ = CARRY((\U1|div_clk_mod|cpt_now\(4)) # ((!\U1|div_clk_mod|cpt_now[3]~13\)))
-- \U1|div_clk_mod|cpt_now[4]~15COUT1_61\ = CARRY((\U1|div_clk_mod|cpt_now\(4)) # ((!\U1|div_clk_mod|cpt_now[3]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(4),
	datac => \U1|div_clk_mod|Mux13~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[3]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(4),
	cout0 => \U1|div_clk_mod|cpt_now[4]~15\,
	cout1 => \U1|div_clk_mod|cpt_now[4]~15COUT1_61\);

-- Location: LC_X10_Y3_N6
\U1|div_clk_mod|cpt_now[5]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(5) = DFFEAS(\U1|div_clk_mod|cpt_now\(5) $ ((((!(!\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[4]~15\) # (\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[4]~15COUT1_61\))))), GLOBAL(\Clk_Main_i~combout\), VCC, 
-- , , \U1|div_clk_mod|Mux12~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[5]~17\ = CARRY((!\U1|div_clk_mod|cpt_now\(5) & ((!\U1|div_clk_mod|cpt_now[4]~15\))))
-- \U1|div_clk_mod|cpt_now[5]~17COUT1_63\ = CARRY((!\U1|div_clk_mod|cpt_now\(5) & ((!\U1|div_clk_mod|cpt_now[4]~15COUT1_61\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(5),
	datac => \U1|div_clk_mod|Mux12~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[3]~13\,
	cin0 => \U1|div_clk_mod|cpt_now[4]~15\,
	cin1 => \U1|div_clk_mod|cpt_now[4]~15COUT1_61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(5),
	cout0 => \U1|div_clk_mod|cpt_now[5]~17\,
	cout1 => \U1|div_clk_mod|cpt_now[5]~17COUT1_63\);

-- Location: LC_X10_Y3_N7
\U1|div_clk_mod|cpt_now[6]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(6) = DFFEAS((\U1|div_clk_mod|cpt_now\(6) $ (((!\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[5]~17\) # (\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[5]~17COUT1_63\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , 
-- \U1|div_clk_mod|Mux11~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[6]~19\ = CARRY(((\U1|div_clk_mod|cpt_now\(6)) # (!\U1|div_clk_mod|cpt_now[5]~17\)))
-- \U1|div_clk_mod|cpt_now[6]~19COUT1_65\ = CARRY(((\U1|div_clk_mod|cpt_now\(6)) # (!\U1|div_clk_mod|cpt_now[5]~17COUT1_63\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(6),
	datac => \U1|div_clk_mod|Mux11~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[3]~13\,
	cin0 => \U1|div_clk_mod|cpt_now[5]~17\,
	cin1 => \U1|div_clk_mod|cpt_now[5]~17COUT1_63\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(6),
	cout0 => \U1|div_clk_mod|cpt_now[6]~19\,
	cout1 => \U1|div_clk_mod|cpt_now[6]~19COUT1_65\);

-- Location: LC_X10_Y3_N8
\U1|div_clk_mod|cpt_now[7]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(7) = DFFEAS(\U1|div_clk_mod|cpt_now\(7) $ ((((!(!\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[6]~19\) # (\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[6]~19COUT1_65\))))), GLOBAL(\Clk_Main_i~combout\), VCC, 
-- , , \U1|div_clk_mod|Mux10~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[7]~21\ = CARRY((!\U1|div_clk_mod|cpt_now\(7) & ((!\U1|div_clk_mod|cpt_now[6]~19\))))
-- \U1|div_clk_mod|cpt_now[7]~21COUT1_67\ = CARRY((!\U1|div_clk_mod|cpt_now\(7) & ((!\U1|div_clk_mod|cpt_now[6]~19COUT1_65\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(7),
	datac => \U1|div_clk_mod|Mux10~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[3]~13\,
	cin0 => \U1|div_clk_mod|cpt_now[6]~19\,
	cin1 => \U1|div_clk_mod|cpt_now[6]~19COUT1_65\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(7),
	cout0 => \U1|div_clk_mod|cpt_now[7]~21\,
	cout1 => \U1|div_clk_mod|cpt_now[7]~21COUT1_67\);

-- Location: LC_X10_Y3_N9
\U1|div_clk_mod|cpt_now[8]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(8) = DFFEAS((\U1|div_clk_mod|cpt_now\(8) $ (((!\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[7]~21\) # (\U1|div_clk_mod|cpt_now[3]~13\ & \U1|div_clk_mod|cpt_now[7]~21COUT1_67\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , 
-- \U1|div_clk_mod|Mux9~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[8]~23\ = CARRY(((\U1|div_clk_mod|cpt_now\(8)) # (!\U1|div_clk_mod|cpt_now[7]~21COUT1_67\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(8),
	datac => \U1|div_clk_mod|Mux9~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[3]~13\,
	cin0 => \U1|div_clk_mod|cpt_now[7]~21\,
	cin1 => \U1|div_clk_mod|cpt_now[7]~21COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(8),
	cout => \U1|div_clk_mod|cpt_now[8]~23\);

-- Location: LC_X12_Y3_N4
\U1|div_clk_mod|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux5~0_combout\ = ((\U1|sel_vitesse_s\(0) & (\U1|sel_vitesse_s\(2) & !\U1|sel_vitesse_s\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux5~0_combout\);

-- Location: LC_X12_Y3_N3
\U1|div_clk_mod|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux6~0_combout\ = ((\U1|sel_vitesse_s\(1) & (!\U1|sel_vitesse_s\(0))) # (!\U1|sel_vitesse_s\(1) & ((\U1|sel_vitesse_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux6~0_combout\);

-- Location: LC_X11_Y4_N3
\U1|div_clk_mod|Mux7~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux7~0_combout\ = (\U1|sel_vitesse_s\(1)) # ((\U1|sel_vitesse_s\(0) & (\U1|sel_vitesse_s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaea",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sel_vitesse_s\(1),
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux7~0_combout\);

-- Location: LC_X12_Y3_N2
\U1|div_clk_mod|Mux8~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux8~0_combout\ = ((\U1|sel_vitesse_s\(0) & ((\U1|sel_vitesse_s\(1)))) # (!\U1|sel_vitesse_s\(0) & ((\U1|sel_vitesse_s\(2)) # (!\U1|sel_vitesse_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux8~0_combout\);

-- Location: LC_X11_Y3_N0
\U1|div_clk_mod|cpt_now[9]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(9) = DFFEAS((\U1|div_clk_mod|cpt_now\(9) $ ((!\U1|div_clk_mod|cpt_now[8]~23\))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \U1|div_clk_mod|Mux8~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[9]~25\ = CARRY(((!\U1|div_clk_mod|cpt_now\(9) & !\U1|div_clk_mod|cpt_now[8]~23\)))
-- \U1|div_clk_mod|cpt_now[9]~25COUT1_69\ = CARRY(((!\U1|div_clk_mod|cpt_now\(9) & !\U1|div_clk_mod|cpt_now[8]~23\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(9),
	datac => \U1|div_clk_mod|Mux8~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[8]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(9),
	cout0 => \U1|div_clk_mod|cpt_now[9]~25\,
	cout1 => \U1|div_clk_mod|cpt_now[9]~25COUT1_69\);

-- Location: LC_X11_Y3_N1
\U1|div_clk_mod|cpt_now[10]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(10) = DFFEAS((\U1|div_clk_mod|cpt_now\(10) $ (((!\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[9]~25\) # (\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[9]~25COUT1_69\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , 
-- , \U1|div_clk_mod|Mux7~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[10]~27\ = CARRY(((\U1|div_clk_mod|cpt_now\(10)) # (!\U1|div_clk_mod|cpt_now[9]~25\)))
-- \U1|div_clk_mod|cpt_now[10]~27COUT1_71\ = CARRY(((\U1|div_clk_mod|cpt_now\(10)) # (!\U1|div_clk_mod|cpt_now[9]~25COUT1_69\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(10),
	datac => \U1|div_clk_mod|Mux7~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[8]~23\,
	cin0 => \U1|div_clk_mod|cpt_now[9]~25\,
	cin1 => \U1|div_clk_mod|cpt_now[9]~25COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(10),
	cout0 => \U1|div_clk_mod|cpt_now[10]~27\,
	cout1 => \U1|div_clk_mod|cpt_now[10]~27COUT1_71\);

-- Location: LC_X11_Y3_N2
\U1|div_clk_mod|cpt_now[11]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(11) = DFFEAS((\U1|div_clk_mod|cpt_now\(11) $ ((!(!\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[10]~27\) # (\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[10]~27COUT1_71\)))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|div_clk_mod|Mux6~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[11]~29\ = CARRY(((!\U1|div_clk_mod|cpt_now\(11) & !\U1|div_clk_mod|cpt_now[10]~27\)))
-- \U1|div_clk_mod|cpt_now[11]~29COUT1_73\ = CARRY(((!\U1|div_clk_mod|cpt_now\(11) & !\U1|div_clk_mod|cpt_now[10]~27COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(11),
	datac => \U1|div_clk_mod|Mux6~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[8]~23\,
	cin0 => \U1|div_clk_mod|cpt_now[10]~27\,
	cin1 => \U1|div_clk_mod|cpt_now[10]~27COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(11),
	cout0 => \U1|div_clk_mod|cpt_now[11]~29\,
	cout1 => \U1|div_clk_mod|cpt_now[11]~29COUT1_73\);

-- Location: LC_X11_Y3_N3
\U1|div_clk_mod|cpt_now[12]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(12) = DFFEAS(\U1|div_clk_mod|cpt_now\(12) $ (((((!\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[11]~29\) # (\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[11]~29COUT1_73\))))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|div_clk_mod|Mux5~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[12]~31\ = CARRY((\U1|div_clk_mod|cpt_now\(12)) # ((!\U1|div_clk_mod|cpt_now[11]~29\)))
-- \U1|div_clk_mod|cpt_now[12]~31COUT1_75\ = CARRY((\U1|div_clk_mod|cpt_now\(12)) # ((!\U1|div_clk_mod|cpt_now[11]~29COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(12),
	datac => \U1|div_clk_mod|Mux5~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[8]~23\,
	cin0 => \U1|div_clk_mod|cpt_now[11]~29\,
	cin1 => \U1|div_clk_mod|cpt_now[11]~29COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(12),
	cout0 => \U1|div_clk_mod|cpt_now[12]~31\,
	cout1 => \U1|div_clk_mod|cpt_now[12]~31COUT1_75\);

-- Location: LC_X11_Y3_N4
\U1|div_clk_mod|cpt_now[13]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(13) = DFFEAS(\U1|div_clk_mod|cpt_now\(13) $ ((((!(!\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[12]~31\) # (\U1|div_clk_mod|cpt_now[8]~23\ & \U1|div_clk_mod|cpt_now[12]~31COUT1_75\))))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|div_clk_mod|Mux4~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[13]~33\ = CARRY((!\U1|div_clk_mod|cpt_now\(13) & ((!\U1|div_clk_mod|cpt_now[12]~31COUT1_75\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(13),
	datac => \U1|div_clk_mod|Mux4~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[8]~23\,
	cin0 => \U1|div_clk_mod|cpt_now[12]~31\,
	cin1 => \U1|div_clk_mod|cpt_now[12]~31COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(13),
	cout => \U1|div_clk_mod|cpt_now[13]~33\);

-- Location: LC_X12_Y3_N0
\U1|div_clk_mod|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux2~0_combout\ = ((\U1|sel_vitesse_s\(2) & ((!\U1|sel_vitesse_s\(1)))) # (!\U1|sel_vitesse_s\(2) & (\U1|sel_vitesse_s\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux2~0_combout\);

-- Location: LC_X12_Y3_N5
\U1|div_clk_mod|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux3~0_combout\ = ((!\U1|sel_vitesse_s\(0) & ((\U1|sel_vitesse_s\(2)) # (!\U1|sel_vitesse_s\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux3~0_combout\);

-- Location: LC_X11_Y3_N5
\U1|div_clk_mod|cpt_now[14]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(14) = DFFEAS(\U1|div_clk_mod|cpt_now\(14) $ ((((\U1|div_clk_mod|cpt_now[13]~33\)))), GLOBAL(\Clk_Main_i~combout\), VCC, , , \U1|div_clk_mod|Mux3~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[14]~35\ = CARRY((\U1|div_clk_mod|cpt_now\(14)) # ((!\U1|div_clk_mod|cpt_now[13]~33\)))
-- \U1|div_clk_mod|cpt_now[14]~35COUT1_77\ = CARRY((\U1|div_clk_mod|cpt_now\(14)) # ((!\U1|div_clk_mod|cpt_now[13]~33\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(14),
	datac => \U1|div_clk_mod|Mux3~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[13]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(14),
	cout0 => \U1|div_clk_mod|cpt_now[14]~35\,
	cout1 => \U1|div_clk_mod|cpt_now[14]~35COUT1_77\);

-- Location: LC_X11_Y3_N6
\U1|div_clk_mod|cpt_now[15]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(15) = DFFEAS(\U1|div_clk_mod|cpt_now\(15) $ ((((!(!\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[14]~35\) # (\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[14]~35COUT1_77\))))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|div_clk_mod|Mux2~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[15]~37\ = CARRY((!\U1|div_clk_mod|cpt_now\(15) & ((!\U1|div_clk_mod|cpt_now[14]~35\))))
-- \U1|div_clk_mod|cpt_now[15]~37COUT1_79\ = CARRY((!\U1|div_clk_mod|cpt_now\(15) & ((!\U1|div_clk_mod|cpt_now[14]~35COUT1_77\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(15),
	datac => \U1|div_clk_mod|Mux2~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[13]~33\,
	cin0 => \U1|div_clk_mod|cpt_now[14]~35\,
	cin1 => \U1|div_clk_mod|cpt_now[14]~35COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(15),
	cout0 => \U1|div_clk_mod|cpt_now[15]~37\,
	cout1 => \U1|div_clk_mod|cpt_now[15]~37COUT1_79\);

-- Location: LC_X11_Y3_N7
\U1|div_clk_mod|cpt_now[16]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(16) = DFFEAS((\U1|div_clk_mod|cpt_now\(16) $ (((!\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[15]~37\) # (\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[15]~37COUT1_79\)))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|sel_vitesse_s[2]~_wirecell_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[16]~1\ = CARRY(((\U1|div_clk_mod|cpt_now\(16)) # (!\U1|div_clk_mod|cpt_now[15]~37\)))
-- \U1|div_clk_mod|cpt_now[16]~1COUT1_81\ = CARRY(((\U1|div_clk_mod|cpt_now\(16)) # (!\U1|div_clk_mod|cpt_now[15]~37COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|div_clk_mod|cpt_now\(16),
	datac => \U1|sel_vitesse_s[2]~_wirecell_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[13]~33\,
	cin0 => \U1|div_clk_mod|cpt_now[15]~37\,
	cin1 => \U1|div_clk_mod|cpt_now[15]~37COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(16),
	cout0 => \U1|div_clk_mod|cpt_now[16]~1\,
	cout1 => \U1|div_clk_mod|cpt_now[16]~1COUT1_81\);

-- Location: LC_X11_Y4_N6
\U1|div_clk_mod|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux0~0_combout\ = (!\U1|sel_vitesse_s\(1) & (((!\U1|sel_vitesse_s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|sel_vitesse_s\(1),
	datac => \U1|sel_vitesse_s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux0~0_combout\);

-- Location: LC_X12_Y3_N6
\U1|div_clk_mod|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Mux1~0_combout\ = ((!\U1|sel_vitesse_s\(2) & ((!\U1|sel_vitesse_s\(1)) # (!\U1|sel_vitesse_s\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "030f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|sel_vitesse_s\(0),
	datac => \U1|sel_vitesse_s\(2),
	datad => \U1|sel_vitesse_s\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Mux1~0_combout\);

-- Location: LC_X11_Y3_N8
\U1|div_clk_mod|cpt_now[17]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(17) = DFFEAS(\U1|div_clk_mod|cpt_now\(17) $ ((((!(!\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[16]~1\) # (\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[16]~1COUT1_81\))))), GLOBAL(\Clk_Main_i~combout\), 
-- VCC, , , \U1|div_clk_mod|Mux1~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)
-- \U1|div_clk_mod|cpt_now[17]~3\ = CARRY((!\U1|div_clk_mod|cpt_now\(17) & ((!\U1|div_clk_mod|cpt_now[16]~1\))))
-- \U1|div_clk_mod|cpt_now[17]~3COUT1_83\ = CARRY((!\U1|div_clk_mod|cpt_now\(17) & ((!\U1|div_clk_mod|cpt_now[16]~1COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|div_clk_mod|cpt_now\(17),
	datac => \U1|div_clk_mod|Mux1~0_combout\,
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[13]~33\,
	cin0 => \U1|div_clk_mod|cpt_now[16]~1\,
	cin1 => \U1|div_clk_mod|cpt_now[16]~1COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(17),
	cout0 => \U1|div_clk_mod|cpt_now[17]~3\,
	cout1 => \U1|div_clk_mod|cpt_now[17]~3COUT1_83\);

-- Location: LC_X11_Y3_N9
\U1|div_clk_mod|cpt_now[18]\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|cpt_now\(18) = DFFEAS((((!\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[17]~3\) # (\U1|div_clk_mod|cpt_now[13]~33\ & \U1|div_clk_mod|cpt_now[17]~3COUT1_83\) $ (\U1|div_clk_mod|cpt_now\(18)))), GLOBAL(\Clk_Main_i~combout\), VCC, 
-- , , \U1|div_clk_mod|Mux0~0_combout\, !GLOBAL(\nReset_i~combout\), , \U1|div_clk_mod|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \U1|div_clk_mod|Mux0~0_combout\,
	datad => \U1|div_clk_mod|cpt_now\(18),
	aclr => GND,
	aload => \ALT_INV_nReset_i~combout\,
	sload => \U1|div_clk_mod|Equal0~5_combout\,
	cin => \U1|div_clk_mod|cpt_now[13]~33\,
	cin0 => \U1|div_clk_mod|cpt_now[17]~3\,
	cin1 => \U1|div_clk_mod|cpt_now[17]~3COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|div_clk_mod|cpt_now\(18));

-- Location: LC_X11_Y2_N8
\U1|div_clk_mod|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~2_combout\ = (\U1|div_clk_mod|cpt_now\(10)) # ((\U1|div_clk_mod|cpt_now\(11)) # ((\U1|div_clk_mod|cpt_now\(9)) # (\U1|div_clk_mod|cpt_now\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|cpt_now\(10),
	datab => \U1|div_clk_mod|cpt_now\(11),
	datac => \U1|div_clk_mod|cpt_now\(9),
	datad => \U1|div_clk_mod|cpt_now\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~2_combout\);

-- Location: LC_X10_Y3_N0
\U1|div_clk_mod|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~0_combout\ = (\U1|div_clk_mod|cpt_now\(2)) # ((\U1|div_clk_mod|cpt_now\(1)) # ((\U1|div_clk_mod|cpt_now\(3)) # (\U1|div_clk_mod|cpt_now\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|cpt_now\(2),
	datab => \U1|div_clk_mod|cpt_now\(1),
	datac => \U1|div_clk_mod|cpt_now\(3),
	datad => \U1|div_clk_mod|cpt_now\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~0_combout\);

-- Location: LC_X11_Y2_N6
\U1|div_clk_mod|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~3_combout\ = (\U1|div_clk_mod|cpt_now\(13)) # ((\U1|div_clk_mod|cpt_now\(14)) # ((\U1|div_clk_mod|cpt_now\(15)) # (\U1|div_clk_mod|cpt_now\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|cpt_now\(13),
	datab => \U1|div_clk_mod|cpt_now\(14),
	datac => \U1|div_clk_mod|cpt_now\(15),
	datad => \U1|div_clk_mod|cpt_now\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~3_combout\);

-- Location: LC_X11_Y2_N2
\U1|div_clk_mod|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~1_combout\ = (\U1|div_clk_mod|cpt_now\(4)) # ((\U1|div_clk_mod|cpt_now\(6)) # ((\U1|div_clk_mod|cpt_now\(7)) # (\U1|div_clk_mod|cpt_now\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|cpt_now\(4),
	datab => \U1|div_clk_mod|cpt_now\(6),
	datac => \U1|div_clk_mod|cpt_now\(7),
	datad => \U1|div_clk_mod|cpt_now\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~1_combout\);

-- Location: LC_X11_Y2_N5
\U1|div_clk_mod|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~4_combout\ = (\U1|div_clk_mod|Equal0~2_combout\) # ((\U1|div_clk_mod|Equal0~0_combout\) # ((\U1|div_clk_mod|Equal0~3_combout\) # (\U1|div_clk_mod|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|Equal0~2_combout\,
	datab => \U1|div_clk_mod|Equal0~0_combout\,
	datac => \U1|div_clk_mod|Equal0~3_combout\,
	datad => \U1|div_clk_mod|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~4_combout\);

-- Location: LC_X11_Y2_N4
\U1|div_clk_mod|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \U1|div_clk_mod|Equal0~5_combout\ = (!\U1|div_clk_mod|cpt_now\(16) & (!\U1|div_clk_mod|cpt_now\(18) & (!\U1|div_clk_mod|Equal0~4_combout\ & !\U1|div_clk_mod|cpt_now\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|div_clk_mod|cpt_now\(16),
	datab => \U1|div_clk_mod|cpt_now\(18),
	datac => \U1|div_clk_mod|Equal0~4_combout\,
	datad => \U1|div_clk_mod|cpt_now\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|div_clk_mod|Equal0~5_combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(1),
	combout => \nButton_i~combout\(1));

-- Location: LC_X3_Y7_N8
\U1|start_s\ : maxv_lcell
-- Equation(s):
-- \U1|start_s~regout\ = DFFEAS((((!\nButton_i~combout\(1)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \nButton_i~combout\(1),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|start_s~regout\);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(4),
	combout => \Switch_i~combout\(4));

-- Location: LC_X1_Y4_N2
\U1|dist_x_s[4]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(4) = DFFEAS((((\Switch_i~combout\(4)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \Switch_i~combout\(4),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(4));

-- Location: LC_X3_Y7_N6
\U1|cpt_pas|cpt_now[2]~20\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now[2]~20_combout\ = (\U1|start_s~regout\) # (((\U1|div_clk_mod|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|start_s~regout\,
	datad => \U1|div_clk_mod|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|cpt_pas|cpt_now[2]~20_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(1),
	combout => \Switch_i~combout\(1));

-- Location: LC_X2_Y4_N2
\U1|dist_x_s[1]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(1) = DFFEAS((((\Switch_i~combout\(1)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \Switch_i~combout\(1),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(1));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(0),
	combout => \Switch_i~combout\(0));

-- Location: LC_X2_Y5_N2
\U1|dist_x_s[0]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(0) = DFFEAS(GND, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Switch_i~combout\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \Switch_i~combout\(0),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(0));

-- Location: LC_X3_Y6_N0
\U1|cpt_pas|cpt_now[0]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(0) = DFFEAS(((!\U1|cpt_pas|cpt_now\(0))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \~GND~combout\, , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[0]~1\ = CARRY(((\U1|cpt_pas|cpt_now\(0))))
-- \U1|cpt_pas|cpt_now[0]~1COUT1_31\ = CARRY(((\U1|cpt_pas|cpt_now\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|cpt_pas|cpt_now\(0),
	datac => \~GND~combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(0),
	cout0 => \U1|cpt_pas|cpt_now[0]~1\,
	cout1 => \U1|cpt_pas|cpt_now[0]~1COUT1_31\);

-- Location: LC_X3_Y6_N1
\U1|cpt_pas|cpt_now[1]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(1) = DFFEAS((\U1|cpt_pas|cpt_now\(1) $ ((!\U1|cpt_pas|cpt_now[0]~1\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \~GND~combout\, , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[1]~3\ = CARRY(((!\U1|cpt_pas|cpt_now\(1) & !\U1|cpt_pas|cpt_now[0]~1\)))
-- \U1|cpt_pas|cpt_now[1]~3COUT1_33\ = CARRY(((!\U1|cpt_pas|cpt_now\(1) & !\U1|cpt_pas|cpt_now[0]~1COUT1_31\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|cpt_pas|cpt_now\(1),
	datac => \~GND~combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin0 => \U1|cpt_pas|cpt_now[0]~1\,
	cin1 => \U1|cpt_pas|cpt_now[0]~1COUT1_31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(1),
	cout0 => \U1|cpt_pas|cpt_now[1]~3\,
	cout1 => \U1|cpt_pas|cpt_now[1]~3COUT1_33\);

-- Location: LC_X3_Y6_N2
\U1|cpt_pas|cpt_now[2]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(2) = DFFEAS((\U1|cpt_pas|cpt_now\(2) $ ((\U1|cpt_pas|cpt_now[1]~3\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \~GND~combout\, , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[2]~5\ = CARRY(((\U1|cpt_pas|cpt_now\(2)) # (!\U1|cpt_pas|cpt_now[1]~3\)))
-- \U1|cpt_pas|cpt_now[2]~5COUT1_35\ = CARRY(((\U1|cpt_pas|cpt_now\(2)) # (!\U1|cpt_pas|cpt_now[1]~3COUT1_33\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|cpt_pas|cpt_now\(2),
	datac => \~GND~combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin0 => \U1|cpt_pas|cpt_now[1]~3\,
	cin1 => \U1|cpt_pas|cpt_now[1]~3COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(2),
	cout0 => \U1|cpt_pas|cpt_now[2]~5\,
	cout1 => \U1|cpt_pas|cpt_now[2]~5COUT1_35\);

-- Location: LC_X3_Y6_N3
\U1|cpt_pas|cpt_now[3]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(3) = DFFEAS(\U1|cpt_pas|cpt_now\(3) $ ((((!\U1|cpt_pas|cpt_now[2]~5\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(0), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[3]~7\ = CARRY((!\U1|cpt_pas|cpt_now\(3) & ((!\U1|cpt_pas|cpt_now[2]~5\))))
-- \U1|cpt_pas|cpt_now[3]~7COUT1_37\ = CARRY((!\U1|cpt_pas|cpt_now\(3) & ((!\U1|cpt_pas|cpt_now[2]~5COUT1_35\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|cpt_now\(3),
	datac => \U1|dist_x_s\(0),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin0 => \U1|cpt_pas|cpt_now[2]~5\,
	cin1 => \U1|cpt_pas|cpt_now[2]~5COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(3),
	cout0 => \U1|cpt_pas|cpt_now[3]~7\,
	cout1 => \U1|cpt_pas|cpt_now[3]~7COUT1_37\);

-- Location: LC_X3_Y6_N4
\U1|cpt_pas|cpt_now[4]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(4) = DFFEAS(\U1|cpt_pas|cpt_now\(4) $ ((((\U1|cpt_pas|cpt_now[3]~7\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(1), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[4]~9\ = CARRY((\U1|cpt_pas|cpt_now\(4)) # ((!\U1|cpt_pas|cpt_now[3]~7COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|cpt_now\(4),
	datac => \U1|dist_x_s\(1),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin0 => \U1|cpt_pas|cpt_now[3]~7\,
	cin1 => \U1|cpt_pas|cpt_now[3]~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(4),
	cout => \U1|cpt_pas|cpt_now[4]~9\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(3),
	combout => \Switch_i~combout\(3));

-- Location: LC_X1_Y5_N0
\U1|dist_x_s[3]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(3) = DFFEAS(GND, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Switch_i~combout\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \Switch_i~combout\(3),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(3));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(2),
	combout => \Switch_i~combout\(2));

-- Location: LC_X3_Y4_N8
\U1|dist_x_s[2]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(2) = DFFEAS(GND, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Switch_i~combout\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \Switch_i~combout\(2),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(2));

-- Location: LC_X3_Y6_N5
\U1|cpt_pas|cpt_now[5]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(5) = DFFEAS(\U1|cpt_pas|cpt_now\(5) $ ((((!\U1|cpt_pas|cpt_now[4]~9\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(2), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[5]~11\ = CARRY((!\U1|cpt_pas|cpt_now\(5) & ((!\U1|cpt_pas|cpt_now[4]~9\))))
-- \U1|cpt_pas|cpt_now[5]~11COUT1_39\ = CARRY((!\U1|cpt_pas|cpt_now\(5) & ((!\U1|cpt_pas|cpt_now[4]~9\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|cpt_now\(5),
	datac => \U1|dist_x_s\(2),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin => \U1|cpt_pas|cpt_now[4]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(5),
	cout0 => \U1|cpt_pas|cpt_now[5]~11\,
	cout1 => \U1|cpt_pas|cpt_now[5]~11COUT1_39\);

-- Location: LC_X3_Y6_N6
\U1|cpt_pas|cpt_now[6]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(6) = DFFEAS(\U1|cpt_pas|cpt_now\(6) $ (((((!\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[5]~11\) # (\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[5]~11COUT1_39\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , 
-- \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(3), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[6]~13\ = CARRY((\U1|cpt_pas|cpt_now\(6)) # ((!\U1|cpt_pas|cpt_now[5]~11\)))
-- \U1|cpt_pas|cpt_now[6]~13COUT1_41\ = CARRY((\U1|cpt_pas|cpt_now\(6)) # ((!\U1|cpt_pas|cpt_now[5]~11COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|cpt_now\(6),
	datac => \U1|dist_x_s\(3),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin => \U1|cpt_pas|cpt_now[4]~9\,
	cin0 => \U1|cpt_pas|cpt_now[5]~11\,
	cin1 => \U1|cpt_pas|cpt_now[5]~11COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(6),
	cout0 => \U1|cpt_pas|cpt_now[6]~13\,
	cout1 => \U1|cpt_pas|cpt_now[6]~13COUT1_41\);

-- Location: LC_X3_Y6_N7
\U1|cpt_pas|cpt_now[7]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(7) = DFFEAS((\U1|cpt_pas|cpt_now\(7) $ ((!(!\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[6]~13\) # (\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[6]~13COUT1_41\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , 
-- \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(4), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[7]~15\ = CARRY(((!\U1|cpt_pas|cpt_now\(7) & !\U1|cpt_pas|cpt_now[6]~13\)))
-- \U1|cpt_pas|cpt_now[7]~15COUT1_43\ = CARRY(((!\U1|cpt_pas|cpt_now\(7) & !\U1|cpt_pas|cpt_now[6]~13COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|cpt_pas|cpt_now\(7),
	datac => \U1|dist_x_s\(4),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin => \U1|cpt_pas|cpt_now[4]~9\,
	cin0 => \U1|cpt_pas|cpt_now[6]~13\,
	cin1 => \U1|cpt_pas|cpt_now[6]~13COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(7),
	cout0 => \U1|cpt_pas|cpt_now[7]~15\,
	cout1 => \U1|cpt_pas|cpt_now[7]~15COUT1_43\);

-- Location: LC_X3_Y7_N5
\U1|cpt_pas|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|Equal0~1_combout\ = (!\U1|cpt_pas|cpt_now\(7) & (!\U1|cpt_pas|cpt_now\(5) & (!\U1|cpt_pas|cpt_now\(6) & !\U1|cpt_pas|cpt_now\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cpt_pas|cpt_now\(7),
	datab => \U1|cpt_pas|cpt_now\(5),
	datac => \U1|cpt_pas|cpt_now\(6),
	datad => \U1|cpt_pas|cpt_now\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|cpt_pas|Equal0~1_combout\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(5),
	combout => \Switch_i~combout\(5));

-- Location: LC_X3_Y5_N2
\U1|dist_x_s[5]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(5) = DFFEAS(GND, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Switch_i~combout\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \Switch_i~combout\(5),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(5));

-- Location: LC_X3_Y6_N8
\U1|cpt_pas|cpt_now[8]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(8) = DFFEAS(\U1|cpt_pas|cpt_now\(8) $ (((((!\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[7]~15\) # (\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[7]~15COUT1_43\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , 
-- \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(5), , , \U1|start_s~regout\)
-- \U1|cpt_pas|cpt_now[8]~17\ = CARRY((\U1|cpt_pas|cpt_now\(8)) # ((!\U1|cpt_pas|cpt_now[7]~15\)))
-- \U1|cpt_pas|cpt_now[8]~17COUT1_45\ = CARRY((\U1|cpt_pas|cpt_now\(8)) # ((!\U1|cpt_pas|cpt_now[7]~15COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|cpt_now\(8),
	datac => \U1|dist_x_s\(5),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin => \U1|cpt_pas|cpt_now[4]~9\,
	cin0 => \U1|cpt_pas|cpt_now[7]~15\,
	cin1 => \U1|cpt_pas|cpt_now[7]~15COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(8),
	cout0 => \U1|cpt_pas|cpt_now[8]~17\,
	cout1 => \U1|cpt_pas|cpt_now[8]~17COUT1_45\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(6),
	combout => \Switch_i~combout\(6));

-- Location: LC_X1_Y6_N2
\U1|dist_x_s[6]\ : maxv_lcell
-- Equation(s):
-- \U1|dist_x_s\(6) = DFFEAS((((\Switch_i~combout\(6)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \Switch_i~combout\(6),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dist_x_s\(6));

-- Location: LC_X3_Y6_N9
\U1|cpt_pas|cpt_now[9]\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|cpt_now\(9) = DFFEAS((((!\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[8]~17\) # (\U1|cpt_pas|cpt_now[4]~9\ & \U1|cpt_pas|cpt_now[8]~17COUT1_45\) $ (!\U1|cpt_pas|cpt_now\(9)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , 
-- \U1|cpt_pas|cpt_now[2]~20_combout\, \U1|dist_x_s\(6), , , \U1|start_s~regout\)

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \U1|dist_x_s\(6),
	datad => \U1|cpt_pas|cpt_now\(9),
	aclr => \ALT_INV_nReset_i~combout\,
	sload => \U1|start_s~regout\,
	ena => \U1|cpt_pas|cpt_now[2]~20_combout\,
	cin => \U1|cpt_pas|cpt_now[4]~9\,
	cin0 => \U1|cpt_pas|cpt_now[8]~17\,
	cin1 => \U1|cpt_pas|cpt_now[8]~17COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|cpt_pas|cpt_now\(9));

-- Location: LC_X3_Y7_N0
\U1|cpt_pas|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|Equal0~2_combout\ = (((!\U1|cpt_pas|cpt_now\(8) & !\U1|cpt_pas|cpt_now\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|cpt_pas|cpt_now\(8),
	datad => \U1|cpt_pas|cpt_now\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|cpt_pas|Equal0~2_combout\);

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Switch_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Switch_i(7),
	combout => \Switch_i~combout\(7));

-- Location: LC_X3_Y7_N3
\U1|cpt_pas|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \U1|cpt_pas|Equal0~0_combout\ = (!\U1|cpt_pas|cpt_now\(0) & (!\U1|cpt_pas|cpt_now\(1) & (!\U1|cpt_pas|cpt_now\(3) & !\U1|cpt_pas|cpt_now\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|cpt_pas|cpt_now\(0),
	datab => \U1|cpt_pas|cpt_now\(1),
	datac => \U1|cpt_pas|cpt_now\(3),
	datad => \U1|cpt_pas|cpt_now\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|cpt_pas|Equal0~0_combout\);

-- Location: LC_X3_Y7_N2
\U1|m_auto_s\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux0~0\ = (C1_m_auto_s & (((!\U1|cpt_pas|Equal0~0_combout\) # (!\U1|cpt_pas|Equal0~2_combout\)) # (!\U1|cpt_pas|Equal0~1_combout\)))
-- \U1|m_auto_s~regout\ = DFFEAS(\U1|mss|Mux0~0\, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Switch_i~combout\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|cpt_pas|Equal0~1_combout\,
	datab => \U1|cpt_pas|Equal0~2_combout\,
	datac => \Switch_i~combout\(7),
	datad => \U1|cpt_pas|Equal0~0_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux0~0\,
	regout => \U1|m_auto_s~regout\);

-- Location: LC_X3_Y7_N7
\U1|mss|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux0~1_combout\ = ((\U1|mss|Mux0~0\ & ((\U1|start_s~regout\) # (\U1|mss|Etat_Pres\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|start_s~regout\,
	datac => \U1|mss|Etat_Pres\(2),
	datad => \U1|mss|Mux0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux0~1_combout\);

-- Location: LC_X3_Y7_N1
\U1|mss|Fut~0\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Fut~0_combout\ = (((!\U1|m_auto_s~regout\ & \U1|start_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|m_auto_s~regout\,
	datad => \U1|start_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Fut~0_combout\);

-- Location: LC_X3_Y7_N4
\U1|mss|Etat_Pres[2]\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Etat_Pres\(2) = DFFEAS((\U1|div_clk_mod|Equal0~5_combout\ & (((\U1|mss|Mux0~1_combout\) # (\U1|mss|Fut~0_combout\)))) # (!\U1|div_clk_mod|Equal0~5_combout\ & (\U1|mss|Etat_Pres\(2))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , 
-- , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|mss|Etat_Pres\(2),
	datab => \U1|div_clk_mod|Equal0~5_combout\,
	datac => \U1|mss|Mux0~1_combout\,
	datad => \U1|mss|Fut~0_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|mss|Etat_Pres\(2));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(3),
	combout => \nButton_i~combout\(3));

-- Location: LC_X4_Y6_N2
\U1|dir_s\ : maxv_lcell
-- Equation(s):
-- \U1|dir_s~regout\ = DFFEAS((((!\nButton_i~combout\(3)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => \nButton_i~combout\(3),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|dir_s~regout\);

-- Location: LC_X4_Y7_N3
\U1|mss|Mux2~5\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~5_combout\ = (!\U1|dir_s~regout\ & (\U1|mss|Mux0~0\ & ((\U1|start_s~regout\) # (\U1|mss|Etat_Pres\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4440",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|dir_s~regout\,
	datab => \U1|mss|Mux0~0\,
	datac => \U1|start_s~regout\,
	datad => \U1|mss|Etat_Pres\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~5_combout\);

-- Location: LC_X4_Y7_N6
\U1|mss|Mux2~6\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~6_combout\ = (\U1|div_clk_mod|Equal0~5_combout\ & ((\U1|mss|Mux2~5_combout\) # ((!\U1|dir_s~regout\ & \U1|mss|Fut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|dir_s~regout\,
	datab => \U1|div_clk_mod|Equal0~5_combout\,
	datac => \U1|mss|Fut~0_combout\,
	datad => \U1|mss|Mux2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~6_combout\);

-- Location: LC_X4_Y7_N0
\U1|mss|Mux2~1\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~1_combout\ = ((!\U1|mss|Mux0~0\ & ((\U1|m_auto_s~regout\) # (!\U1|start_s~regout\)))) # (!\U1|dir_s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "31ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|start_s~regout\,
	datab => \U1|mss|Mux0~0\,
	datac => \U1|m_auto_s~regout\,
	datad => \U1|dir_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~1_combout\);

-- Location: LC_X4_Y7_N8
\U1|mss|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~0_combout\ = (((!\U1|mss|Mux0~0\ & \U1|m_auto_s~regout\)) # (!\U1|dir_s~regout\)) # (!\U1|start_s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "75ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|start_s~regout\,
	datab => \U1|mss|Mux0~0\,
	datac => \U1|m_auto_s~regout\,
	datad => \U1|dir_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~0_combout\);

-- Location: LC_X4_Y7_N1
\U1|mss|Mux2~2\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~2_combout\ = (\U1|div_clk_mod|Equal0~5_combout\ & ((\U1|mss|Etat_Pres\(2) & (!\U1|mss|Mux2~1_combout\)) # (!\U1|mss|Etat_Pres\(2) & ((!\U1|mss|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "084c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|mss|Etat_Pres\(2),
	datab => \U1|div_clk_mod|Equal0~5_combout\,
	datac => \U1|mss|Mux2~1_combout\,
	datad => \U1|mss|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~2_combout\);

-- Location: LC_X4_Y7_N7
\U1|mss|Mux2~3\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~3_combout\ = ((\U1|mss|Etat_Pres\(2) & ((\U1|mss|Mux2~1_combout\))) # (!\U1|mss|Etat_Pres\(2) & (\U1|mss|Mux2~0_combout\))) # (!\U1|div_clk_mod|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|mss|Mux2~0_combout\,
	datab => \U1|mss|Etat_Pres\(2),
	datac => \U1|mss|Mux2~1_combout\,
	datad => \U1|div_clk_mod|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~3_combout\);

-- Location: LC_X4_Y7_N4
\U1|mss|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux1~0_combout\ = (\U1|mss|Etat_Pres\(1) & (((\U1|mss|Mux2~3_combout\ & \U1|mss|Etat_Pres\(0))))) # (!\U1|mss|Etat_Pres\(1) & (\U1|mss|Mux2~2_combout\ & ((!\U1|mss|Etat_Pres\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|mss|Etat_Pres\(1),
	datab => \U1|mss|Mux2~2_combout\,
	datac => \U1|mss|Mux2~3_combout\,
	datad => \U1|mss|Etat_Pres\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux1~0_combout\);

-- Location: LC_X4_Y7_N5
\U1|mss|Etat_Pres[1]\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Etat_Pres\(1) = DFFEAS((\U1|mss|Mux1~0_combout\) # ((\U1|mss|Etat_Pres\(1) & (!\U1|mss|Etat_Pres\(0) & !\U1|mss|Mux2~6_combout\)) # (!\U1|mss|Etat_Pres\(1) & (\U1|mss|Etat_Pres\(0) & \U1|mss|Mux2~6_combout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff42",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|mss|Etat_Pres\(1),
	datab => \U1|mss|Etat_Pres\(0),
	datac => \U1|mss|Mux2~6_combout\,
	datad => \U1|mss|Mux1~0_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|mss|Etat_Pres\(1));

-- Location: LC_X4_Y7_N2
\U1|mss|Mux2~4\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Mux2~4_combout\ = (\U1|mss|Etat_Pres\(1) & (!\U1|mss|Etat_Pres\(0) & ((\U1|mss|Mux2~2_combout\)))) # (!\U1|mss|Etat_Pres\(1) & (\U1|mss|Etat_Pres\(0) & (\U1|mss|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6240",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|mss|Etat_Pres\(1),
	datab => \U1|mss|Etat_Pres\(0),
	datac => \U1|mss|Mux2~3_combout\,
	datad => \U1|mss|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|mss|Mux2~4_combout\);

-- Location: LC_X4_Y7_N9
\U1|mss|Etat_Pres[0]\ : maxv_lcell
-- Equation(s):
-- \U1|mss|Etat_Pres\(0) = DFFEAS((\U1|mss|Mux2~4_combout\) # ((\U1|mss|Etat_Pres\(1) & (\U1|mss|Etat_Pres\(0) & !\U1|mss|Mux2~6_combout\)) # (!\U1|mss|Etat_Pres\(1) & (!\U1|mss|Etat_Pres\(0) & \U1|mss|Mux2~6_combout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff18",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|mss|Etat_Pres\(1),
	datab => \U1|mss|Etat_Pres\(0),
	datac => \U1|mss|Mux2~6_combout\,
	datad => \U1|mss|Mux2~4_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|mss|Etat_Pres\(0));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(8),
	combout => \nButton_i~combout\(8));

-- Location: LC_X1_Y7_N0
\Cpt_s[0]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(0) = DFFEAS((((!Cpt_s(0)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => Cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(0));

-- Location: LC_X1_Y7_N1
\Cpt_s[1]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(1) = DFFEAS(Cpt_s(1) $ ((Cpt_s(0))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[1]~37\ = CARRY((Cpt_s(1) & (Cpt_s(0))))
-- \Cpt_s[1]~37COUT1_56\ = CARRY((Cpt_s(1) & (Cpt_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(1),
	datab => Cpt_s(0),
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(1),
	cout0 => \Cpt_s[1]~37\,
	cout1 => \Cpt_s[1]~37COUT1_56\);

-- Location: LC_X1_Y7_N2
\Cpt_s[2]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(2) = DFFEAS((Cpt_s(2) $ ((\Cpt_s[1]~37\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[2]~35\ = CARRY(((!\Cpt_s[1]~37\) # (!Cpt_s(2))))
-- \Cpt_s[2]~35COUT1_58\ = CARRY(((!\Cpt_s[1]~37COUT1_56\) # (!Cpt_s(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(2),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[1]~37\,
	cin1 => \Cpt_s[1]~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(2),
	cout0 => \Cpt_s[2]~35\,
	cout1 => \Cpt_s[2]~35COUT1_58\);

-- Location: LC_X1_Y7_N3
\Cpt_s[3]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(3) = DFFEAS(Cpt_s(3) $ ((((!\Cpt_s[2]~35\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[3]~33\ = CARRY((Cpt_s(3) & ((!\Cpt_s[2]~35\))))
-- \Cpt_s[3]~33COUT1_60\ = CARRY((Cpt_s(3) & ((!\Cpt_s[2]~35COUT1_58\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(3),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[2]~35\,
	cin1 => \Cpt_s[2]~35COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(3),
	cout0 => \Cpt_s[3]~33\,
	cout1 => \Cpt_s[3]~33COUT1_60\);

-- Location: LC_X1_Y7_N4
\Cpt_s[4]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(4) = DFFEAS(Cpt_s(4) $ ((((\Cpt_s[3]~33\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[4]~31\ = CARRY(((!\Cpt_s[3]~33COUT1_60\)) # (!Cpt_s(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(4),
	aclr => \ALT_INV_nReset_i~combout\,
	cin0 => \Cpt_s[3]~33\,
	cin1 => \Cpt_s[3]~33COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(4),
	cout => \Cpt_s[4]~31\);

-- Location: LC_X1_Y7_N5
\Cpt_s[5]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(5) = DFFEAS(Cpt_s(5) $ ((((!\Cpt_s[4]~31\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[5]~29\ = CARRY((Cpt_s(5) & ((!\Cpt_s[4]~31\))))
-- \Cpt_s[5]~29COUT1_62\ = CARRY((Cpt_s(5) & ((!\Cpt_s[4]~31\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(5),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(5),
	cout0 => \Cpt_s[5]~29\,
	cout1 => \Cpt_s[5]~29COUT1_62\);

-- Location: LC_X1_Y7_N6
\Cpt_s[6]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(6) = DFFEAS(Cpt_s(6) $ (((((!\Cpt_s[4]~31\ & \Cpt_s[5]~29\) # (\Cpt_s[4]~31\ & \Cpt_s[5]~29COUT1_62\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[6]~27\ = CARRY(((!\Cpt_s[5]~29\)) # (!Cpt_s(6)))
-- \Cpt_s[6]~27COUT1_64\ = CARRY(((!\Cpt_s[5]~29COUT1_62\)) # (!Cpt_s(6)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(6),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[5]~29\,
	cin1 => \Cpt_s[5]~29COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(6),
	cout0 => \Cpt_s[6]~27\,
	cout1 => \Cpt_s[6]~27COUT1_64\);

-- Location: LC_X1_Y7_N7
\Cpt_s[7]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(7) = DFFEAS((Cpt_s(7) $ ((!(!\Cpt_s[4]~31\ & \Cpt_s[6]~27\) # (\Cpt_s[4]~31\ & \Cpt_s[6]~27COUT1_64\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[7]~25\ = CARRY(((Cpt_s(7) & !\Cpt_s[6]~27\)))
-- \Cpt_s[7]~25COUT1_66\ = CARRY(((Cpt_s(7) & !\Cpt_s[6]~27COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(7),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[6]~27\,
	cin1 => \Cpt_s[6]~27COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(7),
	cout0 => \Cpt_s[7]~25\,
	cout1 => \Cpt_s[7]~25COUT1_66\);

-- Location: LC_X1_Y7_N8
\Cpt_s[8]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(8) = DFFEAS(Cpt_s(8) $ (((((!\Cpt_s[4]~31\ & \Cpt_s[7]~25\) # (\Cpt_s[4]~31\ & \Cpt_s[7]~25COUT1_66\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[8]~23\ = CARRY(((!\Cpt_s[7]~25\)) # (!Cpt_s(8)))
-- \Cpt_s[8]~23COUT1_68\ = CARRY(((!\Cpt_s[7]~25COUT1_66\)) # (!Cpt_s(8)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(8),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[7]~25\,
	cin1 => \Cpt_s[7]~25COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(8),
	cout0 => \Cpt_s[8]~23\,
	cout1 => \Cpt_s[8]~23COUT1_68\);

-- Location: LC_X1_Y7_N9
\Cpt_s[9]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(9) = DFFEAS((Cpt_s(9) $ ((!(!\Cpt_s[4]~31\ & \Cpt_s[8]~23\) # (\Cpt_s[4]~31\ & \Cpt_s[8]~23COUT1_68\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[9]~21\ = CARRY(((Cpt_s(9) & !\Cpt_s[8]~23COUT1_68\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(9),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[4]~31\,
	cin0 => \Cpt_s[8]~23\,
	cin1 => \Cpt_s[8]~23COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(9),
	cout => \Cpt_s[9]~21\);

-- Location: LC_X2_Y7_N0
\Cpt_s[10]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(10) = DFFEAS((Cpt_s(10) $ ((\Cpt_s[9]~21\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[10]~19\ = CARRY(((!\Cpt_s[9]~21\) # (!Cpt_s(10))))
-- \Cpt_s[10]~19COUT1_70\ = CARRY(((!\Cpt_s[9]~21\) # (!Cpt_s(10))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(10),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(10),
	cout0 => \Cpt_s[10]~19\,
	cout1 => \Cpt_s[10]~19COUT1_70\);

-- Location: LC_X2_Y7_N1
\Cpt_s[11]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(11) = DFFEAS((Cpt_s(11) $ ((!(!\Cpt_s[9]~21\ & \Cpt_s[10]~19\) # (\Cpt_s[9]~21\ & \Cpt_s[10]~19COUT1_70\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[11]~17\ = CARRY(((Cpt_s(11) & !\Cpt_s[10]~19\)))
-- \Cpt_s[11]~17COUT1_72\ = CARRY(((Cpt_s(11) & !\Cpt_s[10]~19COUT1_70\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(11),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[10]~19\,
	cin1 => \Cpt_s[10]~19COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(11),
	cout0 => \Cpt_s[11]~17\,
	cout1 => \Cpt_s[11]~17COUT1_72\);

-- Location: LC_X2_Y7_N2
\Cpt_s[12]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(12) = DFFEAS((Cpt_s(12) $ (((!\Cpt_s[9]~21\ & \Cpt_s[11]~17\) # (\Cpt_s[9]~21\ & \Cpt_s[11]~17COUT1_72\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[12]~15\ = CARRY(((!\Cpt_s[11]~17\) # (!Cpt_s(12))))
-- \Cpt_s[12]~15COUT1_74\ = CARRY(((!\Cpt_s[11]~17COUT1_72\) # (!Cpt_s(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(12),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[11]~17\,
	cin1 => \Cpt_s[11]~17COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(12),
	cout0 => \Cpt_s[12]~15\,
	cout1 => \Cpt_s[12]~15COUT1_74\);

-- Location: LC_X2_Y7_N3
\Cpt_s[13]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(13) = DFFEAS(Cpt_s(13) $ ((((!(!\Cpt_s[9]~21\ & \Cpt_s[12]~15\) # (\Cpt_s[9]~21\ & \Cpt_s[12]~15COUT1_74\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[13]~13\ = CARRY((Cpt_s(13) & ((!\Cpt_s[12]~15\))))
-- \Cpt_s[13]~13COUT1_76\ = CARRY((Cpt_s(13) & ((!\Cpt_s[12]~15COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(13),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[12]~15\,
	cin1 => \Cpt_s[12]~15COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(13),
	cout0 => \Cpt_s[13]~13\,
	cout1 => \Cpt_s[13]~13COUT1_76\);

-- Location: LC_X2_Y7_N4
\Cpt_s[14]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(14) = DFFEAS(Cpt_s(14) $ (((((!\Cpt_s[9]~21\ & \Cpt_s[13]~13\) # (\Cpt_s[9]~21\ & \Cpt_s[13]~13COUT1_76\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[14]~11\ = CARRY(((!\Cpt_s[13]~13COUT1_76\)) # (!Cpt_s(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(14),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[9]~21\,
	cin0 => \Cpt_s[13]~13\,
	cin1 => \Cpt_s[13]~13COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(14),
	cout => \Cpt_s[14]~11\);

-- Location: LC_X2_Y7_N5
\Cpt_s[15]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(15) = DFFEAS(Cpt_s(15) $ ((((!\Cpt_s[14]~11\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[15]~9\ = CARRY((Cpt_s(15) & ((!\Cpt_s[14]~11\))))
-- \Cpt_s[15]~9COUT1_78\ = CARRY((Cpt_s(15) & ((!\Cpt_s[14]~11\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(15),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(15),
	cout0 => \Cpt_s[15]~9\,
	cout1 => \Cpt_s[15]~9COUT1_78\);

-- Location: LC_X2_Y7_N6
\Cpt_s[16]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(16) = DFFEAS(Cpt_s(16) $ (((((!\Cpt_s[14]~11\ & \Cpt_s[15]~9\) # (\Cpt_s[14]~11\ & \Cpt_s[15]~9COUT1_78\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[16]~7\ = CARRY(((!\Cpt_s[15]~9\)) # (!Cpt_s(16)))
-- \Cpt_s[16]~7COUT1_80\ = CARRY(((!\Cpt_s[15]~9COUT1_78\)) # (!Cpt_s(16)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(16),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[15]~9\,
	cin1 => \Cpt_s[15]~9COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(16),
	cout0 => \Cpt_s[16]~7\,
	cout1 => \Cpt_s[16]~7COUT1_80\);

-- Location: LC_X2_Y7_N7
\Cpt_s[17]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(17) = DFFEAS((Cpt_s(17) $ ((!(!\Cpt_s[14]~11\ & \Cpt_s[16]~7\) # (\Cpt_s[14]~11\ & \Cpt_s[16]~7COUT1_80\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[17]~5\ = CARRY(((Cpt_s(17) & !\Cpt_s[16]~7\)))
-- \Cpt_s[17]~5COUT1_82\ = CARRY(((Cpt_s(17) & !\Cpt_s[16]~7COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => Cpt_s(17),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[16]~7\,
	cin1 => \Cpt_s[16]~7COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(17),
	cout0 => \Cpt_s[17]~5\,
	cout1 => \Cpt_s[17]~5COUT1_82\);

-- Location: LC_X2_Y7_N8
\Cpt_s[18]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(18) = DFFEAS(Cpt_s(18) $ (((((!\Cpt_s[14]~11\ & \Cpt_s[17]~5\) # (\Cpt_s[14]~11\ & \Cpt_s[17]~5COUT1_82\))))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )
-- \Cpt_s[18]~3\ = CARRY(((!\Cpt_s[17]~5\)) # (!Cpt_s(18)))
-- \Cpt_s[18]~3COUT1_84\ = CARRY(((!\Cpt_s[17]~5COUT1_82\)) # (!Cpt_s(18)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => Cpt_s(18),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[17]~5\,
	cin1 => \Cpt_s[17]~5COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(18),
	cout0 => \Cpt_s[18]~3\,
	cout1 => \Cpt_s[18]~3COUT1_84\);

-- Location: LC_X2_Y7_N9
\Cpt_s[19]\ : maxv_lcell
-- Equation(s):
-- Cpt_s(19) = DFFEAS((((!\Cpt_s[14]~11\ & \Cpt_s[18]~3\) # (\Cpt_s[14]~11\ & \Cpt_s[18]~3COUT1_84\) $ (!Cpt_s(19)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datad => Cpt_s(19),
	aclr => \ALT_INV_nReset_i~combout\,
	cin => \Cpt_s[14]~11\,
	cin0 => \Cpt_s[18]~3\,
	cin1 => \Cpt_s[18]~3COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Cpt_s(19));

-- Location: LC_X5_Y5_N6
\U1|init_s\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|reset_pos_s\ = (((C1_init_s)) # (!\nReset_i~combout\))
-- \U1|init_s~regout\ = DFFEAS(\U1|acqu_pos|reset_pos_s\, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Con_80p_io[2]~4\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3f3",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \nReset_i~combout\,
	datac => \Con_80p_io[2]~4\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|reset_pos_s\,
	regout => \U1|init_s~regout\);

-- Location: LC_X7_Y4_N9
\U1|acqu_pos|Bloc_MSS|Fut~3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Fut~3_combout\ = ((\U1|capt_b_s~regout\ & ((\U1|capt_a_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Fut~3_combout\);

-- Location: LC_X6_Y5_N4
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\ & (!\U1|capt_b_s~regout\ & \U1|capt_a_s~regout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\,
	datab => \U1|capt_b_s~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\,
	datad => \U1|capt_a_s~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\);

-- Location: LC_X7_Y5_N8
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\ = DFFEAS((((!\U1|init_s~regout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datac => \U1|init_s~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\);

-- Location: LC_X7_Y4_N8
\U1|acqu_pos|Bloc_MSS|Etat_Pres~38\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\ = ((\U1|capt_b_s~regout\ & (!\U1|init_s~regout\ & !\U1|capt_a_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datac => \U1|init_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\);

-- Location: LC_X7_Y5_N7
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\ & (((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\)) # 
-- (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\);

-- Location: LC_X7_Y5_N9
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\ & (((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\)) # 
-- (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\);

-- Location: LC_X7_Y4_N5
\U1|acqu_pos|Bloc_MSS|Etat_Pres~40\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\ = ((!\U1|capt_b_s~regout\ & (!\U1|init_s~regout\ & !\U1|capt_a_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datac => \U1|init_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\);

-- Location: LC_X7_Y5_N4
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\);

-- Location: LC_X6_Y5_N7
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\) # ((!\U1|capt_a_s~regout\ & (!\U1|capt_b_s~regout\ & \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|capt_a_s~regout\,
	datab => \U1|capt_b_s~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\);

-- Location: LC_X7_Y4_N0
\U1|acqu_pos|Bloc_MSS|Etat_Pres~39\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\ = ((\U1|capt_b_s~regout\ & (!\U1|init_s~regout\ & \U1|capt_a_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datac => \U1|init_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\);

-- Location: LC_X7_Y5_N2
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\ & (((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\)) # 
-- (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\);

-- Location: LC_X7_Y5_N1
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\ & (((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\)) # 
-- (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Init~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\);

-- Location: LC_X6_Y5_N9
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\);

-- Location: LC_X6_Y5_N0
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\) # ((!\U1|capt_a_s~regout\ & (\U1|capt_b_s~regout\ & \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|capt_a_s~regout\,
	datab => \U1|capt_b_s~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\);

-- Location: LC_X6_Y4_N7
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres~40_combout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\);

-- Location: LC_X7_Y4_N2
\U1|acqu_pos|Bloc_MSS|Fut~1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Fut~1_combout\ = ((\U1|capt_b_s~regout\) # ((\U1|capt_a_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Fut~1_combout\);

-- Location: LC_X6_Y4_N3
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\) # ((!\U1|acqu_pos|Bloc_MSS|Fut~1_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\)))), 
-- GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Fut~1_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\);

-- Location: LC_X6_Y5_N8
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start0~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\);

-- Location: LC_X7_Y4_N4
\U1|acqu_pos|Bloc_MSS|Fut~2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Fut~2_combout\ = ((!\U1|capt_b_s~regout\ & ((\U1|capt_a_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Fut~2_combout\);

-- Location: LC_X6_Y4_N2
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\) # ((\U1|acqu_pos|Bloc_MSS|Fut~2_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\)))), 
-- GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Fut~2_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\);

-- Location: LC_X7_Y5_N6
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\);

-- Location: LC_X6_Y4_N4
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\) # ((\U1|acqu_pos|Bloc_MSS|Fut~3_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\)))), 
-- GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Fut~3_combout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\);

-- Location: LC_X7_Y4_N3
\U1|capt_a_s\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Selector21~0\ = (!C1_capt_a_s & (!\U1|capt_b_s~regout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\))))
-- \U1|capt_a_s~regout\ = DFFEAS(\U1|acqu_pos|Bloc_MSS|Selector21~0\, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Con_80p_io[39]~41\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000e",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\,
	datac => \Con_80p_io[39]~41\,
	datad => \U1|capt_b_s~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Selector21~0\,
	regout => \U1|capt_a_s~regout\);

-- Location: LC_X7_Y5_N3
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres~39_combout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\);

-- Location: LC_X6_Y5_N2
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\) # ((\U1|capt_a_s~regout\ & (\U1|capt_b_s~regout\ & \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\))), GLOBAL(\Clk_Main_i~combout\), 
-- GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|capt_a_s~regout\,
	datab => \U1|capt_b_s~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\);

-- Location: LC_X7_Y4_N1
\U1|capt_b_s\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Selector21~2\ = (\U1|capt_a_s~regout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\) # (C1_capt_b_s))))
-- \U1|capt_b_s~regout\ = DFFEAS(\U1|acqu_pos|Bloc_MSS|Selector21~2\, GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , \Con_80p_io[40]~42\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW1~regout\,
	datac => \Con_80p_io[40]~42\,
	datad => \U1|capt_a_s~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Selector21~2\,
	regout => \U1|capt_b_s~regout\);

-- Location: LC_X6_Y5_N3
\U1|acqu_pos|Bloc_MSS|Selector21~3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Selector21~3_combout\ = (\U1|acqu_pos|Bloc_MSS|Selector21~2\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\) # (!\U1|capt_b_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|acqu_pos|Bloc_MSS|Selector21~2\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW0~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\,
	datad => \U1|capt_b_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Selector21~3_combout\);

-- Location: LC_X7_Y4_N6
\U1|acqu_pos|Bloc_MSS|Fut~0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Fut~0_combout\ = ((\U1|capt_b_s~regout\ & ((!\U1|capt_a_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Fut~0_combout\);

-- Location: LC_X7_Y5_N5
\U1|acqu_pos|Bloc_MSS|WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr8~0_combout\ = (((!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\ & !\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr8~0_combout\);

-- Location: LC_X6_Y4_N9
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Selector21~0\) # ((\U1|acqu_pos|Bloc_MSS|Selector21~3_combout\) # ((\U1|acqu_pos|Bloc_MSS|Fut~0_combout\ & !\U1|acqu_pos|Bloc_MSS|WideOr8~0_combout\))), 
-- GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eefe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Selector21~0\,
	datab => \U1|acqu_pos|Bloc_MSS|Selector21~3_combout\,
	datac => \U1|acqu_pos|Bloc_MSS|Fut~0_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|WideOr8~0_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\);

-- Location: LC_X6_Y4_N0
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres~38_combout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\);

-- Location: LC_X6_Y4_N5
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\) # ((\U1|acqu_pos|Bloc_MSS|Fut~0_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\)))), 
-- GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , \U1|init_s~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Fut~0_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	sclr => \U1|init_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\);

-- Location: LC_X7_Y4_N7
\U1|acqu_pos|Bloc_MSS|Etat_Pres~41\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\ = ((!\U1|capt_b_s~regout\ & (!\U1|init_s~regout\ & \U1|capt_a_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|capt_b_s~regout\,
	datac => \U1|init_s~regout\,
	datad => \U1|capt_a_s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\);

-- Location: LC_X6_Y5_N6
\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\ = DFFEAS((\U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\ & ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\) # 
-- (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\)))), GLOBAL(\Clk_Main_i~combout\), GLOBAL(\nReset_i~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres~41_combout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CCW3~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_Start3~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\,
	aclr => \ALT_INV_nReset_i~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\);

-- Location: LC_X6_Y4_N8
\U1|acqu_pos|Bloc_MSS|WideOr15~1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\ = (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\ & (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\ & (!\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\ & !\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW3~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW1~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW0~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CW2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\);

-- Location: LC_X6_Y5_N1
\U1|acqu_pos|Bloc_MSS|WideOr15~0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr15~0_combout\ = ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW0~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr15~0_combout\);

-- Location: LC_X6_Y5_N5
\U1|acqu_pos|Bloc_MSS|WideOr15\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr15~combout\ = (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\) # ((\U1|acqu_pos|Bloc_MSS|WideOr15~0_combout\) # (!\U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW3~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_T_CCW2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|WideOr15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\);

-- Location: LC_X7_Y7_N2
\U1|acqu_pos|Bloc_position|cpt_pres[0]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(0) = DFFEAS(((!\U1|acqu_pos|Bloc_position|cpt_pres\(0))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[0]~1\ = CARRY(((\U1|acqu_pos|Bloc_position|cpt_pres\(0))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\ = CARRY(((\U1|acqu_pos|Bloc_position|cpt_pres\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(0),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(0),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[0]~1\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\);

-- Location: LC_X6_Y4_N6
\U1|acqu_pos|Bloc_MSS|WideOr16~0\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr16~0_combout\ = (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\) # ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\) # (\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW1~regout\,
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW2~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW3~regout\,
	datad => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_CW0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr16~0_combout\);

-- Location: LC_X6_Y4_N1
\U1|acqu_pos|Bloc_MSS|WideOr16~1\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ = ((\U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\) # ((\U1|acqu_pos|Bloc_MSS|WideOr16~0_combout\) # (!\U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|acqu_pos|Bloc_MSS|Etat_Pres.E_ERR~regout\,
	datac => \U1|acqu_pos|Bloc_MSS|WideOr16~0_combout\,
	datad => \U1|acqu_pos|Bloc_MSS|WideOr15~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\);

-- Location: LC_X7_Y7_N3
\U1|acqu_pos|Bloc_position|cpt_pres[1]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(1) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(1) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ ((!\U1|acqu_pos|Bloc_position|cpt_pres[0]~1\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , 
-- \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[1]~3\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(1) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[0]~1\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(1) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[0]~1\))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(1) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(1) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(1),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[0]~1\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[0]~1COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(1),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[1]~3\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\);

-- Location: LC_X7_Y7_N4
\U1|acqu_pos|Bloc_position|cpt_pres[2]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(2) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(2) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ ((\U1|acqu_pos|Bloc_position|cpt_pres[1]~3\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , 
-- \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(2) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(2) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(2),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[1]~3\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[1]~3COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(2),
	cout => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\);

-- Location: LC_X7_Y7_N5
\U1|acqu_pos|Bloc_position|cpt_pres[3]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(3) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(3) $ ((!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , 
-- \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[3]~7\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(3)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(3) & !\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(3)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(3) & !\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(3),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(3),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[3]~7\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\);

-- Location: LC_X7_Y7_N6
\U1|acqu_pos|Bloc_position|cpt_pres[4]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(4) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(4) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (((!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[3]~7\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[4]~9\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(4) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[3]~7\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(4) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[3]~7\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(4) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(4) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(4),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[3]~7\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[3]~7COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(4),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[4]~9\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\);

-- Location: LC_X7_Y7_N7
\U1|acqu_pos|Bloc_position|cpt_pres[5]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(5) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(5) $ ((!(!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[4]~9\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[5]~11\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[4]~9\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(5)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(5) & !\U1|acqu_pos|Bloc_position|cpt_pres[4]~9\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(5)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(5) & !\U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(5),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[4]~9\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[4]~9COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(5),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[5]~11\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\);

-- Location: LC_X7_Y7_N8
\U1|acqu_pos|Bloc_position|cpt_pres[6]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(6) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(6) $ (((!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[5]~11\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[6]~13\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & (\U1|acqu_pos|Bloc_position|cpt_pres\(6) & !\U1|acqu_pos|Bloc_position|cpt_pres[5]~11\)) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- ((\U1|acqu_pos|Bloc_position|cpt_pres\(6)) # (!\U1|acqu_pos|Bloc_position|cpt_pres[5]~11\))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & (\U1|acqu_pos|Bloc_position|cpt_pres\(6) & !\U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\)) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- ((\U1|acqu_pos|Bloc_position|cpt_pres\(6)) # (!\U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(6),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[5]~11\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[5]~11COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(6),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[6]~13\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\);

-- Location: LC_X7_Y7_N9
\U1|acqu_pos|Bloc_position|cpt_pres[7]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(7) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(7) $ ((!(!\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[6]~13\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[2]~5\ & \U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(7)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(7) & !\U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(7),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[2]~5\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[6]~13\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[6]~13COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(7),
	cout => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\);

-- Location: LC_X8_Y7_N0
\U1|acqu_pos|Bloc_position|cpt_pres[8]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(8) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(8) $ ((\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , 
-- \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[8]~17\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & (\U1|acqu_pos|Bloc_position|cpt_pres\(8) & !\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\)) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- ((\U1|acqu_pos|Bloc_position|cpt_pres\(8)) # (!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & (\U1|acqu_pos|Bloc_position|cpt_pres\(8) & !\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\)) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- ((\U1|acqu_pos|Bloc_position|cpt_pres\(8)) # (!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(8),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(8),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[8]~17\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\);

-- Location: LC_X8_Y7_N1
\U1|acqu_pos|Bloc_position|cpt_pres[9]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(9) = DFFEAS(\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (\U1|acqu_pos|Bloc_position|cpt_pres\(9) $ ((!(!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[8]~17\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[9]~19\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[8]~17\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(9)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(9) & !\U1|acqu_pos|Bloc_position|cpt_pres[8]~17\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\ = CARRY((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & ((!\U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(9)))) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & 
-- (!\U1|acqu_pos|Bloc_position|cpt_pres\(9) & !\U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(9),
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[8]~17\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[8]~17COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(9),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[9]~19\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\);

-- Location: LC_X8_Y7_N2
\U1|acqu_pos|Bloc_position|cpt_pres[10]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(10) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(10) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (((!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[9]~19\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[10]~21\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(10) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[9]~19\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(10) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[9]~19\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(10) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(10) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(10),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[9]~19\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[9]~19COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(10),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[10]~21\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\);

-- Location: LC_X8_Y7_N3
\U1|acqu_pos|Bloc_position|cpt_pres[11]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(11) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(11) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ ((!(!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[10]~21\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[11]~23\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(11) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[10]~21\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(11) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[10]~21\))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(11) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(11) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(11),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[10]~21\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[10]~21COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(11),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[11]~23\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\);

-- Location: LC_X8_Y7_N4
\U1|acqu_pos|Bloc_position|cpt_pres[12]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(12) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(12) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (((!\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[11]~23\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[7]~15\ & \U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(12) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(12) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(12),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[7]~15\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[11]~23\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[11]~23COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(12),
	cout => \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\);

-- Location: LC_X8_Y7_N5
\U1|acqu_pos|Bloc_position|cpt_pres[13]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(13) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(13) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ ((!\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), 
-- , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[13]~27\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(13) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(13) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\))))
-- \U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(13) & (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\)) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(13) & 
-- ((\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\) # (!\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(13),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(13),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[13]~27\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\);

-- Location: LC_X8_Y7_N6
\U1|acqu_pos|Bloc_position|cpt_pres[14]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(14) = DFFEAS(\U1|acqu_pos|Bloc_position|cpt_pres\(14) $ (\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ $ (((!\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ & \U1|acqu_pos|Bloc_position|cpt_pres[13]~27\) # 
-- (\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ & \U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\)))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )
-- \U1|acqu_pos|Bloc_position|cpt_pres[14]~29\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(14) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[13]~27\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(14) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[13]~27\)))
-- \U1|acqu_pos|Bloc_position|cpt_pres[14]~29COUT1_68\ = CARRY((\U1|acqu_pos|Bloc_position|cpt_pres\(14) & ((!\U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\) # (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))) # (!\U1|acqu_pos|Bloc_position|cpt_pres\(14) & 
-- (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\ & !\U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	dataa => \U1|acqu_pos|Bloc_position|cpt_pres\(14),
	datab => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[13]~27\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[13]~27COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(14),
	cout0 => \U1|acqu_pos|Bloc_position|cpt_pres[14]~29\,
	cout1 => \U1|acqu_pos|Bloc_position|cpt_pres[14]~29COUT1_68\);

-- Location: LC_X8_Y7_N7
\U1|acqu_pos|Bloc_position|cpt_pres[15]\ : maxv_lcell
-- Equation(s):
-- \U1|acqu_pos|Bloc_position|cpt_pres\(15) = DFFEAS((\U1|acqu_pos|Bloc_position|cpt_pres\(15) $ ((!\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ & \U1|acqu_pos|Bloc_position|cpt_pres[14]~29\) # (\U1|acqu_pos|Bloc_position|cpt_pres[12]~25\ & 
-- \U1|acqu_pos|Bloc_position|cpt_pres[14]~29COUT1_68\) $ (!\U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\))), GLOBAL(\Clk_Main_i~combout\), !GLOBAL(\U1|acqu_pos|reset_pos_s\), , \U1|acqu_pos|Bloc_MSS|WideOr15~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk_Main_i~combout\,
	datab => \U1|acqu_pos|Bloc_position|cpt_pres\(15),
	datad => \U1|acqu_pos|Bloc_MSS|WideOr16~1_combout\,
	aclr => \U1|acqu_pos|reset_pos_s\,
	ena => \U1|acqu_pos|Bloc_MSS|WideOr15~combout\,
	cin => \U1|acqu_pos|Bloc_position|cpt_pres[12]~25\,
	cin0 => \U1|acqu_pos|Bloc_position|cpt_pres[14]~29\,
	cin1 => \U1|acqu_pos|Bloc_position|cpt_pres[14]~29COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \U1|acqu_pos|Bloc_position|cpt_pres\(15));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk_Gen_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk_Gen_i);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_A_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_A_i);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Encoder_B_i~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Encoder_B_i);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(2));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\nButton_i[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_nButton_i(7));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|ALT_INV_Etat_Pres\(2),
	oe => VCC,
	padio => ww_nLed_o(0));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|ALT_INV_Etat_Pres\(0),
	oe => VCC,
	padio => ww_nLed_o(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|ALT_INV_Etat_Pres\(1),
	oe => VCC,
	padio => ww_nLed_o(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Con_80p_io[2]~4\,
	oe => VCC,
	padio => ww_nLed_o(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|Etat_Pres\(2),
	oe => VCC,
	padio => ww_nLed_o(4));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(5));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nLed_o(6));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nLed_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \nButton_i~combout\(8),
	oe => VCC,
	padio => ww_nLed_o(7));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Led_RGB_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_Led_RGB_o(2));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(0));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(1));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(3));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(4));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_nSeven_Seg_o(5));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_nSeven_Seg_o(6));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\nSeven_Seg_o[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_Cpt_s(19),
	oe => VCC,
	padio => ww_nSeven_Seg_o(7));

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(1));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(2));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(5));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(6));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(7));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(8));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(9));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(10));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(11));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(12));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(13));

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(14));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(15));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(16));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(17));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(18));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(19));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(20));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(21));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(22));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(23));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(24));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_25p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_25p_io(25));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(3));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(0),
	oe => VCC,
	padio => Con_80p_io(4));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(1),
	oe => VCC,
	padio => Con_80p_io(5));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(2),
	oe => VCC,
	padio => Con_80p_io(6));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(3),
	oe => VCC,
	padio => Con_80p_io(7));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(4),
	oe => VCC,
	padio => Con_80p_io(8));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(5),
	oe => VCC,
	padio => Con_80p_io(9));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(6),
	oe => VCC,
	padio => Con_80p_io(10));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(7),
	oe => VCC,
	padio => Con_80p_io(11));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(8),
	oe => VCC,
	padio => Con_80p_io(12));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(9),
	oe => VCC,
	padio => Con_80p_io(13));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(10),
	oe => VCC,
	padio => Con_80p_io(14));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(11),
	oe => VCC,
	padio => Con_80p_io(15));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(12),
	oe => VCC,
	padio => Con_80p_io(16));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(13),
	oe => VCC,
	padio => Con_80p_io(17));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(14),
	oe => VCC,
	padio => Con_80p_io(18));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|acqu_pos|Bloc_position|cpt_pres\(15),
	oe => VCC,
	padio => Con_80p_io(19));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(20));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(21));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(22));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(23));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(24));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(25));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(26));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(27));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(28));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(29));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(30));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(31));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(32));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(33));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[34]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(34));

-- Location: PIN_L15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[35]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(35));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[36]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(36));

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[37]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(37));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[38]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(38));

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[41]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(41));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[42]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(42));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[43]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(43));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[44]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(44));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[45]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(45));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[46]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(46));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[47]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(47));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[48]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(48));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[49]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(49));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[50]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(50));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[51]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(51));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[52]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(52));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[53]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(53));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[54]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(54));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[55]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(55));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[56]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|Etat_Pres\(1),
	oe => VCC,
	padio => Con_80p_io(56));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[57]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \U1|mss|Etat_Pres\(0),
	oe => VCC,
	padio => Con_80p_io(57));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[58]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(58));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[59]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(59));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[60]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(60));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[61]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(61));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[62]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(62));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[63]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(63));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[64]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(64));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[65]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(65));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[66]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(66));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[67]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(67));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[68]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(68));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[69]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(69));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[70]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(70));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[71]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(71));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[72]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(72));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[73]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(73));

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[74]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(74));

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[75]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Con_80p_io(75));

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[76]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(76));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[77]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(77));

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[78]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => Con_80p_io(78));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Con_80p_io[79]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \Switch_i~combout\(2),
	oe => VCC,
	padio => Con_80p_io(79));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(5));

-- Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(6));

-- Location: PIN_R16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(7));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(8));

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(9));

-- Location: PIN_R14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(11));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(13));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(14));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(15));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(16));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(17));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(18));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	open_drain_output => "true",
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => Mezzanine_io(19));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mezzanine_io[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "bidir")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_nButton_i~combout\(8),
	oe => VCC,
	padio => Mezzanine_io(20));
END structure;


