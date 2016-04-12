-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "02/09/2016 17:58:59"

-- 
-- Device: Altera EP2AGX45DF29I5 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ARRIAII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rle IS
    PORT (
	clk : IN std_logic;
	nreset : IN std_logic;
	start : IN std_logic;
	message_addr : IN std_logic_vector(31 DOWNTO 0);
	message_size : IN std_logic_vector(31 DOWNTO 0);
	rle_addr : IN std_logic_vector(31 DOWNTO 0);
	rle_size : BUFFER std_logic_vector(31 DOWNTO 0);
	done : BUFFER std_logic;
	port_A_clk : BUFFER std_logic;
	port_A_data_in : BUFFER std_logic_vector(31 DOWNTO 0);
	port_A_data_out : IN std_logic_vector(31 DOWNTO 0);
	port_A_addr : BUFFER std_logic_vector(15 DOWNTO 0);
	port_A_we : BUFFER std_logic
	);
END rle;

-- Design Ports Information
-- message_addr[16]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[17]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[18]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[19]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[20]	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[21]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[22]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[23]	=>  Location: PIN_AH5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[24]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[25]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[26]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[27]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[28]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[29]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[30]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[31]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[16]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[17]	=>  Location: PIN_AE21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[18]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[19]	=>  Location: PIN_F23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[20]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[21]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[22]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[23]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[24]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[25]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[26]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[27]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[28]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[29]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[30]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[31]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[2]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[4]	=>  Location: PIN_R4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[5]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[6]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[7]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[8]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[9]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[10]	=>  Location: PIN_AB1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[11]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[12]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[13]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[14]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[15]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[16]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[17]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[18]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[19]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[20]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[21]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[22]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[23]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[24]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[25]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[26]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[27]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[28]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[29]	=>  Location: PIN_AH6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[30]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_size[31]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- done	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_clk	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[0]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[1]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[2]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[4]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[5]	=>  Location: PIN_AF1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[6]	=>  Location: PIN_AD9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[7]	=>  Location: PIN_AG1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[8]	=>  Location: PIN_AC6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[9]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[10]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[11]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[12]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[13]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[14]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[15]	=>  Location: PIN_Y5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[16]	=>  Location: PIN_AC1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[17]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[18]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[19]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[20]	=>  Location: PIN_AD6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[21]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[22]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[23]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[24]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[25]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[26]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[27]	=>  Location: PIN_U4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[28]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[29]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[30]	=>  Location: PIN_H3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_in[31]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[0]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[1]	=>  Location: PIN_AE3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[2]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[5]	=>  Location: PIN_AF6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[6]	=>  Location: PIN_AE5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[7]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[9]	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[10]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[11]	=>  Location: PIN_D4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[12]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[13]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[14]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_addr[15]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_we	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[15]	=>  Location: PIN_AG3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[0]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[1]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[4]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[3]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[7]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[6]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[5]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[14]	=>  Location: PIN_AD1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[13]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[12]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[11]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[9]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[10]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[8]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[21]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[22]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[23]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[24]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[25]	=>  Location: PIN_AC2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[26]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[27]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[16]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[17]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[18]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[19]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[20]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[28]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[29]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[30]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_size[31]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[0]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[0]	=>  Location: PIN_AF3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[1]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[2]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[2]	=>  Location: PIN_AE9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[3]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[4]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[4]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[5]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[5]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[6]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[6]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[7]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[7]	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[8]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[8]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[9]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[9]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[10]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[11]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[11]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[12]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[12]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[13]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[13]	=>  Location: PIN_W11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[14]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[14]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rle_addr[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- message_addr[15]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nreset	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[5]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[0]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[2]	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[3]	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[4]	=>  Location: PIN_K3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[14]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[15]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[9]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[10]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[11]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[12]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[21]	=>  Location: PIN_AE4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[22]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[23]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[16]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[17]	=>  Location: PIN_AE1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[18]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[19]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[20]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[29]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[30]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[31]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[24]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[25]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[26]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[27]	=>  Location: PIN_AH2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- port_A_data_out[28]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF rle IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_nreset : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_message_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_message_size : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rle_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rle_size : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_done : std_logic;
SIGNAL ww_port_A_clk : std_logic;
SIGNAL ww_port_A_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_port_A_data_out : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_port_A_addr : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_port_A_we : std_logic;
SIGNAL \message_addr[16]~input_o\ : std_logic;
SIGNAL \message_addr[17]~input_o\ : std_logic;
SIGNAL \message_addr[18]~input_o\ : std_logic;
SIGNAL \message_addr[19]~input_o\ : std_logic;
SIGNAL \message_addr[20]~input_o\ : std_logic;
SIGNAL \message_addr[21]~input_o\ : std_logic;
SIGNAL \message_addr[22]~input_o\ : std_logic;
SIGNAL \message_addr[23]~input_o\ : std_logic;
SIGNAL \message_addr[24]~input_o\ : std_logic;
SIGNAL \message_addr[25]~input_o\ : std_logic;
SIGNAL \message_addr[26]~input_o\ : std_logic;
SIGNAL \message_addr[27]~input_o\ : std_logic;
SIGNAL \message_addr[28]~input_o\ : std_logic;
SIGNAL \message_addr[29]~input_o\ : std_logic;
SIGNAL \message_addr[30]~input_o\ : std_logic;
SIGNAL \message_addr[31]~input_o\ : std_logic;
SIGNAL \rle_addr[16]~input_o\ : std_logic;
SIGNAL \rle_addr[17]~input_o\ : std_logic;
SIGNAL \rle_addr[18]~input_o\ : std_logic;
SIGNAL \rle_addr[19]~input_o\ : std_logic;
SIGNAL \rle_addr[20]~input_o\ : std_logic;
SIGNAL \rle_addr[21]~input_o\ : std_logic;
SIGNAL \rle_addr[22]~input_o\ : std_logic;
SIGNAL \rle_addr[23]~input_o\ : std_logic;
SIGNAL \rle_addr[24]~input_o\ : std_logic;
SIGNAL \rle_addr[25]~input_o\ : std_logic;
SIGNAL \rle_addr[26]~input_o\ : std_logic;
SIGNAL \rle_addr[27]~input_o\ : std_logic;
SIGNAL \rle_addr[28]~input_o\ : std_logic;
SIGNAL \rle_addr[29]~input_o\ : std_logic;
SIGNAL \rle_addr[30]~input_o\ : std_logic;
SIGNAL \rle_addr[31]~input_o\ : std_logic;
SIGNAL \rle_size[0]~output_o\ : std_logic;
SIGNAL \rle_size[1]~output_o\ : std_logic;
SIGNAL \rle_size[2]~output_o\ : std_logic;
SIGNAL \rle_size[3]~output_o\ : std_logic;
SIGNAL \rle_size[4]~output_o\ : std_logic;
SIGNAL \rle_size[5]~output_o\ : std_logic;
SIGNAL \rle_size[6]~output_o\ : std_logic;
SIGNAL \rle_size[7]~output_o\ : std_logic;
SIGNAL \rle_size[8]~output_o\ : std_logic;
SIGNAL \rle_size[9]~output_o\ : std_logic;
SIGNAL \rle_size[10]~output_o\ : std_logic;
SIGNAL \rle_size[11]~output_o\ : std_logic;
SIGNAL \rle_size[12]~output_o\ : std_logic;
SIGNAL \rle_size[13]~output_o\ : std_logic;
SIGNAL \rle_size[14]~output_o\ : std_logic;
SIGNAL \rle_size[15]~output_o\ : std_logic;
SIGNAL \rle_size[16]~output_o\ : std_logic;
SIGNAL \rle_size[17]~output_o\ : std_logic;
SIGNAL \rle_size[18]~output_o\ : std_logic;
SIGNAL \rle_size[19]~output_o\ : std_logic;
SIGNAL \rle_size[20]~output_o\ : std_logic;
SIGNAL \rle_size[21]~output_o\ : std_logic;
SIGNAL \rle_size[22]~output_o\ : std_logic;
SIGNAL \rle_size[23]~output_o\ : std_logic;
SIGNAL \rle_size[24]~output_o\ : std_logic;
SIGNAL \rle_size[25]~output_o\ : std_logic;
SIGNAL \rle_size[26]~output_o\ : std_logic;
SIGNAL \rle_size[27]~output_o\ : std_logic;
SIGNAL \rle_size[28]~output_o\ : std_logic;
SIGNAL \rle_size[29]~output_o\ : std_logic;
SIGNAL \rle_size[30]~output_o\ : std_logic;
SIGNAL \rle_size[31]~output_o\ : std_logic;
SIGNAL \done~output_o\ : std_logic;
SIGNAL \port_A_clk~output_o\ : std_logic;
SIGNAL \port_A_data_in[0]~output_o\ : std_logic;
SIGNAL \port_A_data_in[1]~output_o\ : std_logic;
SIGNAL \port_A_data_in[2]~output_o\ : std_logic;
SIGNAL \port_A_data_in[3]~output_o\ : std_logic;
SIGNAL \port_A_data_in[4]~output_o\ : std_logic;
SIGNAL \port_A_data_in[5]~output_o\ : std_logic;
SIGNAL \port_A_data_in[6]~output_o\ : std_logic;
SIGNAL \port_A_data_in[7]~output_o\ : std_logic;
SIGNAL \port_A_data_in[8]~output_o\ : std_logic;
SIGNAL \port_A_data_in[9]~output_o\ : std_logic;
SIGNAL \port_A_data_in[10]~output_o\ : std_logic;
SIGNAL \port_A_data_in[11]~output_o\ : std_logic;
SIGNAL \port_A_data_in[12]~output_o\ : std_logic;
SIGNAL \port_A_data_in[13]~output_o\ : std_logic;
SIGNAL \port_A_data_in[14]~output_o\ : std_logic;
SIGNAL \port_A_data_in[15]~output_o\ : std_logic;
SIGNAL \port_A_data_in[16]~output_o\ : std_logic;
SIGNAL \port_A_data_in[17]~output_o\ : std_logic;
SIGNAL \port_A_data_in[18]~output_o\ : std_logic;
SIGNAL \port_A_data_in[19]~output_o\ : std_logic;
SIGNAL \port_A_data_in[20]~output_o\ : std_logic;
SIGNAL \port_A_data_in[21]~output_o\ : std_logic;
SIGNAL \port_A_data_in[22]~output_o\ : std_logic;
SIGNAL \port_A_data_in[23]~output_o\ : std_logic;
SIGNAL \port_A_data_in[24]~output_o\ : std_logic;
SIGNAL \port_A_data_in[25]~output_o\ : std_logic;
SIGNAL \port_A_data_in[26]~output_o\ : std_logic;
SIGNAL \port_A_data_in[27]~output_o\ : std_logic;
SIGNAL \port_A_data_in[28]~output_o\ : std_logic;
SIGNAL \port_A_data_in[29]~output_o\ : std_logic;
SIGNAL \port_A_data_in[30]~output_o\ : std_logic;
SIGNAL \port_A_data_in[31]~output_o\ : std_logic;
SIGNAL \port_A_addr[0]~output_o\ : std_logic;
SIGNAL \port_A_addr[1]~output_o\ : std_logic;
SIGNAL \port_A_addr[2]~output_o\ : std_logic;
SIGNAL \port_A_addr[3]~output_o\ : std_logic;
SIGNAL \port_A_addr[4]~output_o\ : std_logic;
SIGNAL \port_A_addr[5]~output_o\ : std_logic;
SIGNAL \port_A_addr[6]~output_o\ : std_logic;
SIGNAL \port_A_addr[7]~output_o\ : std_logic;
SIGNAL \port_A_addr[8]~output_o\ : std_logic;
SIGNAL \port_A_addr[9]~output_o\ : std_logic;
SIGNAL \port_A_addr[10]~output_o\ : std_logic;
SIGNAL \port_A_addr[11]~output_o\ : std_logic;
SIGNAL \port_A_addr[12]~output_o\ : std_logic;
SIGNAL \port_A_addr[13]~output_o\ : std_logic;
SIGNAL \port_A_addr[14]~output_o\ : std_logic;
SIGNAL \port_A_addr[15]~output_o\ : std_logic;
SIGNAL \port_A_we~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \nreset~input_o\ : std_logic;
SIGNAL \rle_siz~4_combout\ : std_logic;
SIGNAL \wr_amt[9]~0_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \port_A_data_out[5]~input_o\ : std_logic;
SIGNAL \d_in[5]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[13]~input_o\ : std_logic;
SIGNAL \d_in[13]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[21]~input_o\ : std_logic;
SIGNAL \d_in[21]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[29]~input_o\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \d_in_shft_ct[27]~1_combout\ : std_logic;
SIGNAL \d_in_shft_ct[27]~2_combout\ : std_logic;
SIGNAL \state~11_combout\ : std_logic;
SIGNAL \state~12_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \rd_amt[10]~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \message_size[15]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \message_size[21]~input_o\ : std_logic;
SIGNAL \message_size[24]~input_o\ : std_logic;
SIGNAL \message_size[22]~input_o\ : std_logic;
SIGNAL \message_size[26]~input_o\ : std_logic;
SIGNAL \message_size[27]~input_o\ : std_logic;
SIGNAL \message_size[23]~input_o\ : std_logic;
SIGNAL \message_size[25]~input_o\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \message_size[29]~input_o\ : std_logic;
SIGNAL \message_size[30]~input_o\ : std_logic;
SIGNAL \message_size[28]~input_o\ : std_logic;
SIGNAL \message_size[31]~input_o\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \message_size[19]~input_o\ : std_logic;
SIGNAL \message_size[17]~input_o\ : std_logic;
SIGNAL \message_size[16]~input_o\ : std_logic;
SIGNAL \message_size[20]~input_o\ : std_logic;
SIGNAL \message_size[18]~input_o\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \message_size[9]~input_o\ : std_logic;
SIGNAL \message_size[13]~input_o\ : std_logic;
SIGNAL \message_size[12]~input_o\ : std_logic;
SIGNAL \message_size[14]~input_o\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \message_size[11]~input_o\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \message_size[10]~input_o\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \message_size[8]~input_o\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \message_size[4]~input_o\ : std_logic;
SIGNAL \message_size[3]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \message_size[2]~input_o\ : std_logic;
SIGNAL \message_size[1]~input_o\ : std_logic;
SIGNAL \message_size[0]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \message_size[5]~input_o\ : std_logic;
SIGNAL \message_size[7]~input_o\ : std_logic;
SIGNAL \message_size[6]~input_o\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \wr_done~0_combout\ : std_logic;
SIGNAL \wr_done~q\ : std_logic;
SIGNAL \read_frst~0_combout\ : std_logic;
SIGNAL \read_frst~q\ : std_logic;
SIGNAL \d_in_shft_ct[27]~0_combout\ : std_logic;
SIGNAL \port_A_data_out[7]~input_o\ : std_logic;
SIGNAL \d_in[7]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[15]~input_o\ : std_logic;
SIGNAL \d_in[15]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[23]~input_o\ : std_logic;
SIGNAL \d_in[23]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[31]~input_o\ : std_logic;
SIGNAL \port_A_data_out[4]~input_o\ : std_logic;
SIGNAL \d_in[4]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[12]~input_o\ : std_logic;
SIGNAL \d_in[12]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[20]~input_o\ : std_logic;
SIGNAL \d_in[20]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[28]~input_o\ : std_logic;
SIGNAL \port_A_data_out[6]~input_o\ : std_logic;
SIGNAL \d_in[6]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[14]~input_o\ : std_logic;
SIGNAL \d_in[14]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[22]~input_o\ : std_logic;
SIGNAL \d_in[22]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[30]~input_o\ : std_logic;
SIGNAL \port_A_data_out[1]~input_o\ : std_logic;
SIGNAL \d_in[1]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[9]~input_o\ : std_logic;
SIGNAL \d_in[9]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[17]~input_o\ : std_logic;
SIGNAL \d_in[17]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[25]~input_o\ : std_logic;
SIGNAL \port_A_data_out[2]~input_o\ : std_logic;
SIGNAL \d_in[2]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[10]~input_o\ : std_logic;
SIGNAL \d_in[10]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[18]~input_o\ : std_logic;
SIGNAL \d_in[18]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[26]~input_o\ : std_logic;
SIGNAL \port_A_data_out[3]~input_o\ : std_logic;
SIGNAL \d_in[3]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[11]~input_o\ : std_logic;
SIGNAL \d_in[11]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[19]~input_o\ : std_logic;
SIGNAL \d_in[19]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[27]~input_o\ : std_logic;
SIGNAL \port_A_data_out[0]~input_o\ : std_logic;
SIGNAL \d_in[0]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[8]~input_o\ : std_logic;
SIGNAL \d_in[8]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[16]~input_o\ : std_logic;
SIGNAL \d_in[16]~feeder_combout\ : std_logic;
SIGNAL \port_A_data_out[24]~input_o\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \d_in_shft_ct[27]~3_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \Add5~10\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~37_sumout\ : std_logic;
SIGNAL \Add5~38\ : std_logic;
SIGNAL \Add5~41_sumout\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~45_sumout\ : std_logic;
SIGNAL \d_in_shft_ct[11]~feeder_combout\ : std_logic;
SIGNAL \Add5~46\ : std_logic;
SIGNAL \Add5~49_sumout\ : std_logic;
SIGNAL \Add5~50\ : std_logic;
SIGNAL \Add5~53_sumout\ : std_logic;
SIGNAL \Add5~54\ : std_logic;
SIGNAL \Add5~57_sumout\ : std_logic;
SIGNAL \Add5~58\ : std_logic;
SIGNAL \Add5~61_sumout\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~65_sumout\ : std_logic;
SIGNAL \Add5~66\ : std_logic;
SIGNAL \Add5~69_sumout\ : std_logic;
SIGNAL \Add5~70\ : std_logic;
SIGNAL \Add5~73_sumout\ : std_logic;
SIGNAL \Add5~74\ : std_logic;
SIGNAL \Add5~77_sumout\ : std_logic;
SIGNAL \Add5~78\ : std_logic;
SIGNAL \Add5~81_sumout\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~85_sumout\ : std_logic;
SIGNAL \Add5~86\ : std_logic;
SIGNAL \Add5~89_sumout\ : std_logic;
SIGNAL \Add5~90\ : std_logic;
SIGNAL \Add5~93_sumout\ : std_logic;
SIGNAL \Add5~94\ : std_logic;
SIGNAL \Add5~97_sumout\ : std_logic;
SIGNAL \Add5~98\ : std_logic;
SIGNAL \Add5~101_sumout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~105_sumout\ : std_logic;
SIGNAL \Add5~106\ : std_logic;
SIGNAL \Add5~109_sumout\ : std_logic;
SIGNAL \Add5~110\ : std_logic;
SIGNAL \Add5~113_sumout\ : std_logic;
SIGNAL \Add5~114\ : std_logic;
SIGNAL \Add5~117_sumout\ : std_logic;
SIGNAL \Add5~118\ : std_logic;
SIGNAL \Add5~121_sumout\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add5~125_sumout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6DUPLICATE_combout\ : std_logic;
SIGNAL \d_in[7]~0_combout\ : std_logic;
SIGNAL \rle_siz[12]~0_combout\ : std_logic;
SIGNAL \prev_val[6]~0_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \prev_val[6]~1_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \rle_siz~2_combout\ : std_logic;
SIGNAL \buff_on~0_combout\ : std_logic;
SIGNAL \buff_on~q\ : std_logic;
SIGNAL \buff~3_combout\ : std_logic;
SIGNAL \buff_full~0_combout\ : std_logic;
SIGNAL \buff_full~q\ : std_logic;
SIGNAL \state~17_combout\ : std_logic;
SIGNAL \state~15_combout\ : std_logic;
SIGNAL \state~16_combout\ : std_logic;
SIGNAL \state~18_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \state~19_combout\ : std_logic;
SIGNAL \state.010~q\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \d_in_empty~0_combout\ : std_logic;
SIGNAL \d_in_empty~q\ : std_logic;
SIGNAL \state~22_combout\ : std_logic;
SIGNAL \state~20_combout\ : std_logic;
SIGNAL \state~21_combout\ : std_logic;
SIGNAL \state~23_combout\ : std_logic;
SIGNAL \state.011~q\ : std_logic;
SIGNAL \state~24_combout\ : std_logic;
SIGNAL \state~25_combout\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state.001~q\ : std_logic;
SIGNAL \rle_siz~3_combout\ : std_logic;
SIGNAL \Add4~1_sumout\ : std_logic;
SIGNAL \prev_run~8_combout\ : std_logic;
SIGNAL \prev_run[4]~1_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add4~5_sumout\ : std_logic;
SIGNAL \prev_run~0_combout\ : std_logic;
SIGNAL \Add4~6\ : std_logic;
SIGNAL \Add4~9_sumout\ : std_logic;
SIGNAL \prev_run~2_combout\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~13_sumout\ : std_logic;
SIGNAL \prev_run~3_combout\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~17_sumout\ : std_logic;
SIGNAL \prev_run~5_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~21_sumout\ : std_logic;
SIGNAL \prev_run~7_combout\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~25_sumout\ : std_logic;
SIGNAL \prev_run~4_combout\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~29_sumout\ : std_logic;
SIGNAL \prev_run~6_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \rle_siz~1_combout\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \rle_siz~5_combout\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \rle_siz~6_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \rle_siz[12]~7_combout\ : std_logic;
SIGNAL \rle_siz[12]~8_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \rle_siz~9_combout\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \rle_siz~10_combout\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \rle_siz~11_combout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \rle_siz~12_combout\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \rle_siz~13_combout\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \rle_siz~14_combout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \rle_siz~15_combout\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \Add3~34\ : std_logic;
SIGNAL \Add3~37_sumout\ : std_logic;
SIGNAL \rle_siz~16_combout\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add3~38\ : std_logic;
SIGNAL \Add3~41_sumout\ : std_logic;
SIGNAL \rle_siz~17_combout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~45_sumout\ : std_logic;
SIGNAL \rle_siz~18_combout\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~45_sumout\ : std_logic;
SIGNAL \Add3~46\ : std_logic;
SIGNAL \Add3~49_sumout\ : std_logic;
SIGNAL \rle_siz~19_combout\ : std_logic;
SIGNAL \Add2~46\ : std_logic;
SIGNAL \Add2~49_sumout\ : std_logic;
SIGNAL \Add3~50\ : std_logic;
SIGNAL \Add3~53_sumout\ : std_logic;
SIGNAL \rle_siz~20_combout\ : std_logic;
SIGNAL \Add2~50\ : std_logic;
SIGNAL \Add2~53_sumout\ : std_logic;
SIGNAL \Add3~54\ : std_logic;
SIGNAL \Add3~57_sumout\ : std_logic;
SIGNAL \rle_siz~21_combout\ : std_logic;
SIGNAL \done~0_combout\ : std_logic;
SIGNAL \buff[8]~1_combout\ : std_logic;
SIGNAL \buff[8]~0_combout\ : std_logic;
SIGNAL \buff[8]~2_combout\ : std_logic;
SIGNAL \buff~4_combout\ : std_logic;
SIGNAL \buff[16]~5_combout\ : std_logic;
SIGNAL \buff~6_combout\ : std_logic;
SIGNAL \buff~7_combout\ : std_logic;
SIGNAL \buff~8_combout\ : std_logic;
SIGNAL \buff~9_combout\ : std_logic;
SIGNAL \buff~10_combout\ : std_logic;
SIGNAL \buff~11_combout\ : std_logic;
SIGNAL \buff~12_combout\ : std_logic;
SIGNAL \buff~13_combout\ : std_logic;
SIGNAL \buff~14_combout\ : std_logic;
SIGNAL \buff~15_combout\ : std_logic;
SIGNAL \buff~16_combout\ : std_logic;
SIGNAL \buff~17_combout\ : std_logic;
SIGNAL \buff~18_combout\ : std_logic;
SIGNAL \buff~19_combout\ : std_logic;
SIGNAL \buff~20_combout\ : std_logic;
SIGNAL \message_addr[0]~input_o\ : std_logic;
SIGNAL \rle_addr[0]~input_o\ : std_logic;
SIGNAL \port_A_addr~0_combout\ : std_logic;
SIGNAL \rle_addr[1]~input_o\ : std_logic;
SIGNAL \message_addr[1]~input_o\ : std_logic;
SIGNAL \port_A_addr~1_combout\ : std_logic;
SIGNAL \message_addr[2]~input_o\ : std_logic;
SIGNAL \rle_addr[2]~input_o\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \wr_amt[9]~1_combout\ : std_logic;
SIGNAL \wr_amt[9]~2_combout\ : std_logic;
SIGNAL \Add6~2_sumout\ : std_logic;
SIGNAL \rle_addr[3]~input_o\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \message_addr[3]~input_o\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~6_sumout\ : std_logic;
SIGNAL \message_addr[4]~input_o\ : std_logic;
SIGNAL \rle_addr[4]~input_o\ : std_logic;
SIGNAL \Add6~9_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~11_sumout\ : std_logic;
SIGNAL \rle_addr[5]~input_o\ : std_logic;
SIGNAL \message_addr[5]~input_o\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~15_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \rle_addr[6]~input_o\ : std_logic;
SIGNAL \message_addr[6]~input_o\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add6~16\ : std_logic;
SIGNAL \Add6~20_sumout\ : std_logic;
SIGNAL \rle_addr[7]~input_o\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \message_addr[7]~input_o\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~24_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \message_addr[8]~input_o\ : std_logic;
SIGNAL \rle_addr[8]~input_o\ : std_logic;
SIGNAL \Add6~27_combout\ : std_logic;
SIGNAL \Add6~25\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \rle_addr[9]~input_o\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \message_addr[9]~input_o\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \message_addr[10]~input_o\ : std_logic;
SIGNAL \rle_addr[10]~input_o\ : std_logic;
SIGNAL \Add6~36_combout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~38_sumout\ : std_logic;
SIGNAL \rle_addr[11]~input_o\ : std_logic;
SIGNAL \message_addr[11]~input_o\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add6~39\ : std_logic;
SIGNAL \Add6~42_sumout\ : std_logic;
SIGNAL \rle_addr[12]~input_o\ : std_logic;
SIGNAL \message_addr[12]~input_o\ : std_logic;
SIGNAL \Add6~45_combout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \Add6~43\ : std_logic;
SIGNAL \Add6~47_sumout\ : std_logic;
SIGNAL \rle_addr[13]~input_o\ : std_logic;
SIGNAL \message_addr[13]~input_o\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \Add6~48\ : std_logic;
SIGNAL \Add6~51_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \rle_addr[14]~input_o\ : std_logic;
SIGNAL \message_addr[14]~input_o\ : std_logic;
SIGNAL \Add6~54_combout\ : std_logic;
SIGNAL \Add6~52\ : std_logic;
SIGNAL \Add6~56_sumout\ : std_logic;
SIGNAL \rle_addr[15]~input_o\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \message_addr[15]~input_o\ : std_logic;
SIGNAL \Add6~57\ : std_logic;
SIGNAL \Add6~60_sumout\ : std_logic;
SIGNAL rle_siz : std_logic_vector(15 DOWNTO 0);
SIGNAL rd_amt : std_logic_vector(15 DOWNTO 0);
SIGNAL buff : std_logic_vector(31 DOWNTO 0);
SIGNAL wr_amt : std_logic_vector(15 DOWNTO 0);
SIGNAL prev_run : std_logic_vector(7 DOWNTO 0);
SIGNAL d_in : std_logic_vector(31 DOWNTO 0);
SIGNAL prev_val : std_logic_vector(7 DOWNTO 0);
SIGNAL d_in_shft_ct : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_Add3~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add2~1_sumout\ : std_logic;
SIGNAL ALT_INV_d_in_shft_ct : std_logic_vector(31 DOWNTO 0);
SIGNAL ALT_INV_prev_val : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_d_in : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~6DUPLICATE_combout\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_port_A_data_out[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_start~input_o\ : std_logic;
SIGNAL \ALT_INV_nreset~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_rle_addr[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[17]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[27]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[25]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[24]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[22]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[21]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_message_size[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_state~27_combout\ : std_logic;
SIGNAL \ALT_INV_state~25_combout\ : std_logic;
SIGNAL \ALT_INV_state~24_combout\ : std_logic;
SIGNAL \ALT_INV_d_in_shft_ct[27]~2_combout\ : std_logic;
SIGNAL \ALT_INV_prev_val[6]~0_combout\ : std_logic;
SIGNAL \ALT_INV_d_in_shft_ct[27]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~22_combout\ : std_logic;
SIGNAL \ALT_INV_state~21_combout\ : std_logic;
SIGNAL \ALT_INV_state~20_combout\ : std_logic;
SIGNAL \ALT_INV_state~18_combout\ : std_logic;
SIGNAL \ALT_INV_state~17_combout\ : std_logic;
SIGNAL \ALT_INV_state~16_combout\ : std_logic;
SIGNAL \ALT_INV_state~15_combout\ : std_logic;
SIGNAL \ALT_INV_buff_full~q\ : std_logic;
SIGNAL \ALT_INV_always0~5_combout\ : std_logic;
SIGNAL \ALT_INV_state~14_combout\ : std_logic;
SIGNAL \ALT_INV_always0~4_combout\ : std_logic;
SIGNAL \ALT_INV_state~13_combout\ : std_logic;
SIGNAL \ALT_INV_always0~3_combout\ : std_logic;
SIGNAL \ALT_INV_buff~3_combout\ : std_logic;
SIGNAL \ALT_INV_buff[8]~1_combout\ : std_logic;
SIGNAL \ALT_INV_buff[8]~0_combout\ : std_logic;
SIGNAL \ALT_INV_wr_amt[9]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state~12_combout\ : std_logic;
SIGNAL \ALT_INV_d_in_empty~q\ : std_logic;
SIGNAL \ALT_INV_state~11_combout\ : std_logic;
SIGNAL \ALT_INV_rle_siz[12]~7_combout\ : std_logic;
SIGNAL \ALT_INV_always0~2_combout\ : std_logic;
SIGNAL \ALT_INV_rle_siz~4_combout\ : std_logic;
SIGNAL \ALT_INV_rle_siz~3_combout\ : std_logic;
SIGNAL \ALT_INV_state.001~q\ : std_logic;
SIGNAL \ALT_INV_rle_siz~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~6_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rle_siz~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \ALT_INV_read_frst~q\ : std_logic;
SIGNAL \ALT_INV_buff_on~q\ : std_logic;
SIGNAL \ALT_INV_rle_siz[12]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.011~q\ : std_logic;
SIGNAL \ALT_INV_Add6~54_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~45_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~36_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~27_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~18_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~9_combout\ : std_logic;
SIGNAL \ALT_INV_Add6~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.010~q\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_wr_done~q\ : std_logic;
SIGNAL ALT_INV_rle_siz : std_logic_vector(15 DOWNTO 1);
SIGNAL \ALT_INV_Add5~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL ALT_INV_prev_run : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Add3~1_sumout\ : std_logic;
SIGNAL ALT_INV_wr_amt : std_logic_vector(15 DOWNTO 2);
SIGNAL ALT_INV_buff : std_logic_vector(31 DOWNTO 16);
SIGNAL ALT_INV_rd_amt : std_logic_vector(15 DOWNTO 2);

BEGIN

ww_clk <= clk;
ww_nreset <= nreset;
ww_start <= start;
ww_message_addr <= message_addr;
ww_message_size <= message_size;
ww_rle_addr <= rle_addr;
rle_size <= ww_rle_size;
done <= ww_done;
port_A_clk <= ww_port_A_clk;
port_A_data_in <= ww_port_A_data_in;
ww_port_A_data_out <= port_A_data_out;
port_A_addr <= ww_port_A_addr;
port_A_we <= ww_port_A_we;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Add3~57_sumout\ <= NOT \Add3~57_sumout\;
\ALT_INV_Add2~53_sumout\ <= NOT \Add2~53_sumout\;
\ALT_INV_Add3~53_sumout\ <= NOT \Add3~53_sumout\;
\ALT_INV_Add2~49_sumout\ <= NOT \Add2~49_sumout\;
\ALT_INV_Add3~49_sumout\ <= NOT \Add3~49_sumout\;
\ALT_INV_Add2~45_sumout\ <= NOT \Add2~45_sumout\;
\ALT_INV_Add3~45_sumout\ <= NOT \Add3~45_sumout\;
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add3~41_sumout\ <= NOT \Add3~41_sumout\;
\ALT_INV_Add2~37_sumout\ <= NOT \Add2~37_sumout\;
\ALT_INV_Add3~37_sumout\ <= NOT \Add3~37_sumout\;
\ALT_INV_Add2~33_sumout\ <= NOT \Add2~33_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
\ALT_INV_Add2~29_sumout\ <= NOT \Add2~29_sumout\;
\ALT_INV_Add3~29_sumout\ <= NOT \Add3~29_sumout\;
\ALT_INV_Add2~25_sumout\ <= NOT \Add2~25_sumout\;
\ALT_INV_Add3~25_sumout\ <= NOT \Add3~25_sumout\;
\ALT_INV_Add2~21_sumout\ <= NOT \Add2~21_sumout\;
\ALT_INV_Add3~21_sumout\ <= NOT \Add3~21_sumout\;
\ALT_INV_Add2~17_sumout\ <= NOT \Add2~17_sumout\;
\ALT_INV_Add3~17_sumout\ <= NOT \Add3~17_sumout\;
\ALT_INV_Add2~13_sumout\ <= NOT \Add2~13_sumout\;
\ALT_INV_Add3~13_sumout\ <= NOT \Add3~13_sumout\;
\ALT_INV_Add2~9_sumout\ <= NOT \Add2~9_sumout\;
\ALT_INV_Add3~9_sumout\ <= NOT \Add3~9_sumout\;
\ALT_INV_Add2~5_sumout\ <= NOT \Add2~5_sumout\;
\ALT_INV_Add3~5_sumout\ <= NOT \Add3~5_sumout\;
\ALT_INV_Add2~1_sumout\ <= NOT \Add2~1_sumout\;
ALT_INV_d_in_shft_ct(5) <= NOT d_in_shft_ct(5);
ALT_INV_d_in_shft_ct(4) <= NOT d_in_shft_ct(4);
ALT_INV_d_in_shft_ct(3) <= NOT d_in_shft_ct(3);
ALT_INV_d_in_shft_ct(2) <= NOT d_in_shft_ct(2);
ALT_INV_d_in_shft_ct(1) <= NOT d_in_shft_ct(1);
ALT_INV_d_in_shft_ct(0) <= NOT d_in_shft_ct(0);
ALT_INV_d_in_shft_ct(21) <= NOT d_in_shft_ct(21);
ALT_INV_d_in_shft_ct(31) <= NOT d_in_shft_ct(31);
ALT_INV_d_in_shft_ct(30) <= NOT d_in_shft_ct(30);
ALT_INV_d_in_shft_ct(29) <= NOT d_in_shft_ct(29);
ALT_INV_d_in_shft_ct(28) <= NOT d_in_shft_ct(28);
ALT_INV_d_in_shft_ct(27) <= NOT d_in_shft_ct(27);
ALT_INV_d_in_shft_ct(11) <= NOT d_in_shft_ct(11);
ALT_INV_d_in_shft_ct(10) <= NOT d_in_shft_ct(10);
ALT_INV_d_in_shft_ct(9) <= NOT d_in_shft_ct(9);
ALT_INV_d_in_shft_ct(8) <= NOT d_in_shft_ct(8);
ALT_INV_d_in_shft_ct(7) <= NOT d_in_shft_ct(7);
ALT_INV_d_in_shft_ct(6) <= NOT d_in_shft_ct(6);
ALT_INV_d_in_shft_ct(17) <= NOT d_in_shft_ct(17);
ALT_INV_d_in_shft_ct(16) <= NOT d_in_shft_ct(16);
ALT_INV_d_in_shft_ct(15) <= NOT d_in_shft_ct(15);
ALT_INV_d_in_shft_ct(14) <= NOT d_in_shft_ct(14);
ALT_INV_d_in_shft_ct(13) <= NOT d_in_shft_ct(13);
ALT_INV_d_in_shft_ct(12) <= NOT d_in_shft_ct(12);
ALT_INV_d_in_shft_ct(24) <= NOT d_in_shft_ct(24);
ALT_INV_d_in_shft_ct(23) <= NOT d_in_shft_ct(23);
ALT_INV_d_in_shft_ct(22) <= NOT d_in_shft_ct(22);
ALT_INV_d_in_shft_ct(20) <= NOT d_in_shft_ct(20);
ALT_INV_d_in_shft_ct(19) <= NOT d_in_shft_ct(19);
ALT_INV_d_in_shft_ct(18) <= NOT d_in_shft_ct(18);
ALT_INV_d_in_shft_ct(26) <= NOT d_in_shft_ct(26);
ALT_INV_d_in_shft_ct(25) <= NOT d_in_shft_ct(25);
ALT_INV_prev_val(4) <= NOT prev_val(4);
ALT_INV_d_in(4) <= NOT d_in(4);
ALT_INV_prev_val(3) <= NOT prev_val(3);
ALT_INV_d_in(3) <= NOT d_in(3);
ALT_INV_prev_val(2) <= NOT prev_val(2);
ALT_INV_d_in(2) <= NOT d_in(2);
ALT_INV_prev_val(1) <= NOT prev_val(1);
ALT_INV_d_in(1) <= NOT d_in(1);
ALT_INV_prev_val(0) <= NOT prev_val(0);
ALT_INV_d_in(0) <= NOT d_in(0);
ALT_INV_prev_val(7) <= NOT prev_val(7);
ALT_INV_d_in(7) <= NOT d_in(7);
\ALT_INV_Equal0~6DUPLICATE_combout\ <= NOT \Equal0~6DUPLICATE_combout\;
\ALT_INV_port_A_data_out[20]~input_o\ <= NOT \port_A_data_out[20]~input_o\;
\ALT_INV_port_A_data_out[19]~input_o\ <= NOT \port_A_data_out[19]~input_o\;
\ALT_INV_port_A_data_out[18]~input_o\ <= NOT \port_A_data_out[18]~input_o\;
\ALT_INV_port_A_data_out[17]~input_o\ <= NOT \port_A_data_out[17]~input_o\;
\ALT_INV_port_A_data_out[16]~input_o\ <= NOT \port_A_data_out[16]~input_o\;
\ALT_INV_port_A_data_out[23]~input_o\ <= NOT \port_A_data_out[23]~input_o\;
\ALT_INV_port_A_data_out[22]~input_o\ <= NOT \port_A_data_out[22]~input_o\;
\ALT_INV_port_A_data_out[21]~input_o\ <= NOT \port_A_data_out[21]~input_o\;
\ALT_INV_port_A_data_out[12]~input_o\ <= NOT \port_A_data_out[12]~input_o\;
\ALT_INV_port_A_data_out[11]~input_o\ <= NOT \port_A_data_out[11]~input_o\;
\ALT_INV_port_A_data_out[10]~input_o\ <= NOT \port_A_data_out[10]~input_o\;
\ALT_INV_port_A_data_out[9]~input_o\ <= NOT \port_A_data_out[9]~input_o\;
\ALT_INV_port_A_data_out[8]~input_o\ <= NOT \port_A_data_out[8]~input_o\;
\ALT_INV_port_A_data_out[15]~input_o\ <= NOT \port_A_data_out[15]~input_o\;
\ALT_INV_port_A_data_out[14]~input_o\ <= NOT \port_A_data_out[14]~input_o\;
\ALT_INV_port_A_data_out[13]~input_o\ <= NOT \port_A_data_out[13]~input_o\;
\ALT_INV_port_A_data_out[4]~input_o\ <= NOT \port_A_data_out[4]~input_o\;
\ALT_INV_port_A_data_out[3]~input_o\ <= NOT \port_A_data_out[3]~input_o\;
\ALT_INV_port_A_data_out[2]~input_o\ <= NOT \port_A_data_out[2]~input_o\;
\ALT_INV_port_A_data_out[1]~input_o\ <= NOT \port_A_data_out[1]~input_o\;
\ALT_INV_port_A_data_out[0]~input_o\ <= NOT \port_A_data_out[0]~input_o\;
\ALT_INV_port_A_data_out[7]~input_o\ <= NOT \port_A_data_out[7]~input_o\;
\ALT_INV_port_A_data_out[6]~input_o\ <= NOT \port_A_data_out[6]~input_o\;
\ALT_INV_port_A_data_out[5]~input_o\ <= NOT \port_A_data_out[5]~input_o\;
\ALT_INV_start~input_o\ <= NOT \start~input_o\;
\ALT_INV_nreset~input_o\ <= NOT \nreset~input_o\;
\ALT_INV_message_addr[15]~input_o\ <= NOT \message_addr[15]~input_o\;
\ALT_INV_rle_addr[15]~input_o\ <= NOT \rle_addr[15]~input_o\;
\ALT_INV_message_addr[14]~input_o\ <= NOT \message_addr[14]~input_o\;
\ALT_INV_rle_addr[14]~input_o\ <= NOT \rle_addr[14]~input_o\;
\ALT_INV_message_addr[13]~input_o\ <= NOT \message_addr[13]~input_o\;
\ALT_INV_rle_addr[13]~input_o\ <= NOT \rle_addr[13]~input_o\;
\ALT_INV_message_addr[12]~input_o\ <= NOT \message_addr[12]~input_o\;
\ALT_INV_rle_addr[12]~input_o\ <= NOT \rle_addr[12]~input_o\;
\ALT_INV_message_addr[11]~input_o\ <= NOT \message_addr[11]~input_o\;
\ALT_INV_rle_addr[11]~input_o\ <= NOT \rle_addr[11]~input_o\;
\ALT_INV_message_addr[10]~input_o\ <= NOT \message_addr[10]~input_o\;
\ALT_INV_rle_addr[10]~input_o\ <= NOT \rle_addr[10]~input_o\;
\ALT_INV_message_addr[9]~input_o\ <= NOT \message_addr[9]~input_o\;
\ALT_INV_rle_addr[9]~input_o\ <= NOT \rle_addr[9]~input_o\;
\ALT_INV_message_addr[8]~input_o\ <= NOT \message_addr[8]~input_o\;
\ALT_INV_rle_addr[8]~input_o\ <= NOT \rle_addr[8]~input_o\;
\ALT_INV_message_addr[7]~input_o\ <= NOT \message_addr[7]~input_o\;
\ALT_INV_rle_addr[7]~input_o\ <= NOT \rle_addr[7]~input_o\;
\ALT_INV_message_addr[6]~input_o\ <= NOT \message_addr[6]~input_o\;
\ALT_INV_rle_addr[6]~input_o\ <= NOT \rle_addr[6]~input_o\;
\ALT_INV_message_addr[5]~input_o\ <= NOT \message_addr[5]~input_o\;
\ALT_INV_rle_addr[5]~input_o\ <= NOT \rle_addr[5]~input_o\;
\ALT_INV_message_addr[4]~input_o\ <= NOT \message_addr[4]~input_o\;
\ALT_INV_rle_addr[4]~input_o\ <= NOT \rle_addr[4]~input_o\;
\ALT_INV_message_addr[3]~input_o\ <= NOT \message_addr[3]~input_o\;
\ALT_INV_rle_addr[3]~input_o\ <= NOT \rle_addr[3]~input_o\;
\ALT_INV_message_addr[2]~input_o\ <= NOT \message_addr[2]~input_o\;
\ALT_INV_rle_addr[2]~input_o\ <= NOT \rle_addr[2]~input_o\;
\ALT_INV_message_addr[1]~input_o\ <= NOT \message_addr[1]~input_o\;
\ALT_INV_rle_addr[1]~input_o\ <= NOT \rle_addr[1]~input_o\;
\ALT_INV_message_addr[0]~input_o\ <= NOT \message_addr[0]~input_o\;
\ALT_INV_rle_addr[0]~input_o\ <= NOT \rle_addr[0]~input_o\;
\ALT_INV_message_size[31]~input_o\ <= NOT \message_size[31]~input_o\;
\ALT_INV_message_size[30]~input_o\ <= NOT \message_size[30]~input_o\;
\ALT_INV_message_size[29]~input_o\ <= NOT \message_size[29]~input_o\;
\ALT_INV_message_size[28]~input_o\ <= NOT \message_size[28]~input_o\;
\ALT_INV_message_size[20]~input_o\ <= NOT \message_size[20]~input_o\;
\ALT_INV_message_size[19]~input_o\ <= NOT \message_size[19]~input_o\;
\ALT_INV_message_size[18]~input_o\ <= NOT \message_size[18]~input_o\;
\ALT_INV_message_size[17]~input_o\ <= NOT \message_size[17]~input_o\;
\ALT_INV_message_size[16]~input_o\ <= NOT \message_size[16]~input_o\;
\ALT_INV_message_size[27]~input_o\ <= NOT \message_size[27]~input_o\;
\ALT_INV_message_size[26]~input_o\ <= NOT \message_size[26]~input_o\;
\ALT_INV_message_size[25]~input_o\ <= NOT \message_size[25]~input_o\;
\ALT_INV_message_size[24]~input_o\ <= NOT \message_size[24]~input_o\;
\ALT_INV_message_size[23]~input_o\ <= NOT \message_size[23]~input_o\;
\ALT_INV_message_size[22]~input_o\ <= NOT \message_size[22]~input_o\;
\ALT_INV_message_size[21]~input_o\ <= NOT \message_size[21]~input_o\;
\ALT_INV_message_size[8]~input_o\ <= NOT \message_size[8]~input_o\;
\ALT_INV_message_size[10]~input_o\ <= NOT \message_size[10]~input_o\;
\ALT_INV_message_size[9]~input_o\ <= NOT \message_size[9]~input_o\;
\ALT_INV_message_size[11]~input_o\ <= NOT \message_size[11]~input_o\;
\ALT_INV_message_size[12]~input_o\ <= NOT \message_size[12]~input_o\;
\ALT_INV_message_size[13]~input_o\ <= NOT \message_size[13]~input_o\;
\ALT_INV_message_size[14]~input_o\ <= NOT \message_size[14]~input_o\;
\ALT_INV_message_size[5]~input_o\ <= NOT \message_size[5]~input_o\;
\ALT_INV_message_size[6]~input_o\ <= NOT \message_size[6]~input_o\;
\ALT_INV_message_size[7]~input_o\ <= NOT \message_size[7]~input_o\;
\ALT_INV_message_size[3]~input_o\ <= NOT \message_size[3]~input_o\;
\ALT_INV_message_size[4]~input_o\ <= NOT \message_size[4]~input_o\;
\ALT_INV_message_size[1]~input_o\ <= NOT \message_size[1]~input_o\;
\ALT_INV_message_size[0]~input_o\ <= NOT \message_size[0]~input_o\;
\ALT_INV_message_size[2]~input_o\ <= NOT \message_size[2]~input_o\;
\ALT_INV_message_size[15]~input_o\ <= NOT \message_size[15]~input_o\;
\ALT_INV_state~27_combout\ <= NOT \state~27_combout\;
\ALT_INV_state~25_combout\ <= NOT \state~25_combout\;
\ALT_INV_state~24_combout\ <= NOT \state~24_combout\;
\ALT_INV_d_in_shft_ct[27]~2_combout\ <= NOT \d_in_shft_ct[27]~2_combout\;
\ALT_INV_prev_val[6]~0_combout\ <= NOT \prev_val[6]~0_combout\;
\ALT_INV_d_in_shft_ct[27]~0_combout\ <= NOT \d_in_shft_ct[27]~0_combout\;
\ALT_INV_state~22_combout\ <= NOT \state~22_combout\;
\ALT_INV_state~21_combout\ <= NOT \state~21_combout\;
\ALT_INV_state~20_combout\ <= NOT \state~20_combout\;
\ALT_INV_state~18_combout\ <= NOT \state~18_combout\;
\ALT_INV_state~17_combout\ <= NOT \state~17_combout\;
\ALT_INV_state~16_combout\ <= NOT \state~16_combout\;
\ALT_INV_state~15_combout\ <= NOT \state~15_combout\;
\ALT_INV_buff_full~q\ <= NOT \buff_full~q\;
\ALT_INV_always0~5_combout\ <= NOT \always0~5_combout\;
\ALT_INV_state~14_combout\ <= NOT \state~14_combout\;
\ALT_INV_always0~4_combout\ <= NOT \always0~4_combout\;
\ALT_INV_state~13_combout\ <= NOT \state~13_combout\;
\ALT_INV_always0~3_combout\ <= NOT \always0~3_combout\;
\ALT_INV_buff~3_combout\ <= NOT \buff~3_combout\;
\ALT_INV_buff[8]~1_combout\ <= NOT \buff[8]~1_combout\;
\ALT_INV_buff[8]~0_combout\ <= NOT \buff[8]~0_combout\;
\ALT_INV_wr_amt[9]~0_combout\ <= NOT \wr_amt[9]~0_combout\;
\ALT_INV_state~12_combout\ <= NOT \state~12_combout\;
\ALT_INV_d_in_empty~q\ <= NOT \d_in_empty~q\;
\ALT_INV_state~11_combout\ <= NOT \state~11_combout\;
\ALT_INV_rle_siz[12]~7_combout\ <= NOT \rle_siz[12]~7_combout\;
\ALT_INV_always0~2_combout\ <= NOT \always0~2_combout\;
\ALT_INV_rle_siz~4_combout\ <= NOT \rle_siz~4_combout\;
\ALT_INV_rle_siz~3_combout\ <= NOT \rle_siz~3_combout\;
\ALT_INV_state.001~q\ <= NOT \state.001~q\;
\ALT_INV_rle_siz~2_combout\ <= NOT \rle_siz~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\ALT_INV_Equal0~6_combout\ <= NOT \Equal0~6_combout\;
\ALT_INV_Equal0~5_combout\ <= NOT \Equal0~5_combout\;
\ALT_INV_Equal0~4_combout\ <= NOT \Equal0~4_combout\;
\ALT_INV_Equal0~3_combout\ <= NOT \Equal0~3_combout\;
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_rle_siz~1_combout\ <= NOT \rle_siz~1_combout\;
\ALT_INV_Equal2~3_combout\ <= NOT \Equal2~3_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
\ALT_INV_Equal3~1_combout\ <= NOT \Equal3~1_combout\;
\ALT_INV_Equal3~0_combout\ <= NOT \Equal3~0_combout\;
\ALT_INV_read_frst~q\ <= NOT \read_frst~q\;
\ALT_INV_buff_on~q\ <= NOT \buff_on~q\;
\ALT_INV_rle_siz[12]~0_combout\ <= NOT \rle_siz[12]~0_combout\;
\ALT_INV_state.011~q\ <= NOT \state.011~q\;
\ALT_INV_Add6~54_combout\ <= NOT \Add6~54_combout\;
\ALT_INV_Add6~45_combout\ <= NOT \Add6~45_combout\;
\ALT_INV_Add6~36_combout\ <= NOT \Add6~36_combout\;
\ALT_INV_Add6~27_combout\ <= NOT \Add6~27_combout\;
\ALT_INV_Add6~18_combout\ <= NOT \Add6~18_combout\;
\ALT_INV_Add6~9_combout\ <= NOT \Add6~9_combout\;
\ALT_INV_Add6~0_combout\ <= NOT \Add6~0_combout\;
\ALT_INV_state.010~q\ <= NOT \state.010~q\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_wr_done~q\ <= NOT \wr_done~q\;
ALT_INV_rle_siz(1) <= NOT rle_siz(1);
\ALT_INV_Add5~45_sumout\ <= NOT \Add5~45_sumout\;
\ALT_INV_Add4~29_sumout\ <= NOT \Add4~29_sumout\;
\ALT_INV_Add4~25_sumout\ <= NOT \Add4~25_sumout\;
\ALT_INV_Add4~21_sumout\ <= NOT \Add4~21_sumout\;
\ALT_INV_Add4~17_sumout\ <= NOT \Add4~17_sumout\;
\ALT_INV_Add4~13_sumout\ <= NOT \Add4~13_sumout\;
\ALT_INV_Add4~9_sumout\ <= NOT \Add4~9_sumout\;
\ALT_INV_Add4~5_sumout\ <= NOT \Add4~5_sumout\;
\ALT_INV_Add4~1_sumout\ <= NOT \Add4~1_sumout\;
ALT_INV_prev_val(6) <= NOT prev_val(6);
ALT_INV_d_in(6) <= NOT d_in(6);
ALT_INV_prev_val(5) <= NOT prev_val(5);
ALT_INV_d_in(5) <= NOT d_in(5);
ALT_INV_prev_run(0) <= NOT prev_run(0);
ALT_INV_prev_run(5) <= NOT prev_run(5);
ALT_INV_prev_run(7) <= NOT prev_run(7);
ALT_INV_prev_run(4) <= NOT prev_run(4);
ALT_INV_prev_run(6) <= NOT prev_run(6);
ALT_INV_prev_run(3) <= NOT prev_run(3);
ALT_INV_prev_run(2) <= NOT prev_run(2);
ALT_INV_prev_run(1) <= NOT prev_run(1);
\ALT_INV_Add3~1_sumout\ <= NOT \Add3~1_sumout\;
ALT_INV_wr_amt(15) <= NOT wr_amt(15);
ALT_INV_wr_amt(14) <= NOT wr_amt(14);
ALT_INV_wr_amt(13) <= NOT wr_amt(13);
ALT_INV_wr_amt(12) <= NOT wr_amt(12);
ALT_INV_wr_amt(11) <= NOT wr_amt(11);
ALT_INV_wr_amt(10) <= NOT wr_amt(10);
ALT_INV_wr_amt(9) <= NOT wr_amt(9);
ALT_INV_wr_amt(8) <= NOT wr_amt(8);
ALT_INV_wr_amt(7) <= NOT wr_amt(7);
ALT_INV_wr_amt(6) <= NOT wr_amt(6);
ALT_INV_wr_amt(5) <= NOT wr_amt(5);
ALT_INV_wr_amt(4) <= NOT wr_amt(4);
ALT_INV_wr_amt(3) <= NOT wr_amt(3);
ALT_INV_wr_amt(2) <= NOT wr_amt(2);
ALT_INV_buff(31) <= NOT buff(31);
ALT_INV_buff(30) <= NOT buff(30);
ALT_INV_buff(29) <= NOT buff(29);
ALT_INV_buff(28) <= NOT buff(28);
ALT_INV_buff(27) <= NOT buff(27);
ALT_INV_buff(26) <= NOT buff(26);
ALT_INV_buff(25) <= NOT buff(25);
ALT_INV_buff(24) <= NOT buff(24);
ALT_INV_buff(23) <= NOT buff(23);
ALT_INV_buff(22) <= NOT buff(22);
ALT_INV_buff(21) <= NOT buff(21);
ALT_INV_buff(20) <= NOT buff(20);
ALT_INV_buff(19) <= NOT buff(19);
ALT_INV_buff(18) <= NOT buff(18);
ALT_INV_buff(17) <= NOT buff(17);
ALT_INV_buff(16) <= NOT buff(16);
ALT_INV_rd_amt(8) <= NOT rd_amt(8);
ALT_INV_rd_amt(10) <= NOT rd_amt(10);
ALT_INV_rd_amt(9) <= NOT rd_amt(9);
ALT_INV_rd_amt(11) <= NOT rd_amt(11);
ALT_INV_rd_amt(12) <= NOT rd_amt(12);
ALT_INV_rd_amt(13) <= NOT rd_amt(13);
ALT_INV_rd_amt(14) <= NOT rd_amt(14);
ALT_INV_rd_amt(5) <= NOT rd_amt(5);
ALT_INV_rd_amt(6) <= NOT rd_amt(6);
ALT_INV_rd_amt(7) <= NOT rd_amt(7);
ALT_INV_rd_amt(3) <= NOT rd_amt(3);
ALT_INV_rd_amt(4) <= NOT rd_amt(4);
ALT_INV_rd_amt(2) <= NOT rd_amt(2);
ALT_INV_rd_amt(15) <= NOT rd_amt(15);
ALT_INV_rle_siz(15) <= NOT rle_siz(15);
ALT_INV_rle_siz(14) <= NOT rle_siz(14);
ALT_INV_rle_siz(13) <= NOT rle_siz(13);
ALT_INV_rle_siz(12) <= NOT rle_siz(12);
ALT_INV_rle_siz(11) <= NOT rle_siz(11);
ALT_INV_rle_siz(10) <= NOT rle_siz(10);
ALT_INV_rle_siz(9) <= NOT rle_siz(9);
ALT_INV_rle_siz(8) <= NOT rle_siz(8);
ALT_INV_rle_siz(7) <= NOT rle_siz(7);
ALT_INV_rle_siz(6) <= NOT rle_siz(6);
ALT_INV_rle_siz(5) <= NOT rle_siz(5);
ALT_INV_rle_siz(4) <= NOT rle_siz(4);
ALT_INV_rle_siz(3) <= NOT rle_siz(3);
ALT_INV_rle_siz(2) <= NOT rle_siz(2);

-- Location: IOOBUF_X25_Y56_N5
\rle_size[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[0]~output_o\);

-- Location: IOOBUF_X59_Y16_N67
\rle_size[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(1),
	devoe => ww_devoe,
	o => \rle_size[1]~output_o\);

-- Location: IOOBUF_X59_Y28_N67
\rle_size[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(2),
	devoe => ww_devoe,
	o => \rle_size[2]~output_o\);

-- Location: IOOBUF_X59_Y23_N36
\rle_size[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(3),
	devoe => ww_devoe,
	o => \rle_size[3]~output_o\);

-- Location: IOOBUF_X59_Y25_N67
\rle_size[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(4),
	devoe => ww_devoe,
	o => \rle_size[4]~output_o\);

-- Location: IOOBUF_X59_Y16_N2
\rle_size[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(5),
	devoe => ww_devoe,
	o => \rle_size[5]~output_o\);

-- Location: IOOBUF_X59_Y23_N98
\rle_size[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(6),
	devoe => ww_devoe,
	o => \rle_size[6]~output_o\);

-- Location: IOOBUF_X59_Y25_N2
\rle_size[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(7),
	devoe => ww_devoe,
	o => \rle_size[7]~output_o\);

-- Location: IOOBUF_X59_Y25_N98
\rle_size[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(8),
	devoe => ww_devoe,
	o => \rle_size[8]~output_o\);

-- Location: IOOBUF_X59_Y25_N36
\rle_size[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(9),
	devoe => ww_devoe,
	o => \rle_size[9]~output_o\);

-- Location: IOOBUF_X59_Y16_N36
\rle_size[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(10),
	devoe => ww_devoe,
	o => \rle_size[10]~output_o\);

-- Location: IOOBUF_X59_Y28_N98
\rle_size[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(11),
	devoe => ww_devoe,
	o => \rle_size[11]~output_o\);

-- Location: IOOBUF_X59_Y23_N2
\rle_size[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(12),
	devoe => ww_devoe,
	o => \rle_size[12]~output_o\);

-- Location: IOOBUF_X59_Y19_N98
\rle_size[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(13),
	devoe => ww_devoe,
	o => \rle_size[13]~output_o\);

-- Location: IOOBUF_X59_Y23_N67
\rle_size[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(14),
	devoe => ww_devoe,
	o => \rle_size[14]~output_o\);

-- Location: IOOBUF_X59_Y19_N67
\rle_size[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => rle_siz(15),
	devoe => ww_devoe,
	o => \rle_size[15]~output_o\);

-- Location: IOOBUF_X55_Y56_N5
\rle_size[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[16]~output_o\);

-- Location: IOOBUF_X31_Y56_N67
\rle_size[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[17]~output_o\);

-- Location: IOOBUF_X36_Y56_N67
\rle_size[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[18]~output_o\);

-- Location: IOOBUF_X23_Y56_N67
\rle_size[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[19]~output_o\);

-- Location: IOOBUF_X15_Y56_N98
\rle_size[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[20]~output_o\);

-- Location: IOOBUF_X37_Y0_N2
\rle_size[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[21]~output_o\);

-- Location: IOOBUF_X12_Y56_N36
\rle_size[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[22]~output_o\);

-- Location: IOOBUF_X19_Y0_N2
\rle_size[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[23]~output_o\);

-- Location: IOOBUF_X19_Y56_N2
\rle_size[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[24]~output_o\);

-- Location: IOOBUF_X29_Y0_N36
\rle_size[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[25]~output_o\);

-- Location: IOOBUF_X15_Y0_N36
\rle_size[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[26]~output_o\);

-- Location: IOOBUF_X33_Y56_N67
\rle_size[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[27]~output_o\);

-- Location: IOOBUF_X15_Y56_N67
\rle_size[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[28]~output_o\);

-- Location: IOOBUF_X33_Y0_N67
\rle_size[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N98
\rle_size[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[30]~output_o\);

-- Location: IOOBUF_X30_Y0_N98
\rle_size[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rle_size[31]~output_o\);

-- Location: IOOBUF_X59_Y21_N98
\done~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \done~0_combout\,
	devoe => ww_devoe,
	o => \done~output_o\);

-- Location: IOOBUF_X25_Y0_N5
\port_A_clk~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \clk~input_o\,
	devoe => ww_devoe,
	o => \port_A_clk~output_o\);

-- Location: IOOBUF_X52_Y0_N2
\port_A_data_in[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(0),
	devoe => ww_devoe,
	o => \port_A_data_in[0]~output_o\);

-- Location: IOOBUF_X59_Y37_N36
\port_A_data_in[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(1),
	devoe => ww_devoe,
	o => \port_A_data_in[1]~output_o\);

-- Location: IOOBUF_X52_Y0_N98
\port_A_data_in[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(2),
	devoe => ww_devoe,
	o => \port_A_data_in[2]~output_o\);

-- Location: IOOBUF_X56_Y0_N2
\port_A_data_in[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(3),
	devoe => ww_devoe,
	o => \port_A_data_in[3]~output_o\);

-- Location: IOOBUF_X59_Y6_N98
\port_A_data_in[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(4),
	devoe => ww_devoe,
	o => \port_A_data_in[4]~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\port_A_data_in[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(5),
	devoe => ww_devoe,
	o => \port_A_data_in[5]~output_o\);

-- Location: IOOBUF_X55_Y0_N67
\port_A_data_in[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(6),
	devoe => ww_devoe,
	o => \port_A_data_in[6]~output_o\);

-- Location: IOOBUF_X54_Y0_N67
\port_A_data_in[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(7),
	devoe => ww_devoe,
	o => \port_A_data_in[7]~output_o\);

-- Location: IOOBUF_X54_Y0_N36
\port_A_data_in[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(8),
	devoe => ww_devoe,
	o => \port_A_data_in[8]~output_o\);

-- Location: IOOBUF_X59_Y6_N2
\port_A_data_in[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(9),
	devoe => ww_devoe,
	o => \port_A_data_in[9]~output_o\);

-- Location: IOOBUF_X59_Y49_N2
\port_A_data_in[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(10),
	devoe => ww_devoe,
	o => \port_A_data_in[10]~output_o\);

-- Location: IOOBUF_X59_Y51_N5
\port_A_data_in[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(11),
	devoe => ww_devoe,
	o => \port_A_data_in[11]~output_o\);

-- Location: IOOBUF_X59_Y21_N5
\port_A_data_in[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(12),
	devoe => ww_devoe,
	o => \port_A_data_in[12]~output_o\);

-- Location: IOOBUF_X59_Y37_N2
\port_A_data_in[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(13),
	devoe => ww_devoe,
	o => \port_A_data_in[13]~output_o\);

-- Location: IOOBUF_X59_Y18_N36
\port_A_data_in[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(14),
	devoe => ww_devoe,
	o => \port_A_data_in[14]~output_o\);

-- Location: IOOBUF_X59_Y7_N67
\port_A_data_in[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(15),
	devoe => ww_devoe,
	o => \port_A_data_in[15]~output_o\);

-- Location: IOOBUF_X59_Y16_N98
\port_A_data_in[16]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(16),
	devoe => ww_devoe,
	o => \port_A_data_in[16]~output_o\);

-- Location: IOOBUF_X59_Y18_N2
\port_A_data_in[17]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(17),
	devoe => ww_devoe,
	o => \port_A_data_in[17]~output_o\);

-- Location: IOOBUF_X59_Y6_N67
\port_A_data_in[18]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(18),
	devoe => ww_devoe,
	o => \port_A_data_in[18]~output_o\);

-- Location: IOOBUF_X55_Y0_N33
\port_A_data_in[19]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(19),
	devoe => ww_devoe,
	o => \port_A_data_in[19]~output_o\);

-- Location: IOOBUF_X54_Y0_N98
\port_A_data_in[20]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(20),
	devoe => ww_devoe,
	o => \port_A_data_in[20]~output_o\);

-- Location: IOOBUF_X59_Y13_N98
\port_A_data_in[21]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(21),
	devoe => ww_devoe,
	o => \port_A_data_in[21]~output_o\);

-- Location: IOOBUF_X47_Y0_N36
\port_A_data_in[22]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(22),
	devoe => ww_devoe,
	o => \port_A_data_in[22]~output_o\);

-- Location: IOOBUF_X59_Y4_N98
\port_A_data_in[23]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(23),
	devoe => ww_devoe,
	o => \port_A_data_in[23]~output_o\);

-- Location: IOOBUF_X59_Y22_N67
\port_A_data_in[24]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(24),
	devoe => ww_devoe,
	o => \port_A_data_in[24]~output_o\);

-- Location: IOOBUF_X59_Y22_N98
\port_A_data_in[25]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(25),
	devoe => ww_devoe,
	o => \port_A_data_in[25]~output_o\);

-- Location: IOOBUF_X59_Y21_N33
\port_A_data_in[26]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(26),
	devoe => ww_devoe,
	o => \port_A_data_in[26]~output_o\);

-- Location: IOOBUF_X59_Y21_N67
\port_A_data_in[27]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(27),
	devoe => ww_devoe,
	o => \port_A_data_in[27]~output_o\);

-- Location: IOOBUF_X59_Y18_N67
\port_A_data_in[28]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(28),
	devoe => ww_devoe,
	o => \port_A_data_in[28]~output_o\);

-- Location: IOOBUF_X59_Y37_N98
\port_A_data_in[29]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(29),
	devoe => ww_devoe,
	o => \port_A_data_in[29]~output_o\);

-- Location: IOOBUF_X59_Y37_N67
\port_A_data_in[30]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(30),
	devoe => ww_devoe,
	o => \port_A_data_in[30]~output_o\);

-- Location: IOOBUF_X55_Y0_N5
\port_A_data_in[31]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => buff(31),
	devoe => ww_devoe,
	o => \port_A_data_in[31]~output_o\);

-- Location: IOOBUF_X48_Y56_N5
\port_A_addr[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_A_addr~0_combout\,
	devoe => ww_devoe,
	o => \port_A_addr[0]~output_o\);

-- Location: IOOBUF_X59_Y9_N67
\port_A_addr[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \port_A_addr~1_combout\,
	devoe => ww_devoe,
	o => \port_A_addr[1]~output_o\);

-- Location: IOOBUF_X51_Y56_N36
\port_A_addr[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~2_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[2]~output_o\);

-- Location: IOOBUF_X48_Y56_N67
\port_A_addr[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~6_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[3]~output_o\);

-- Location: IOOBUF_X59_Y39_N98
\port_A_addr[4]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~11_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[4]~output_o\);

-- Location: IOOBUF_X45_Y0_N67
\port_A_addr[5]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~15_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[5]~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\port_A_addr[6]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~20_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[6]~output_o\);

-- Location: IOOBUF_X59_Y49_N67
\port_A_addr[7]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~24_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[7]~output_o\);

-- Location: IOOBUF_X48_Y56_N98
\port_A_addr[8]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~29_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[8]~output_o\);

-- Location: IOOBUF_X59_Y39_N5
\port_A_addr[9]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~33_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[9]~output_o\);

-- Location: IOOBUF_X48_Y56_N33
\port_A_addr[10]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~38_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[10]~output_o\);

-- Location: IOOBUF_X51_Y56_N2
\port_A_addr[11]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~42_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[11]~output_o\);

-- Location: IOOBUF_X51_Y56_N98
\port_A_addr[12]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~47_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[12]~output_o\);

-- Location: IOOBUF_X56_Y56_N64
\port_A_addr[13]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~51_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[13]~output_o\);

-- Location: IOOBUF_X59_Y10_N36
\port_A_addr[14]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~56_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[14]~output_o\);

-- Location: IOOBUF_X46_Y56_N98
\port_A_addr[15]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Add6~60_sumout\,
	devoe => ww_devoe,
	o => \port_A_addr[15]~output_o\);

-- Location: IOOBUF_X59_Y33_N98
\port_A_we~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.010~q\,
	devoe => ww_devoe,
	o => \port_A_we~output_o\);

-- Location: IOIBUF_X26_Y0_N32
\clk~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\clk~inputclkctrl\ : arriaii_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X59_Y28_N1
\start~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: IOIBUF_X59_Y28_N32
\nreset~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nreset,
	o => \nreset~input_o\);

-- Location: LABCELL_X55_Y25_N38
\rle_siz~4\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~4_combout\ = ( \nreset~input_o\ & ( (!\start~input_o\ & rle_siz(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datad => ALT_INV_rle_siz(1),
	dataf => \ALT_INV_nreset~input_o\,
	combout => \rle_siz~4_combout\);

-- Location: MLABCELL_X49_Y26_N34
\wr_amt[9]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \wr_amt[9]~0_combout\ = (\nreset~input_o\ & !\start~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_start~input_o\,
	combout => \wr_amt[9]~0_combout\);

-- Location: MLABCELL_X54_Y26_N0
\state~27\ : arriaii_lcell_comb
-- Equation(s):
-- \state~27_combout\ = ( \nreset~input_o\ & ( \state.001~q\ & ( !\start~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datae => \ALT_INV_nreset~input_o\,
	dataf => \ALT_INV_state.001~q\,
	combout => \state~27_combout\);

-- Location: IOIBUF_X59_Y22_N32
\port_A_data_out[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(5),
	o => \port_A_data_out[5]~input_o\);

-- Location: MLABCELL_X52_Y26_N2
\d_in[5]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[5]~feeder_combout\ = ( \port_A_data_out[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[5]~input_o\,
	combout => \d_in[5]~feeder_combout\);

-- Location: IOIBUF_X59_Y15_N32
\port_A_data_out[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(13),
	o => \port_A_data_out[13]~input_o\);

-- Location: MLABCELL_X52_Y26_N20
\d_in[13]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[13]~feeder_combout\ = ( \port_A_data_out[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[13]~input_o\,
	combout => \d_in[13]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N1
\port_A_data_out[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(21),
	o => \port_A_data_out[21]~input_o\);

-- Location: MLABCELL_X49_Y26_N8
\d_in[21]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[21]~feeder_combout\ = ( \port_A_data_out[21]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[21]~input_o\,
	combout => \d_in[21]~feeder_combout\);

-- Location: IOIBUF_X59_Y48_N1
\port_A_data_out[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(29),
	o => \port_A_data_out[29]~input_o\);

-- Location: MLABCELL_X49_Y26_N14
\always0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~5_combout\ = (!\nreset~input_o\) # (\state.001~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_state.001~q\,
	combout => \always0~5_combout\);

-- Location: LABCELL_X47_Y26_N0
\Add5~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( d_in_shft_ct(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~2\ = CARRY(( d_in_shft_ct(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(0),
	cin => GND,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X47_Y25_N28
\Equal0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !d_in_shft_ct(26) & ( !d_in_shft_ct(25) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_d_in_shft_ct(26),
	dataf => ALT_INV_d_in_shft_ct(25),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X49_Y25_N12
\Equal0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = ( !d_in_shft_ct(4) & ( !d_in_shft_ct(5) & ( (d_in_shft_ct(1) & (!d_in_shft_ct(2) & (d_in_shft_ct(0) & !d_in_shft_ct(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in_shft_ct(1),
	datab => ALT_INV_d_in_shft_ct(2),
	datac => ALT_INV_d_in_shft_ct(0),
	datad => ALT_INV_d_in_shft_ct(3),
	datae => ALT_INV_d_in_shft_ct(4),
	dataf => ALT_INV_d_in_shft_ct(5),
	combout => \Equal0~5_combout\);

-- Location: MLABCELL_X49_Y25_N2
\Equal0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = ( !d_in_shft_ct(8) & ( !d_in_shft_ct(10) & ( (!d_in_shft_ct(11) & (!d_in_shft_ct(9) & (!d_in_shft_ct(7) & !d_in_shft_ct(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in_shft_ct(11),
	datab => ALT_INV_d_in_shft_ct(9),
	datac => ALT_INV_d_in_shft_ct(7),
	datad => ALT_INV_d_in_shft_ct(6),
	datae => ALT_INV_d_in_shft_ct(8),
	dataf => ALT_INV_d_in_shft_ct(10),
	combout => \Equal0~3_combout\);

-- Location: MLABCELL_X49_Y25_N30
\Equal0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( !d_in_shft_ct(12) & ( !d_in_shft_ct(15) & ( (!d_in_shft_ct(14) & (!d_in_shft_ct(13) & (!d_in_shft_ct(16) & !d_in_shft_ct(17)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in_shft_ct(14),
	datab => ALT_INV_d_in_shft_ct(13),
	datac => ALT_INV_d_in_shft_ct(16),
	datad => ALT_INV_d_in_shft_ct(17),
	datae => ALT_INV_d_in_shft_ct(12),
	dataf => ALT_INV_d_in_shft_ct(15),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X47_Y25_N24
\Equal0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( !d_in_shft_ct(19) & ( !d_in_shft_ct(18) & ( (!d_in_shft_ct(20) & (!d_in_shft_ct(23) & (!d_in_shft_ct(24) & !d_in_shft_ct(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in_shft_ct(20),
	datab => ALT_INV_d_in_shft_ct(23),
	datac => ALT_INV_d_in_shft_ct(24),
	datad => ALT_INV_d_in_shft_ct(22),
	datae => ALT_INV_d_in_shft_ct(19),
	dataf => ALT_INV_d_in_shft_ct(18),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X49_Y25_N16
\Equal0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~4_combout\ & (\Equal0~0_combout\ & (\Equal0~5_combout\ & \Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~5_combout\,
	datad => \ALT_INV_Equal0~3_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~6_combout\);

-- Location: MLABCELL_X49_Y25_N38
\d_in_shft_ct[27]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_shft_ct[27]~1_combout\ = ( \Equal0~6_combout\ ) # ( !\Equal0~6_combout\ & ( (!\wr_amt[9]~0_combout\) # (!\state.011~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110101010111111111010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_amt[9]~0_combout\,
	datad => \ALT_INV_state.011~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \d_in_shft_ct[27]~1_combout\);

-- Location: MLABCELL_X54_Y25_N0
\d_in_shft_ct[27]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_shft_ct[27]~2_combout\ = ( !\buff_on~q\ & ( (!\start~input_o\ & \nreset~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_nreset~input_o\,
	dataf => \ALT_INV_buff_on~q\,
	combout => \d_in_shft_ct[27]~2_combout\);

-- Location: MLABCELL_X54_Y26_N26
\state~11\ : arriaii_lcell_comb
-- Equation(s):
-- \state~11_combout\ = ( \nreset~input_o\ & ( \state.001~q\ ) ) # ( !\nreset~input_o\ & ( \state.001~q\ ) ) # ( \nreset~input_o\ & ( !\state.001~q\ & ( \start~input_o\ ) ) ) # ( !\nreset~input_o\ & ( !\state.001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_start~input_o\,
	datae => \ALT_INV_nreset~input_o\,
	dataf => \ALT_INV_state.001~q\,
	combout => \state~11_combout\);

-- Location: MLABCELL_X49_Y26_N32
\state~12\ : arriaii_lcell_comb
-- Equation(s):
-- \state~12_combout\ = ( \state.001~q\ & ( (\nreset~input_o\ & (!\start~input_o\ & (!\wr_done~q\ & \state.010~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_wr_done~q\,
	datad => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_state.001~q\,
	combout => \state~12_combout\);

-- Location: LABCELL_X50_Y27_N0
\Add0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( rd_amt(2) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( rd_amt(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(2),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: MLABCELL_X52_Y27_N36
\rd_amt[10]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \rd_amt[10]~0_combout\ = ( !\wr_amt[9]~0_combout\ & ( \state.001~q\ ) ) # ( \wr_amt[9]~0_combout\ & ( !\state.001~q\ ) ) # ( !\wr_amt[9]~0_combout\ & ( !\state.001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_wr_amt[9]~0_combout\,
	dataf => \ALT_INV_state.001~q\,
	combout => \rd_amt[10]~0_combout\);

-- Location: FF_X50_Y27_N1
\rd_amt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~1_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(2));

-- Location: LABCELL_X50_Y27_N2
\Add0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( rd_amt(3) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( rd_amt(3) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(3),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X50_Y27_N3
\rd_amt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~5_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(3));

-- Location: LABCELL_X50_Y27_N4
\Add0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( rd_amt(4) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( rd_amt(4) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(4),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X50_Y27_N5
\rd_amt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~9_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(4));

-- Location: LABCELL_X50_Y27_N6
\Add0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( rd_amt(5) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( rd_amt(5) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(5),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X50_Y27_N7
\rd_amt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~13_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(5));

-- Location: LABCELL_X50_Y27_N8
\Add0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( rd_amt(6) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( rd_amt(6) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(6),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X50_Y27_N9
\rd_amt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~17_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(6));

-- Location: LABCELL_X50_Y27_N10
\Add0~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( rd_amt(7) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( rd_amt(7) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(7),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X50_Y27_N11
\rd_amt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~21_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(7));

-- Location: LABCELL_X50_Y27_N12
\Add0~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( rd_amt(8) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( rd_amt(8) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(8),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X50_Y27_N13
\rd_amt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~25_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(8));

-- Location: LABCELL_X50_Y27_N14
\Add0~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( rd_amt(9) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( rd_amt(9) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(9),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X50_Y27_N15
\rd_amt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~29_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(9));

-- Location: LABCELL_X50_Y27_N16
\Add0~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( rd_amt(10) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( rd_amt(10) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(10),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X50_Y27_N17
\rd_amt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~33_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(10));

-- Location: LABCELL_X50_Y27_N18
\Add0~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( rd_amt(11) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( rd_amt(11) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(11),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X50_Y27_N19
\rd_amt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~37_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(11));

-- Location: LABCELL_X50_Y27_N20
\Add0~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( rd_amt(12) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( rd_amt(12) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(12),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X50_Y27_N21
\rd_amt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~41_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(12));

-- Location: LABCELL_X50_Y27_N22
\Add0~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( rd_amt(13) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( rd_amt(13) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(13),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X50_Y27_N23
\rd_amt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~45_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(13));

-- Location: LABCELL_X50_Y27_N24
\Add0~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( rd_amt(14) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( rd_amt(14) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(14),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X50_Y27_N25
\rd_amt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~49_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(14));

-- Location: LABCELL_X50_Y27_N26
\Add0~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( rd_amt(15) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rd_amt(15),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\);

-- Location: FF_X50_Y27_N27
\rd_amt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~53_sumout\,
	sclr => \state~11_combout\,
	ena => \rd_amt[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rd_amt(15));

-- Location: IOIBUF_X48_Y0_N1
\message_size[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(15),
	o => \message_size[15]~input_o\);

-- Location: MLABCELL_X49_Y27_N30
\LessThan0~0\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !rd_amt(15) & ( \message_size[15]~input_o\ ) ) # ( rd_amt(15) & ( !\message_size[15]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_rd_amt(15),
	dataf => \ALT_INV_message_size[15]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X59_Y46_N63
\message_size[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(21),
	o => \message_size[21]~input_o\);

-- Location: IOIBUF_X59_Y7_N1
\message_size[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(24),
	o => \message_size[24]~input_o\);

-- Location: IOIBUF_X59_Y4_N1
\message_size[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(22),
	o => \message_size[22]~input_o\);

-- Location: IOIBUF_X59_Y4_N32
\message_size[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(26),
	o => \message_size[26]~input_o\);

-- Location: IOIBUF_X56_Y0_N63
\message_size[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(27),
	o => \message_size[27]~input_o\);

-- Location: IOIBUF_X59_Y9_N94
\message_size[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(23),
	o => \message_size[23]~input_o\);

-- Location: IOIBUF_X59_Y10_N94
\message_size[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(25),
	o => \message_size[25]~input_o\);

-- Location: LABCELL_X58_Y10_N34
\LessThan0~16\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( !\message_size[23]~input_o\ & ( !\message_size[25]~input_o\ & ( (!\message_size[24]~input_o\ & (!\message_size[22]~input_o\ & (!\message_size[26]~input_o\ & !\message_size[27]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[24]~input_o\,
	datab => \ALT_INV_message_size[22]~input_o\,
	datac => \ALT_INV_message_size[26]~input_o\,
	datad => \ALT_INV_message_size[27]~input_o\,
	datae => \ALT_INV_message_size[23]~input_o\,
	dataf => \ALT_INV_message_size[25]~input_o\,
	combout => \LessThan0~16_combout\);

-- Location: IOIBUF_X46_Y56_N63
\message_size[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(29),
	o => \message_size[29]~input_o\);

-- Location: IOIBUF_X46_Y56_N32
\message_size[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(30),
	o => \message_size[30]~input_o\);

-- Location: IOIBUF_X48_Y0_N63
\message_size[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(28),
	o => \message_size[28]~input_o\);

-- Location: IOIBUF_X47_Y0_N63
\message_size[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(31),
	o => \message_size[31]~input_o\);

-- Location: MLABCELL_X49_Y26_N22
\LessThan0~18\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( !\message_size[31]~input_o\ & ( (!\message_size[29]~input_o\ & (!\message_size[30]~input_o\ & !\message_size[28]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[29]~input_o\,
	datab => \ALT_INV_message_size[30]~input_o\,
	datac => \ALT_INV_message_size[28]~input_o\,
	dataf => \ALT_INV_message_size[31]~input_o\,
	combout => \LessThan0~18_combout\);

-- Location: IOIBUF_X59_Y51_N32
\message_size[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(19),
	o => \message_size[19]~input_o\);

-- Location: IOIBUF_X59_Y36_N1
\message_size[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(17),
	o => \message_size[17]~input_o\);

-- Location: IOIBUF_X59_Y36_N63
\message_size[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(16),
	o => \message_size[16]~input_o\);

-- Location: IOIBUF_X59_Y48_N32
\message_size[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(20),
	o => \message_size[20]~input_o\);

-- Location: IOIBUF_X59_Y46_N1
\message_size[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(18),
	o => \message_size[18]~input_o\);

-- Location: LABCELL_X58_Y36_N32
\LessThan0~17\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( !\message_size[20]~input_o\ & ( !\message_size[18]~input_o\ & ( (!\message_size[19]~input_o\ & (!\message_size[17]~input_o\ & !\message_size[16]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[19]~input_o\,
	datab => \ALT_INV_message_size[17]~input_o\,
	datac => \ALT_INV_message_size[16]~input_o\,
	datae => \ALT_INV_message_size[20]~input_o\,
	dataf => \ALT_INV_message_size[18]~input_o\,
	combout => \LessThan0~17_combout\);

-- Location: MLABCELL_X49_Y26_N18
\LessThan0~19\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( \LessThan0~17_combout\ & ( rd_amt(15) & ( (!\message_size[21]~input_o\ & (\LessThan0~16_combout\ & \LessThan0~18_combout\)) ) ) ) # ( \LessThan0~17_combout\ & ( !rd_amt(15) & ( (!\message_size[21]~input_o\ & 
-- (\LessThan0~16_combout\ & (\LessThan0~18_combout\ & !\message_size[15]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[21]~input_o\,
	datab => \ALT_INV_LessThan0~16_combout\,
	datac => \ALT_INV_LessThan0~18_combout\,
	datad => \ALT_INV_message_size[15]~input_o\,
	datae => \ALT_INV_LessThan0~17_combout\,
	dataf => ALT_INV_rd_amt(15),
	combout => \LessThan0~19_combout\);

-- Location: IOIBUF_X59_Y9_N1
\message_size[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(9),
	o => \message_size[9]~input_o\);

-- Location: IOIBUF_X59_Y39_N63
\message_size[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(13),
	o => \message_size[13]~input_o\);

-- Location: IOIBUF_X59_Y31_N32
\message_size[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(12),
	o => \message_size[12]~input_o\);

-- Location: IOIBUF_X59_Y15_N1
\message_size[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(14),
	o => \message_size[14]~input_o\);

-- Location: LABCELL_X50_Y27_N32
\LessThan0~7\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( rd_amt(13) & ( rd_amt(14) & ( (\message_size[13]~input_o\ & (\message_size[14]~input_o\ & (!\message_size[12]~input_o\ $ (rd_amt(12))))) ) ) ) # ( !rd_amt(13) & ( rd_amt(14) & ( (!\message_size[13]~input_o\ & 
-- (\message_size[14]~input_o\ & (!\message_size[12]~input_o\ $ (rd_amt(12))))) ) ) ) # ( rd_amt(13) & ( !rd_amt(14) & ( (\message_size[13]~input_o\ & (!\message_size[14]~input_o\ & (!\message_size[12]~input_o\ $ (rd_amt(12))))) ) ) ) # ( !rd_amt(13) & ( 
-- !rd_amt(14) & ( (!\message_size[13]~input_o\ & (!\message_size[14]~input_o\ & (!\message_size[12]~input_o\ $ (rd_amt(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[13]~input_o\,
	datab => \ALT_INV_message_size[12]~input_o\,
	datac => ALT_INV_rd_amt(12),
	datad => \ALT_INV_message_size[14]~input_o\,
	datae => ALT_INV_rd_amt(13),
	dataf => ALT_INV_rd_amt(14),
	combout => \LessThan0~7_combout\);

-- Location: IOIBUF_X59_Y18_N94
\message_size[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(11),
	o => \message_size[11]~input_o\);

-- Location: LABCELL_X50_Y25_N24
\LessThan0~8\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( rd_amt(11) & ( !\message_size[11]~input_o\ ) ) # ( !rd_amt(11) & ( \message_size[11]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_message_size[11]~input_o\,
	dataf => ALT_INV_rd_amt(11),
	combout => \LessThan0~8_combout\);

-- Location: IOIBUF_X59_Y13_N63
\message_size[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(10),
	o => \message_size[10]~input_o\);

-- Location: LABCELL_X50_Y25_N22
\LessThan0~9\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( rd_amt(10) & ( !\message_size[10]~input_o\ ) ) # ( !rd_amt(10) & ( \message_size[10]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_message_size[10]~input_o\,
	dataf => ALT_INV_rd_amt(10),
	combout => \LessThan0~9_combout\);

-- Location: IOIBUF_X59_Y13_N32
\message_size[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(8),
	o => \message_size[8]~input_o\);

-- Location: LABCELL_X50_Y25_N6
\LessThan0~10\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( rd_amt(8) & ( !\message_size[8]~input_o\ ) ) # ( !rd_amt(8) & ( \message_size[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_message_size[8]~input_o\,
	dataf => ALT_INV_rd_amt(8),
	combout => \LessThan0~10_combout\);

-- Location: LABCELL_X50_Y25_N34
\LessThan0~11\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( !\LessThan0~9_combout\ & ( !\LessThan0~10_combout\ & ( (\LessThan0~7_combout\ & (!\LessThan0~8_combout\ & (!rd_amt(9) $ (\message_size[9]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rd_amt(9),
	datab => \ALT_INV_message_size[9]~input_o\,
	datac => \ALT_INV_LessThan0~7_combout\,
	datad => \ALT_INV_LessThan0~8_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_LessThan0~10_combout\,
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X50_Y25_N26
\LessThan0~14\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( !rd_amt(8) & ( \message_size[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_message_size[8]~input_o\,
	dataf => ALT_INV_rd_amt(8),
	combout => \LessThan0~14_combout\);

-- Location: LABCELL_X50_Y25_N18
\LessThan0~15\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( !\LessThan0~9_combout\ & ( \LessThan0~14_combout\ & ( (\LessThan0~7_combout\ & (!\LessThan0~8_combout\ & ((!rd_amt(9)) # (\message_size[9]~input_o\)))) ) ) ) # ( !\LessThan0~9_combout\ & ( !\LessThan0~14_combout\ & ( (!rd_amt(9) 
-- & (\message_size[9]~input_o\ & (\LessThan0~7_combout\ & !\LessThan0~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000001011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rd_amt(9),
	datab => \ALT_INV_message_size[9]~input_o\,
	datac => \ALT_INV_LessThan0~7_combout\,
	datad => \ALT_INV_LessThan0~8_combout\,
	datae => \ALT_INV_LessThan0~9_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~15_combout\);

-- Location: LABCELL_X50_Y27_N36
\LessThan0~12\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( rd_amt(13) & ( rd_amt(12) & ( (!rd_amt(14) & \message_size[14]~input_o\) ) ) ) # ( !rd_amt(13) & ( rd_amt(12) & ( (!\message_size[13]~input_o\ & (!rd_amt(14) & \message_size[14]~input_o\)) # (\message_size[13]~input_o\ & 
-- ((!rd_amt(14)) # (\message_size[14]~input_o\))) ) ) ) # ( rd_amt(13) & ( !rd_amt(12) & ( (!rd_amt(14) & (((\message_size[13]~input_o\ & \message_size[12]~input_o\)) # (\message_size[14]~input_o\))) # (rd_amt(14) & (\message_size[13]~input_o\ & 
-- (\message_size[12]~input_o\ & \message_size[14]~input_o\))) ) ) ) # ( !rd_amt(13) & ( !rd_amt(12) & ( (!rd_amt(14) & (((\message_size[14]~input_o\) # (\message_size[12]~input_o\)) # (\message_size[13]~input_o\))) # (rd_amt(14) & 
-- (\message_size[14]~input_o\ & ((\message_size[12]~input_o\) # (\message_size[13]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000011110111000100001111000101010000111101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[13]~input_o\,
	datab => \ALT_INV_message_size[12]~input_o\,
	datac => ALT_INV_rd_amt(14),
	datad => \ALT_INV_message_size[14]~input_o\,
	datae => ALT_INV_rd_amt(13),
	dataf => ALT_INV_rd_amt(12),
	combout => \LessThan0~12_combout\);

-- Location: LABCELL_X50_Y25_N12
\LessThan0~13\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan0~7_combout\ & ( !\LessThan0~12_combout\ & ( (!\message_size[11]~input_o\ & ((!\message_size[10]~input_o\) # ((rd_amt(10)) # (rd_amt(11))))) # (\message_size[11]~input_o\ & (rd_amt(11) & ((!\message_size[10]~input_o\) # 
-- (rd_amt(10))))) ) ) ) # ( !\LessThan0~7_combout\ & ( !\LessThan0~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111100011101010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[11]~input_o\,
	datab => \ALT_INV_message_size[10]~input_o\,
	datac => ALT_INV_rd_amt(11),
	datad => ALT_INV_rd_amt(10),
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: IOIBUF_X59_Y49_N32
\message_size[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(4),
	o => \message_size[4]~input_o\);

-- Location: IOIBUF_X59_Y34_N94
\message_size[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(3),
	o => \message_size[3]~input_o\);

-- Location: LABCELL_X50_Y27_N30
\LessThan0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( rd_amt(3) & ( (\message_size[4]~input_o\ & !rd_amt(4)) ) ) # ( !rd_amt(3) & ( (!\message_size[4]~input_o\ & (\message_size[3]~input_o\ & !rd_amt(4))) # (\message_size[4]~input_o\ & ((!rd_amt(4)) # (\message_size[3]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[4]~input_o\,
	datab => \ALT_INV_message_size[3]~input_o\,
	datad => ALT_INV_rd_amt(4),
	dataf => ALT_INV_rd_amt(3),
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X59_Y6_N32
\message_size[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(2),
	o => \message_size[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N94
\message_size[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(1),
	o => \message_size[1]~input_o\);

-- Location: IOIBUF_X59_Y9_N32
\message_size[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(0),
	o => \message_size[0]~input_o\);

-- Location: LABCELL_X50_Y25_N4
\LessThan0~1\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( rd_amt(2) & ( (!\message_size[2]~input_o\) # ((!\message_size[1]~input_o\ & !\message_size[0]~input_o\)) ) ) # ( !rd_amt(2) & ( (!\message_size[2]~input_o\ & (!\message_size[1]~input_o\ & !\message_size[0]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000000000100010000000000011101110101010101110111010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[2]~input_o\,
	datab => \ALT_INV_message_size[1]~input_o\,
	datad => \ALT_INV_message_size[0]~input_o\,
	dataf => ALT_INV_rd_amt(2),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X49_Y56_N1
\message_size[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(5),
	o => \message_size[5]~input_o\);

-- Location: IOIBUF_X59_Y49_N94
\message_size[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(7),
	o => \message_size[7]~input_o\);

-- Location: IOIBUF_X49_Y56_N63
\message_size[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_size(6),
	o => \message_size[6]~input_o\);

-- Location: MLABCELL_X49_Y27_N38
\LessThan0~5\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( rd_amt(7) & ( rd_amt(5) & ( (\message_size[7]~input_o\ & (!rd_amt(6) & \message_size[6]~input_o\)) ) ) ) # ( !rd_amt(7) & ( rd_amt(5) & ( ((!rd_amt(6) & \message_size[6]~input_o\)) # (\message_size[7]~input_o\) ) ) ) # ( 
-- rd_amt(7) & ( !rd_amt(5) & ( (\message_size[7]~input_o\ & ((!\message_size[5]~input_o\ & (!rd_amt(6) & \message_size[6]~input_o\)) # (\message_size[5]~input_o\ & ((!rd_amt(6)) # (\message_size[6]~input_o\))))) ) ) ) # ( !rd_amt(7) & ( !rd_amt(5) & ( 
-- ((!\message_size[5]~input_o\ & (!rd_amt(6) & \message_size[6]~input_o\)) # (\message_size[5]~input_o\ & ((!rd_amt(6)) # (\message_size[6]~input_o\)))) # (\message_size[7]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001111110111000100000011000100110011111100110000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[5]~input_o\,
	datab => \ALT_INV_message_size[7]~input_o\,
	datac => ALT_INV_rd_amt(6),
	datad => \ALT_INV_message_size[6]~input_o\,
	datae => ALT_INV_rd_amt(7),
	dataf => ALT_INV_rd_amt(5),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X50_Y27_N28
\LessThan0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( rd_amt(3) & ( (\message_size[3]~input_o\ & (!\message_size[4]~input_o\ $ (rd_amt(4)))) ) ) # ( !rd_amt(3) & ( (!\message_size[3]~input_o\ & (!\message_size[4]~input_o\ $ (rd_amt(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100100001001000010000100001001000010010000100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[4]~input_o\,
	datab => \ALT_INV_message_size[3]~input_o\,
	datac => ALT_INV_rd_amt(4),
	dataf => ALT_INV_rd_amt(3),
	combout => \LessThan0~2_combout\);

-- Location: MLABCELL_X49_Y27_N24
\LessThan0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( rd_amt(7) & ( rd_amt(5) & ( (\message_size[5]~input_o\ & (\message_size[7]~input_o\ & (!\message_size[6]~input_o\ $ (rd_amt(6))))) ) ) ) # ( !rd_amt(7) & ( rd_amt(5) & ( (\message_size[5]~input_o\ & (!\message_size[7]~input_o\ & 
-- (!\message_size[6]~input_o\ $ (rd_amt(6))))) ) ) ) # ( rd_amt(7) & ( !rd_amt(5) & ( (!\message_size[5]~input_o\ & (\message_size[7]~input_o\ & (!\message_size[6]~input_o\ $ (rd_amt(6))))) ) ) ) # ( !rd_amt(7) & ( !rd_amt(5) & ( (!\message_size[5]~input_o\ 
-- & (!\message_size[7]~input_o\ & (!\message_size[6]~input_o\ $ (rd_amt(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_size[5]~input_o\,
	datab => \ALT_INV_message_size[7]~input_o\,
	datac => \ALT_INV_message_size[6]~input_o\,
	datad => ALT_INV_rd_amt(6),
	datae => ALT_INV_rd_amt(7),
	dataf => ALT_INV_rd_amt(5),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X50_Y25_N2
\LessThan0~6\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~4_combout\ & ( (!\LessThan0~3_combout\ & (!\LessThan0~5_combout\ & ((!\LessThan0~2_combout\) # (\LessThan0~1_combout\)))) ) ) # ( !\LessThan0~4_combout\ & ( !\LessThan0~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000010100000001000001010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~3_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~5_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LABCELL_X50_Y25_N10
\LessThan0~20\ : arriaii_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \LessThan0~13_combout\ & ( \LessThan0~6_combout\ & ( (\LessThan0~19_combout\ & ((!\LessThan0~15_combout\) # (\LessThan0~0_combout\))) ) ) ) # ( !\LessThan0~13_combout\ & ( \LessThan0~6_combout\ & ( (\LessThan0~0_combout\ & 
-- \LessThan0~19_combout\) ) ) ) # ( \LessThan0~13_combout\ & ( !\LessThan0~6_combout\ & ( (\LessThan0~19_combout\ & (((!\LessThan0~11_combout\ & !\LessThan0~15_combout\)) # (\LessThan0~0_combout\))) ) ) ) # ( !\LessThan0~13_combout\ & ( 
-- !\LessThan0~6_combout\ & ( (\LessThan0~0_combout\ & \LessThan0~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001100010001000100010001000100010011001100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \ALT_INV_LessThan0~19_combout\,
	datac => \ALT_INV_LessThan0~11_combout\,
	datad => \ALT_INV_LessThan0~15_combout\,
	datae => \ALT_INV_LessThan0~13_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~20_combout\);

-- Location: LABCELL_X50_Y26_N20
\wr_done~0\ : arriaii_lcell_comb
-- Equation(s):
-- \wr_done~0_combout\ = ( \LessThan0~20_combout\ & ( (!\d_in_empty~q\ & (\state~11_combout\ & ((\wr_done~q\)))) # (\d_in_empty~q\ & (((\state~11_combout\ & \wr_done~q\)) # (\state~12_combout\))) ) ) # ( !\LessThan0~20_combout\ & ( (\state~11_combout\ & 
-- \wr_done~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000101001101110000010100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d_in_empty~q\,
	datab => \ALT_INV_state~11_combout\,
	datac => \ALT_INV_state~12_combout\,
	datad => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \wr_done~0_combout\);

-- Location: FF_X50_Y26_N21
wr_done : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \wr_done~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_done~q\);

-- Location: MLABCELL_X52_Y25_N22
\read_frst~0\ : arriaii_lcell_comb
-- Equation(s):
-- \read_frst~0_combout\ = ( \read_frst~q\ & ( \state.001~q\ & ( \wr_amt[9]~0_combout\ ) ) ) # ( !\read_frst~q\ & ( \state.001~q\ & ( (\wr_amt[9]~0_combout\ & (\state.011~q\ & ((!\state.010~q\) # (\wr_done~q\)))) ) ) ) # ( \read_frst~q\ & ( !\state.001~q\ & 
-- ( \wr_amt[9]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000100000001010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_amt[9]~0_combout\,
	datab => \ALT_INV_state.010~q\,
	datac => \ALT_INV_state.011~q\,
	datad => \ALT_INV_wr_done~q\,
	datae => \ALT_INV_read_frst~q\,
	dataf => \ALT_INV_state.001~q\,
	combout => \read_frst~0_combout\);

-- Location: FF_X52_Y25_N23
read_frst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \read_frst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \read_frst~q\);

-- Location: LABCELL_X50_Y26_N34
\d_in_shft_ct[27]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_shft_ct[27]~0_combout\ = ( \state.001~q\ & ( \state.010~q\ & ( (\nreset~input_o\ & (!\start~input_o\ & ((!\state.011~q\) # (!\wr_done~q\)))) ) ) ) # ( !\state.001~q\ & ( \state.010~q\ & ( (\nreset~input_o\ & !\start~input_o\) ) ) ) # ( \state.001~q\ 
-- & ( !\state.010~q\ & ( (\nreset~input_o\ & (!\start~input_o\ & !\state.011~q\)) ) ) ) # ( !\state.001~q\ & ( !\state.010~q\ & ( (\nreset~input_o\ & !\start~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010000000100000001000100010001000100010001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_state.011~q\,
	datad => \ALT_INV_wr_done~q\,
	datae => \ALT_INV_state.001~q\,
	dataf => \ALT_INV_state.010~q\,
	combout => \d_in_shft_ct[27]~0_combout\);

-- Location: IOIBUF_X59_Y30_N32
\port_A_data_out[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(7),
	o => \port_A_data_out[7]~input_o\);

-- Location: MLABCELL_X52_Y26_N18
\d_in[7]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[7]~feeder_combout\ = ( \port_A_data_out[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[7]~input_o\,
	combout => \d_in[7]~feeder_combout\);

-- Location: IOIBUF_X59_Y26_N32
\port_A_data_out[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(15),
	o => \port_A_data_out[15]~input_o\);

-- Location: MLABCELL_X52_Y26_N26
\d_in[15]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[15]~feeder_combout\ = \port_A_data_out[15]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[15]~input_o\,
	combout => \d_in[15]~feeder_combout\);

-- Location: IOIBUF_X59_Y26_N63
\port_A_data_out[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(23),
	o => \port_A_data_out[23]~input_o\);

-- Location: MLABCELL_X49_Y26_N20
\d_in[23]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[23]~feeder_combout\ = \port_A_data_out[23]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[23]~input_o\,
	combout => \d_in[23]~feeder_combout\);

-- Location: IOIBUF_X59_Y10_N63
\port_A_data_out[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(31),
	o => \port_A_data_out[31]~input_o\);

-- Location: FF_X50_Y26_N33
\d_in[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[31]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(31));

-- Location: FF_X49_Y26_N21
\d_in[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[23]~feeder_combout\,
	asdata => d_in(31),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(23));

-- Location: FF_X52_Y26_N27
\d_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[15]~feeder_combout\,
	asdata => d_in(23),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(15));

-- Location: FF_X52_Y26_N19
\d_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[7]~feeder_combout\,
	asdata => d_in(15),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(7));

-- Location: IOIBUF_X59_Y33_N63
\port_A_data_out[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(4),
	o => \port_A_data_out[4]~input_o\);

-- Location: MLABCELL_X52_Y26_N14
\d_in[4]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[4]~feeder_combout\ = ( \port_A_data_out[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[4]~input_o\,
	combout => \d_in[4]~feeder_combout\);

-- Location: IOIBUF_X59_Y15_N94
\port_A_data_out[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(12),
	o => \port_A_data_out[12]~input_o\);

-- Location: MLABCELL_X52_Y26_N16
\d_in[12]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[12]~feeder_combout\ = ( \port_A_data_out[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[12]~input_o\,
	combout => \d_in[12]~feeder_combout\);

-- Location: IOIBUF_X59_Y7_N32
\port_A_data_out[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(20),
	o => \port_A_data_out[20]~input_o\);

-- Location: MLABCELL_X52_Y26_N0
\d_in[20]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[20]~feeder_combout\ = \port_A_data_out[20]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[20]~input_o\,
	combout => \d_in[20]~feeder_combout\);

-- Location: IOIBUF_X59_Y12_N63
\port_A_data_out[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(28),
	o => \port_A_data_out[28]~input_o\);

-- Location: FF_X50_Y26_N1
\d_in[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[28]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(28));

-- Location: FF_X52_Y26_N1
\d_in[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[20]~feeder_combout\,
	asdata => d_in(28),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(20));

-- Location: FF_X52_Y26_N17
\d_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[12]~feeder_combout\,
	asdata => d_in(20),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(12));

-- Location: FF_X52_Y26_N15
\d_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[4]~feeder_combout\,
	asdata => d_in(12),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(4));

-- Location: IOIBUF_X59_Y30_N63
\port_A_data_out[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(6),
	o => \port_A_data_out[6]~input_o\);

-- Location: MLABCELL_X52_Y26_N36
\d_in[6]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[6]~feeder_combout\ = ( \port_A_data_out[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[6]~input_o\,
	combout => \d_in[6]~feeder_combout\);

-- Location: IOIBUF_X59_Y19_N32
\port_A_data_out[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(14),
	o => \port_A_data_out[14]~input_o\);

-- Location: MLABCELL_X52_Y26_N32
\d_in[14]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[14]~feeder_combout\ = \port_A_data_out[14]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[14]~input_o\,
	combout => \d_in[14]~feeder_combout\);

-- Location: IOIBUF_X59_Y4_N63
\port_A_data_out[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(22),
	o => \port_A_data_out[22]~input_o\);

-- Location: MLABCELL_X52_Y26_N4
\d_in[22]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[22]~feeder_combout\ = \port_A_data_out[22]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_port_A_data_out[22]~input_o\,
	combout => \d_in[22]~feeder_combout\);

-- Location: IOIBUF_X59_Y13_N1
\port_A_data_out[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(30),
	o => \port_A_data_out[30]~input_o\);

-- Location: FF_X50_Y26_N7
\d_in[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[30]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(30));

-- Location: FF_X52_Y26_N5
\d_in[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[22]~feeder_combout\,
	asdata => d_in(30),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(22));

-- Location: FF_X52_Y26_N33
\d_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[14]~feeder_combout\,
	asdata => d_in(22),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(14));

-- Location: FF_X52_Y26_N37
\d_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[6]~feeder_combout\,
	asdata => d_in(14),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(6));

-- Location: IOIBUF_X59_Y19_N1
\port_A_data_out[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(1),
	o => \port_A_data_out[1]~input_o\);

-- Location: MLABCELL_X52_Y26_N8
\d_in[1]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[1]~feeder_combout\ = ( \port_A_data_out[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[1]~input_o\,
	combout => \d_in[1]~feeder_combout\);

-- Location: IOIBUF_X59_Y30_N94
\port_A_data_out[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(9),
	o => \port_A_data_out[9]~input_o\);

-- Location: MLABCELL_X52_Y26_N38
\d_in[9]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[9]~feeder_combout\ = \port_A_data_out[9]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_port_A_data_out[9]~input_o\,
	combout => \d_in[9]~feeder_combout\);

-- Location: IOIBUF_X59_Y15_N63
\port_A_data_out[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(17),
	o => \port_A_data_out[17]~input_o\);

-- Location: MLABCELL_X52_Y26_N12
\d_in[17]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[17]~feeder_combout\ = \port_A_data_out[17]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[17]~input_o\,
	combout => \d_in[17]~feeder_combout\);

-- Location: IOIBUF_X47_Y0_N94
\port_A_data_out[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(25),
	o => \port_A_data_out[25]~input_o\);

-- Location: FF_X50_Y26_N29
\d_in[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[25]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(25));

-- Location: FF_X52_Y26_N13
\d_in[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[17]~feeder_combout\,
	asdata => d_in(25),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(17));

-- Location: FF_X52_Y26_N39
\d_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[9]~feeder_combout\,
	asdata => d_in(17),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(9));

-- Location: FF_X52_Y26_N9
\d_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[1]~feeder_combout\,
	asdata => d_in(9),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(1));

-- Location: IOIBUF_X59_Y7_N94
\port_A_data_out[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(2),
	o => \port_A_data_out[2]~input_o\);

-- Location: MLABCELL_X52_Y26_N22
\d_in[2]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[2]~feeder_combout\ = ( \port_A_data_out[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[2]~input_o\,
	combout => \d_in[2]~feeder_combout\);

-- Location: IOIBUF_X59_Y33_N1
\port_A_data_out[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(10),
	o => \port_A_data_out[10]~input_o\);

-- Location: MLABCELL_X52_Y26_N30
\d_in[10]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[10]~feeder_combout\ = \port_A_data_out[10]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_port_A_data_out[10]~input_o\,
	combout => \d_in[10]~feeder_combout\);

-- Location: IOIBUF_X59_Y34_N32
\port_A_data_out[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(18),
	o => \port_A_data_out[18]~input_o\);

-- Location: MLABCELL_X49_Y26_N24
\d_in[18]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[18]~feeder_combout\ = ( \port_A_data_out[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[18]~input_o\,
	combout => \d_in[18]~feeder_combout\);

-- Location: IOIBUF_X59_Y36_N32
\port_A_data_out[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(26),
	o => \port_A_data_out[26]~input_o\);

-- Location: FF_X50_Y26_N19
\d_in[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[26]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(26));

-- Location: FF_X49_Y26_N25
\d_in[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[18]~feeder_combout\,
	asdata => d_in(26),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(18));

-- Location: FF_X52_Y26_N31
\d_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[10]~feeder_combout\,
	asdata => d_in(18),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(10));

-- Location: FF_X52_Y26_N23
\d_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[2]~feeder_combout\,
	asdata => d_in(10),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(2));

-- Location: IOIBUF_X52_Y0_N32
\port_A_data_out[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(3),
	o => \port_A_data_out[3]~input_o\);

-- Location: MLABCELL_X52_Y26_N34
\d_in[3]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[3]~feeder_combout\ = ( \port_A_data_out[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[3]~input_o\,
	combout => \d_in[3]~feeder_combout\);

-- Location: IOIBUF_X59_Y26_N94
\port_A_data_out[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(11),
	o => \port_A_data_out[11]~input_o\);

-- Location: MLABCELL_X52_Y26_N10
\d_in[11]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[11]~feeder_combout\ = \port_A_data_out[11]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[11]~input_o\,
	combout => \d_in[11]~feeder_combout\);

-- Location: IOIBUF_X59_Y26_N1
\port_A_data_out[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(19),
	o => \port_A_data_out[19]~input_o\);

-- Location: MLABCELL_X49_Y26_N36
\d_in[19]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[19]~feeder_combout\ = \port_A_data_out[19]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[19]~input_o\,
	combout => \d_in[19]~feeder_combout\);

-- Location: IOIBUF_X50_Y0_N32
\port_A_data_out[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(27),
	o => \port_A_data_out[27]~input_o\);

-- Location: FF_X50_Y26_N13
\d_in[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[27]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(27));

-- Location: FF_X49_Y26_N37
\d_in[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[19]~feeder_combout\,
	asdata => d_in(27),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(19));

-- Location: FF_X52_Y26_N11
\d_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[11]~feeder_combout\,
	asdata => d_in(19),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(11));

-- Location: FF_X52_Y26_N35
\d_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[3]~feeder_combout\,
	asdata => d_in(11),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(3));

-- Location: IOIBUF_X59_Y30_N1
\port_A_data_out[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(0),
	o => \port_A_data_out[0]~input_o\);

-- Location: MLABCELL_X52_Y26_N28
\d_in[0]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[0]~feeder_combout\ = ( \port_A_data_out[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[0]~input_o\,
	combout => \d_in[0]~feeder_combout\);

-- Location: IOIBUF_X56_Y0_N32
\port_A_data_out[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(8),
	o => \port_A_data_out[8]~input_o\);

-- Location: LABCELL_X53_Y26_N18
\d_in[8]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[8]~feeder_combout\ = ( \port_A_data_out[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_port_A_data_out[8]~input_o\,
	combout => \d_in[8]~feeder_combout\);

-- Location: IOIBUF_X59_Y12_N94
\port_A_data_out[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(16),
	o => \port_A_data_out[16]~input_o\);

-- Location: LABCELL_X53_Y26_N30
\d_in[16]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[16]~feeder_combout\ = \port_A_data_out[16]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_port_A_data_out[16]~input_o\,
	combout => \d_in[16]~feeder_combout\);

-- Location: IOIBUF_X59_Y10_N1
\port_A_data_out[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_port_A_data_out(24),
	o => \port_A_data_out[24]~input_o\);

-- Location: FF_X50_Y26_N11
\d_in[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[24]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(24));

-- Location: FF_X53_Y26_N31
\d_in[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[16]~feeder_combout\,
	asdata => d_in(24),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(16));

-- Location: FF_X53_Y26_N19
\d_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[8]~feeder_combout\,
	asdata => d_in(16),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(8));

-- Location: FF_X52_Y26_N29
\d_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[0]~feeder_combout\,
	asdata => d_in(8),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(0));

-- Location: MLABCELL_X52_Y26_N6
\Equal1~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !d_in(0) & ( (!d_in(1) & (!d_in(2) & !d_in(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in(1),
	datac => ALT_INV_d_in(2),
	datad => ALT_INV_d_in(3),
	dataf => ALT_INV_d_in(0),
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X52_Y26_N24
\Equal1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( \Equal1~0_combout\ & ( (!d_in(7) & (!d_in(5) & (!d_in(4) & !d_in(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in(7),
	datab => ALT_INV_d_in(5),
	datac => ALT_INV_d_in(4),
	datad => ALT_INV_d_in(6),
	dataf => \ALT_INV_Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LABCELL_X50_Y25_N38
\d_in_shft_ct[27]~3\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_shft_ct[27]~3_combout\ = ( \Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( (!\d_in_shft_ct[27]~0_combout\ & ((!\d_in_shft_ct[27]~2_combout\) # (!\Equal0~6_combout\))) ) ) ) # ( !\Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( 
-- (!\d_in_shft_ct[27]~0_combout\ & ((!\d_in_shft_ct[27]~2_combout\) # ((!\Equal0~6_combout\) # (\read_frst~q\)))) ) ) ) # ( \Equal1~1_combout\ & ( !\LessThan0~20_combout\ & ( !\d_in_shft_ct[27]~0_combout\ ) ) ) # ( !\Equal1~1_combout\ & ( 
-- !\LessThan0~20_combout\ & ( !\d_in_shft_ct[27]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111011000000001111101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d_in_shft_ct[27]~2_combout\,
	datab => \ALT_INV_read_frst~q\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_d_in_shft_ct[27]~0_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \d_in_shft_ct[27]~3_combout\);

-- Location: FF_X47_Y26_N1
\d_in_shft_ct[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~1_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(0));

-- Location: LABCELL_X47_Y26_N2
\Add5~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( d_in_shft_ct(1) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( d_in_shft_ct(1) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(1),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: FF_X47_Y25_N37
\d_in_shft_ct[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~5_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(1));

-- Location: LABCELL_X47_Y26_N4
\Add5~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( GND ) + ( d_in_shft_ct(2) ) + ( \Add5~6\ ))
-- \Add5~10\ = CARRY(( GND ) + ( d_in_shft_ct(2) ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d_in_shft_ct(2),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\,
	cout => \Add5~10\);

-- Location: FF_X47_Y25_N39
\d_in_shft_ct[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~9_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(2));

-- Location: LABCELL_X47_Y26_N6
\Add5~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( d_in_shft_ct(3) ) + ( GND ) + ( \Add5~10\ ))
-- \Add5~14\ = CARRY(( d_in_shft_ct(3) ) + ( GND ) + ( \Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(3),
	cin => \Add5~10\,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: FF_X47_Y26_N7
\d_in_shft_ct[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~13_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(3));

-- Location: LABCELL_X47_Y26_N8
\Add5~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( d_in_shft_ct(4) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( d_in_shft_ct(4) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(4),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: FF_X47_Y26_N9
\d_in_shft_ct[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~17_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(4));

-- Location: LABCELL_X47_Y26_N10
\Add5~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( d_in_shft_ct(5) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( d_in_shft_ct(5) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(5),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: FF_X47_Y26_N11
\d_in_shft_ct[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~21_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(5));

-- Location: LABCELL_X47_Y26_N12
\Add5~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( d_in_shft_ct(6) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( d_in_shft_ct(6) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(6),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: FF_X47_Y26_N13
\d_in_shft_ct[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~25_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(6));

-- Location: LABCELL_X47_Y26_N14
\Add5~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( d_in_shft_ct(7) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( d_in_shft_ct(7) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(7),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: FF_X47_Y26_N15
\d_in_shft_ct[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~29_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(7));

-- Location: LABCELL_X47_Y26_N16
\Add5~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( d_in_shft_ct(8) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( d_in_shft_ct(8) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(8),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: FF_X47_Y26_N17
\d_in_shft_ct[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~33_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(8));

-- Location: LABCELL_X47_Y26_N18
\Add5~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~37_sumout\ = SUM(( GND ) + ( d_in_shft_ct(9) ) + ( \Add5~34\ ))
-- \Add5~38\ = CARRY(( GND ) + ( d_in_shft_ct(9) ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d_in_shft_ct(9),
	cin => \Add5~34\,
	sumout => \Add5~37_sumout\,
	cout => \Add5~38\);

-- Location: FF_X47_Y25_N35
\d_in_shft_ct[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~37_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(9));

-- Location: LABCELL_X47_Y26_N20
\Add5~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~41_sumout\ = SUM(( d_in_shft_ct(10) ) + ( GND ) + ( \Add5~38\ ))
-- \Add5~42\ = CARRY(( d_in_shft_ct(10) ) + ( GND ) + ( \Add5~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(10),
	cin => \Add5~38\,
	sumout => \Add5~41_sumout\,
	cout => \Add5~42\);

-- Location: FF_X47_Y26_N21
\d_in_shft_ct[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~41_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(10));

-- Location: LABCELL_X47_Y26_N22
\Add5~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~45_sumout\ = SUM(( d_in_shft_ct(11) ) + ( GND ) + ( \Add5~42\ ))
-- \Add5~46\ = CARRY(( d_in_shft_ct(11) ) + ( GND ) + ( \Add5~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(11),
	cin => \Add5~42\,
	sumout => \Add5~45_sumout\,
	cout => \Add5~46\);

-- Location: LABCELL_X47_Y25_N32
\d_in_shft_ct[11]~feeder\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_shft_ct[11]~feeder_combout\ = ( \Add5~45_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_Add5~45_sumout\,
	combout => \d_in_shft_ct[11]~feeder_combout\);

-- Location: FF_X47_Y25_N33
\d_in_shft_ct[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in_shft_ct[11]~feeder_combout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(11));

-- Location: LABCELL_X47_Y26_N24
\Add5~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~49_sumout\ = SUM(( d_in_shft_ct(12) ) + ( GND ) + ( \Add5~46\ ))
-- \Add5~50\ = CARRY(( d_in_shft_ct(12) ) + ( GND ) + ( \Add5~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(12),
	cin => \Add5~46\,
	sumout => \Add5~49_sumout\,
	cout => \Add5~50\);

-- Location: FF_X47_Y26_N25
\d_in_shft_ct[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~49_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(12));

-- Location: LABCELL_X47_Y26_N26
\Add5~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~53_sumout\ = SUM(( GND ) + ( d_in_shft_ct(13) ) + ( \Add5~50\ ))
-- \Add5~54\ = CARRY(( GND ) + ( d_in_shft_ct(13) ) + ( \Add5~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_d_in_shft_ct(13),
	cin => \Add5~50\,
	sumout => \Add5~53_sumout\,
	cout => \Add5~54\);

-- Location: FF_X47_Y25_N27
\d_in_shft_ct[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~53_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(13));

-- Location: LABCELL_X47_Y26_N28
\Add5~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~57_sumout\ = SUM(( d_in_shft_ct(14) ) + ( GND ) + ( \Add5~54\ ))
-- \Add5~58\ = CARRY(( d_in_shft_ct(14) ) + ( GND ) + ( \Add5~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(14),
	cin => \Add5~54\,
	sumout => \Add5~57_sumout\,
	cout => \Add5~58\);

-- Location: FF_X47_Y25_N31
\d_in_shft_ct[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~57_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(14));

-- Location: LABCELL_X47_Y26_N30
\Add5~61\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~61_sumout\ = SUM(( d_in_shft_ct(15) ) + ( GND ) + ( \Add5~58\ ))
-- \Add5~62\ = CARRY(( d_in_shft_ct(15) ) + ( GND ) + ( \Add5~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(15),
	cin => \Add5~58\,
	sumout => \Add5~61_sumout\,
	cout => \Add5~62\);

-- Location: FF_X47_Y26_N31
\d_in_shft_ct[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~61_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(15));

-- Location: LABCELL_X47_Y26_N32
\Add5~65\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~65_sumout\ = SUM(( d_in_shft_ct(16) ) + ( GND ) + ( \Add5~62\ ))
-- \Add5~66\ = CARRY(( d_in_shft_ct(16) ) + ( GND ) + ( \Add5~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(16),
	cin => \Add5~62\,
	sumout => \Add5~65_sumout\,
	cout => \Add5~66\);

-- Location: FF_X47_Y25_N25
\d_in_shft_ct[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \Add5~65_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	sload => VCC,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(16));

-- Location: LABCELL_X47_Y26_N34
\Add5~69\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~69_sumout\ = SUM(( d_in_shft_ct(17) ) + ( GND ) + ( \Add5~66\ ))
-- \Add5~70\ = CARRY(( d_in_shft_ct(17) ) + ( GND ) + ( \Add5~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(17),
	cin => \Add5~66\,
	sumout => \Add5~69_sumout\,
	cout => \Add5~70\);

-- Location: FF_X47_Y26_N35
\d_in_shft_ct[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~69_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(17));

-- Location: LABCELL_X47_Y26_N36
\Add5~73\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~73_sumout\ = SUM(( d_in_shft_ct(18) ) + ( GND ) + ( \Add5~70\ ))
-- \Add5~74\ = CARRY(( d_in_shft_ct(18) ) + ( GND ) + ( \Add5~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(18),
	cin => \Add5~70\,
	sumout => \Add5~73_sumout\,
	cout => \Add5~74\);

-- Location: FF_X47_Y26_N37
\d_in_shft_ct[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~73_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(18));

-- Location: LABCELL_X47_Y26_N38
\Add5~77\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~77_sumout\ = SUM(( d_in_shft_ct(19) ) + ( GND ) + ( \Add5~74\ ))
-- \Add5~78\ = CARRY(( d_in_shft_ct(19) ) + ( GND ) + ( \Add5~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(19),
	cin => \Add5~74\,
	sumout => \Add5~77_sumout\,
	cout => \Add5~78\);

-- Location: FF_X47_Y26_N39
\d_in_shft_ct[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~77_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(19));

-- Location: LABCELL_X47_Y25_N0
\Add5~81\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~81_sumout\ = SUM(( d_in_shft_ct(20) ) + ( GND ) + ( \Add5~78\ ))
-- \Add5~82\ = CARRY(( d_in_shft_ct(20) ) + ( GND ) + ( \Add5~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(20),
	cin => \Add5~78\,
	sumout => \Add5~81_sumout\,
	cout => \Add5~82\);

-- Location: FF_X47_Y25_N1
\d_in_shft_ct[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~81_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(20));

-- Location: LABCELL_X47_Y25_N2
\Add5~85\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~85_sumout\ = SUM(( d_in_shft_ct(21) ) + ( GND ) + ( \Add5~82\ ))
-- \Add5~86\ = CARRY(( d_in_shft_ct(21) ) + ( GND ) + ( \Add5~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(21),
	cin => \Add5~82\,
	sumout => \Add5~85_sumout\,
	cout => \Add5~86\);

-- Location: FF_X47_Y25_N3
\d_in_shft_ct[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~85_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(21));

-- Location: LABCELL_X47_Y25_N4
\Add5~89\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~89_sumout\ = SUM(( d_in_shft_ct(22) ) + ( GND ) + ( \Add5~86\ ))
-- \Add5~90\ = CARRY(( d_in_shft_ct(22) ) + ( GND ) + ( \Add5~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(22),
	cin => \Add5~86\,
	sumout => \Add5~89_sumout\,
	cout => \Add5~90\);

-- Location: FF_X47_Y25_N5
\d_in_shft_ct[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~89_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(22));

-- Location: LABCELL_X47_Y25_N6
\Add5~93\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~93_sumout\ = SUM(( d_in_shft_ct(23) ) + ( GND ) + ( \Add5~90\ ))
-- \Add5~94\ = CARRY(( d_in_shft_ct(23) ) + ( GND ) + ( \Add5~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(23),
	cin => \Add5~90\,
	sumout => \Add5~93_sumout\,
	cout => \Add5~94\);

-- Location: FF_X47_Y25_N7
\d_in_shft_ct[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~93_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(23));

-- Location: LABCELL_X47_Y25_N8
\Add5~97\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~97_sumout\ = SUM(( d_in_shft_ct(24) ) + ( GND ) + ( \Add5~94\ ))
-- \Add5~98\ = CARRY(( d_in_shft_ct(24) ) + ( GND ) + ( \Add5~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(24),
	cin => \Add5~94\,
	sumout => \Add5~97_sumout\,
	cout => \Add5~98\);

-- Location: FF_X47_Y25_N9
\d_in_shft_ct[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~97_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(24));

-- Location: LABCELL_X47_Y25_N10
\Add5~101\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~101_sumout\ = SUM(( d_in_shft_ct(25) ) + ( GND ) + ( \Add5~98\ ))
-- \Add5~102\ = CARRY(( d_in_shft_ct(25) ) + ( GND ) + ( \Add5~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(25),
	cin => \Add5~98\,
	sumout => \Add5~101_sumout\,
	cout => \Add5~102\);

-- Location: FF_X47_Y25_N11
\d_in_shft_ct[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~101_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(25));

-- Location: LABCELL_X47_Y25_N12
\Add5~105\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~105_sumout\ = SUM(( d_in_shft_ct(26) ) + ( GND ) + ( \Add5~102\ ))
-- \Add5~106\ = CARRY(( d_in_shft_ct(26) ) + ( GND ) + ( \Add5~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(26),
	cin => \Add5~102\,
	sumout => \Add5~105_sumout\,
	cout => \Add5~106\);

-- Location: FF_X47_Y25_N13
\d_in_shft_ct[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~105_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(26));

-- Location: LABCELL_X47_Y25_N14
\Add5~109\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~109_sumout\ = SUM(( d_in_shft_ct(27) ) + ( GND ) + ( \Add5~106\ ))
-- \Add5~110\ = CARRY(( d_in_shft_ct(27) ) + ( GND ) + ( \Add5~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(27),
	cin => \Add5~106\,
	sumout => \Add5~109_sumout\,
	cout => \Add5~110\);

-- Location: FF_X47_Y25_N15
\d_in_shft_ct[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~109_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(27));

-- Location: LABCELL_X47_Y25_N16
\Add5~113\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~113_sumout\ = SUM(( d_in_shft_ct(28) ) + ( GND ) + ( \Add5~110\ ))
-- \Add5~114\ = CARRY(( d_in_shft_ct(28) ) + ( GND ) + ( \Add5~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(28),
	cin => \Add5~110\,
	sumout => \Add5~113_sumout\,
	cout => \Add5~114\);

-- Location: FF_X47_Y25_N17
\d_in_shft_ct[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~113_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(28));

-- Location: LABCELL_X47_Y25_N18
\Add5~117\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~117_sumout\ = SUM(( d_in_shft_ct(29) ) + ( GND ) + ( \Add5~114\ ))
-- \Add5~118\ = CARRY(( d_in_shft_ct(29) ) + ( GND ) + ( \Add5~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(29),
	cin => \Add5~114\,
	sumout => \Add5~117_sumout\,
	cout => \Add5~118\);

-- Location: FF_X47_Y25_N19
\d_in_shft_ct[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~117_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(29));

-- Location: LABCELL_X47_Y25_N20
\Add5~121\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~121_sumout\ = SUM(( d_in_shft_ct(30) ) + ( GND ) + ( \Add5~118\ ))
-- \Add5~122\ = CARRY(( d_in_shft_ct(30) ) + ( GND ) + ( \Add5~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(30),
	cin => \Add5~118\,
	sumout => \Add5~121_sumout\,
	cout => \Add5~122\);

-- Location: FF_X47_Y25_N21
\d_in_shft_ct[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~121_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(30));

-- Location: LABCELL_X47_Y25_N22
\Add5~125\ : arriaii_lcell_comb
-- Equation(s):
-- \Add5~125_sumout\ = SUM(( d_in_shft_ct(31) ) + ( GND ) + ( \Add5~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_d_in_shft_ct(31),
	cin => \Add5~122\,
	sumout => \Add5~125_sumout\);

-- Location: FF_X47_Y25_N23
\d_in_shft_ct[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add5~125_sumout\,
	sclr => \d_in_shft_ct[27]~1_combout\,
	ena => \d_in_shft_ct[27]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in_shft_ct(31));

-- Location: LABCELL_X47_Y25_N38
\Equal0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = ( !d_in_shft_ct(27) & ( !d_in_shft_ct(28) & ( (!d_in_shft_ct(30) & (!d_in_shft_ct(31) & (!d_in_shft_ct(21) & !d_in_shft_ct(29)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in_shft_ct(30),
	datab => ALT_INV_d_in_shft_ct(31),
	datac => ALT_INV_d_in_shft_ct(21),
	datad => ALT_INV_d_in_shft_ct(29),
	datae => ALT_INV_d_in_shft_ct(27),
	dataf => ALT_INV_d_in_shft_ct(28),
	combout => \Equal0~4_combout\);

-- Location: MLABCELL_X49_Y25_N18
\Equal0~6DUPLICATE\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal0~6DUPLICATE_combout\ = ( \Equal0~2_combout\ & ( \Equal0~1_combout\ & ( (\Equal0~4_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~4_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~3_combout\,
	datad => \ALT_INV_Equal0~5_combout\,
	datae => \ALT_INV_Equal0~2_combout\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \Equal0~6DUPLICATE_combout\);

-- Location: LABCELL_X50_Y26_N38
\d_in[7]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in[7]~0_combout\ = ( \Equal0~6DUPLICATE_combout\ & ( (\nreset~input_o\ & (!\start~input_o\ & !\state.001~q\)) ) ) # ( !\Equal0~6DUPLICATE_combout\ & ( (\nreset~input_o\ & (!\start~input_o\ & ((!\state.001~q\) # (\state.011~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000100010001000000010001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_state.011~q\,
	datad => \ALT_INV_state.001~q\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \d_in[7]~0_combout\);

-- Location: FF_X50_Y26_N9
\d_in[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \port_A_data_out[29]~input_o\,
	sclr => \always0~5_combout\,
	sload => VCC,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(29));

-- Location: FF_X49_Y26_N9
\d_in[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[21]~feeder_combout\,
	asdata => d_in(29),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(21));

-- Location: FF_X52_Y26_N21
\d_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[13]~feeder_combout\,
	asdata => d_in(21),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(13));

-- Location: FF_X52_Y26_N3
\d_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in[5]~feeder_combout\,
	asdata => d_in(13),
	sload => \always0~5_combout\,
	ena => \d_in[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => d_in(5));

-- Location: MLABCELL_X52_Y25_N10
\rle_siz[12]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz[12]~0_combout\ = ( \state.011~q\ & ( (!\nreset~input_o\) # (\start~input_o\) ) ) # ( !\state.011~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011111100111111111111111111111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_start~input_o\,
	datae => \ALT_INV_state.011~q\,
	combout => \rle_siz[12]~0_combout\);

-- Location: MLABCELL_X52_Y25_N4
\prev_val[6]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_val[6]~0_combout\ = ( \state.010~q\ & ( \state.001~q\ & ( (\nreset~input_o\ & ((!\wr_done~q\) # (!\state.011~q\))) ) ) ) # ( !\state.010~q\ & ( \state.001~q\ & ( (\nreset~input_o\ & !\state.011~q\) ) ) ) # ( \state.010~q\ & ( !\state.001~q\ & ( 
-- \nreset~input_o\ ) ) ) # ( !\state.010~q\ & ( !\state.001~q\ & ( \nreset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011000000000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_wr_done~q\,
	datad => \ALT_INV_state.011~q\,
	datae => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_state.001~q\,
	combout => \prev_val[6]~0_combout\);

-- Location: LABCELL_X50_Y25_N20
\always0~3\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~3_combout\ = ( \LessThan0~20_combout\ & ( (\Equal0~6_combout\ & !\Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \always0~3_combout\);

-- Location: LABCELL_X50_Y25_N28
\prev_val[6]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_val[6]~1_combout\ = ( \Equal2~3_combout\ & ( \always0~3_combout\ & ( (!\nreset~input_o\) # (((!\prev_val[6]~0_combout\ & !\read_frst~q\)) # (\start~input_o\)) ) ) ) # ( !\Equal2~3_combout\ & ( \always0~3_combout\ & ( (!\nreset~input_o\) # 
-- (((!\prev_val[6]~0_combout\ & !\read_frst~q\)) # (\start~input_o\)) ) ) ) # ( \Equal2~3_combout\ & ( !\always0~3_combout\ & ( (!\nreset~input_o\) # (((!\prev_val[6]~0_combout\ & !\read_frst~q\)) # (\start~input_o\)) ) ) ) # ( !\Equal2~3_combout\ & ( 
-- !\always0~3_combout\ & ( (!\nreset~input_o\) # ((!\prev_val[6]~0_combout\) # (\start~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011111110111011101111111011101110111111101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_prev_val[6]~0_combout\,
	datad => \ALT_INV_read_frst~q\,
	datae => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_always0~3_combout\,
	combout => \prev_val[6]~1_combout\);

-- Location: FF_X50_Y25_N15
\prev_val[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(0),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(0));

-- Location: FF_X50_Y25_N33
\prev_val[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(1),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(1));

-- Location: FF_X50_Y25_N35
\prev_val[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(2),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(2));

-- Location: LABCELL_X53_Y25_N28
\Equal2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( d_in(2) & ( d_in(0) & ( (prev_val(0) & (prev_val(2) & (!prev_val(1) $ (d_in(1))))) ) ) ) # ( !d_in(2) & ( d_in(0) & ( (prev_val(0) & (!prev_val(2) & (!prev_val(1) $ (d_in(1))))) ) ) ) # ( d_in(2) & ( !d_in(0) & ( (!prev_val(0) & 
-- (prev_val(2) & (!prev_val(1) $ (d_in(1))))) ) ) ) # ( !d_in(2) & ( !d_in(0) & ( (!prev_val(0) & (!prev_val(2) & (!prev_val(1) $ (d_in(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_val(0),
	datab => ALT_INV_prev_val(1),
	datac => ALT_INV_d_in(1),
	datad => ALT_INV_prev_val(2),
	datae => ALT_INV_d_in(2),
	dataf => ALT_INV_d_in(0),
	combout => \Equal2~1_combout\);

-- Location: FF_X50_Y25_N31
\prev_val[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(5),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(5));

-- Location: FF_X53_Y25_N39
\prev_val[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(7),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(7));

-- Location: FF_X50_Y25_N9
\prev_val[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(6),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(6));

-- Location: LABCELL_X53_Y25_N36
\Equal2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( d_in(6) & ( d_in(7) & ( (prev_val(7) & prev_val(6)) ) ) ) # ( !d_in(6) & ( d_in(7) & ( (prev_val(7) & !prev_val(6)) ) ) ) # ( d_in(6) & ( !d_in(7) & ( (!prev_val(7) & prev_val(6)) ) ) ) # ( !d_in(6) & ( !d_in(7) & ( (!prev_val(7) & 
-- !prev_val(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val(7),
	datad => ALT_INV_prev_val(6),
	datae => ALT_INV_d_in(6),
	dataf => ALT_INV_d_in(7),
	combout => \Equal2~0_combout\);

-- Location: FF_X50_Y25_N37
\prev_val[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(3),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(3));

-- Location: FF_X50_Y25_N17
\prev_val[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => d_in(4),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_val[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_val(4));

-- Location: LABCELL_X53_Y25_N32
\Equal2~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( d_in(4) & ( d_in(3) & ( (prev_val(3) & prev_val(4)) ) ) ) # ( !d_in(4) & ( d_in(3) & ( (prev_val(3) & !prev_val(4)) ) ) ) # ( d_in(4) & ( !d_in(3) & ( (!prev_val(3) & prev_val(4)) ) ) ) # ( !d_in(4) & ( !d_in(3) & ( (!prev_val(3) & 
-- !prev_val(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000001111000000001111000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_prev_val(3),
	datad => ALT_INV_prev_val(4),
	datae => ALT_INV_d_in(4),
	dataf => ALT_INV_d_in(3),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X53_Y25_N12
\Equal2~3\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = ( \Equal2~0_combout\ & ( \Equal2~2_combout\ & ( (\Equal2~1_combout\ & (!d_in(5) $ (prev_val(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_d_in(5),
	datac => \ALT_INV_Equal2~1_combout\,
	datad => ALT_INV_prev_val(5),
	datae => \ALT_INV_Equal2~0_combout\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \Equal2~3_combout\);

-- Location: MLABCELL_X54_Y25_N22
\rle_siz~2\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~2_combout\ = ( \Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( \read_frst~q\ ) ) ) # ( !\Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( (\read_frst~q\ & !\Equal0~6_combout\) ) ) ) # ( \Equal1~1_combout\ & ( !\LessThan0~20_combout\ & ( 
-- \read_frst~q\ ) ) ) # ( !\Equal1~1_combout\ & ( !\LessThan0~20_combout\ & ( \read_frst~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110000001100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_read_frst~q\,
	datac => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \rle_siz~2_combout\);

-- Location: MLABCELL_X54_Y25_N28
\buff_on~0\ : arriaii_lcell_comb
-- Equation(s):
-- \buff_on~0_combout\ = ( \buff_on~q\ & ( !\always0~4_combout\ & ( ((!\Equal2~3_combout\ & (!\rle_siz[12]~0_combout\ & \rle_siz~2_combout\))) # (\wr_amt[9]~0_combout\) ) ) ) # ( !\buff_on~q\ & ( !\always0~4_combout\ & ( (!\Equal2~3_combout\ & 
-- (!\rle_siz[12]~0_combout\ & \rle_siz~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000001100111011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~3_combout\,
	datab => \ALT_INV_wr_amt[9]~0_combout\,
	datac => \ALT_INV_rle_siz[12]~0_combout\,
	datad => \ALT_INV_rle_siz~2_combout\,
	datae => \ALT_INV_buff_on~q\,
	dataf => \ALT_INV_always0~4_combout\,
	combout => \buff_on~0_combout\);

-- Location: FF_X54_Y25_N29
buff_on : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff_on~0_combout\,
	ena => \state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff_on~q\);

-- Location: LABCELL_X53_Y25_N4
\buff~3\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~3_combout\ = ( d_in(5) & ( \Equal2~2_combout\ & ( (\buff_on~q\ & ((!prev_val(5)) # ((!\Equal2~1_combout\) # (!\Equal2~0_combout\)))) ) ) ) # ( !d_in(5) & ( \Equal2~2_combout\ & ( (\buff_on~q\ & (((!\Equal2~1_combout\) # (!\Equal2~0_combout\)) # 
-- (prev_val(5)))) ) ) ) # ( d_in(5) & ( !\Equal2~2_combout\ & ( \buff_on~q\ ) ) ) # ( !d_in(5) & ( !\Equal2~2_combout\ & ( \buff_on~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100010101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => ALT_INV_prev_val(5),
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_Equal2~0_combout\,
	datae => ALT_INV_d_in(5),
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \buff~3_combout\);

-- Location: MLABCELL_X54_Y25_N4
\buff_full~0\ : arriaii_lcell_comb
-- Equation(s):
-- \buff_full~0_combout\ = ( \buff_full~q\ & ( !\always0~4_combout\ & ( ((\buff~3_combout\ & (!\rle_siz[12]~0_combout\ & \rle_siz~2_combout\))) # (\wr_amt[9]~0_combout\) ) ) ) # ( !\buff_full~q\ & ( !\always0~4_combout\ & ( (\buff~3_combout\ & 
-- (!\rle_siz[12]~0_combout\ & \rle_siz~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000001100110111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff~3_combout\,
	datab => \ALT_INV_wr_amt[9]~0_combout\,
	datac => \ALT_INV_rle_siz[12]~0_combout\,
	datad => \ALT_INV_rle_siz~2_combout\,
	datae => \ALT_INV_buff_full~q\,
	dataf => \ALT_INV_always0~4_combout\,
	combout => \buff_full~0_combout\);

-- Location: FF_X54_Y25_N5
buff_full : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff_full~0_combout\,
	ena => \state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \buff_full~q\);

-- Location: LABCELL_X50_Y26_N36
\state~17\ : arriaii_lcell_comb
-- Equation(s):
-- \state~17_combout\ = ( \state.010~q\ & ( (\nreset~input_o\ & (\d_in_empty~q\ & !\wr_done~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_d_in_empty~q\,
	datad => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_state.010~q\,
	combout => \state~17_combout\);

-- Location: MLABCELL_X49_Y26_N10
\state~15\ : arriaii_lcell_comb
-- Equation(s):
-- \state~15_combout\ = (\nreset~input_o\ & (\wr_done~q\ & (\state.010~q\ & !\state.011~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_wr_done~q\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_state.011~q\,
	combout => \state~15_combout\);

-- Location: MLABCELL_X49_Y25_N34
\state~16\ : arriaii_lcell_comb
-- Equation(s):
-- \state~16_combout\ = ( \wr_done~q\ & ( \Equal0~6_combout\ & ( (\state.011~q\ & (\nreset~input_o\ & \buff_on~q\)) ) ) ) # ( !\wr_done~q\ & ( \Equal0~6_combout\ & ( (\state.011~q\ & (\nreset~input_o\ & (!\state.010~q\ & \buff_on~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.011~q\,
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_buff_on~q\,
	datae => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \state~16_combout\);

-- Location: LABCELL_X50_Y26_N2
\state~18\ : arriaii_lcell_comb
-- Equation(s):
-- \state~18_combout\ = ( \state~16_combout\ & ( \LessThan0~20_combout\ & ( (!\buff_full~q\ & !\always0~5_combout\) ) ) ) # ( !\state~16_combout\ & ( \LessThan0~20_combout\ & ( (!\always0~5_combout\ & (!\buff_full~q\)) # (\always0~5_combout\ & 
-- (((!\state~17_combout\ & !\state~15_combout\)))) ) ) ) # ( \state~16_combout\ & ( !\LessThan0~20_combout\ & ( (!\always0~5_combout\ & (!\buff_full~q\)) # (\always0~5_combout\ & ((!\state~15_combout\))) ) ) ) # ( !\state~16_combout\ & ( 
-- !\LessThan0~20_combout\ & ( (!\always0~5_combout\ & (!\buff_full~q\)) # (\always0~5_combout\ & ((!\state~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110100000101011111010000010101100101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_full~q\,
	datab => \ALT_INV_state~17_combout\,
	datac => \ALT_INV_always0~5_combout\,
	datad => \ALT_INV_state~15_combout\,
	datae => \ALT_INV_state~16_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \state~18_combout\);

-- Location: LABCELL_X50_Y26_N10
\state~13\ : arriaii_lcell_comb
-- Equation(s):
-- \state~13_combout\ = ( \LessThan0~20_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( (\read_frst~q\ & ((!\Equal1~1_combout\) # ((\buff_on~q\ & !\Equal2~3_combout\)))) ) ) ) # ( !\LessThan0~20_combout\ & ( \Equal0~6DUPLICATE_combout\ & ( (\buff_on~q\ & 
-- (\read_frst~q\ & !\Equal2~3_combout\)) ) ) ) # ( \LessThan0~20_combout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (\buff_on~q\ & (\read_frst~q\ & !\Equal2~3_combout\)) ) ) ) # ( !\LessThan0~20_combout\ & ( !\Equal0~6DUPLICATE_combout\ & ( (\buff_on~q\ & 
-- (\read_frst~q\ & !\Equal2~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000010001000000000011000100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_read_frst~q\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal2~3_combout\,
	datae => \ALT_INV_LessThan0~20_combout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \state~13_combout\);

-- Location: LABCELL_X50_Y26_N16
\state~14\ : arriaii_lcell_comb
-- Equation(s):
-- \state~14_combout\ = ( \state.001~q\ & ( \LessThan0~20_combout\ & ( (\nreset~input_o\ & (!\always0~4_combout\ & \state.011~q\)) ) ) ) # ( \state.001~q\ & ( !\LessThan0~20_combout\ & ( (\nreset~input_o\ & (!\Equal0~6DUPLICATE_combout\ & 
-- (!\always0~4_combout\ & \state.011~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_Equal0~6DUPLICATE_combout\,
	datac => \ALT_INV_always0~4_combout\,
	datad => \ALT_INV_state.011~q\,
	datae => \ALT_INV_state.001~q\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \state~14_combout\);

-- Location: LABCELL_X50_Y26_N24
\state~19\ : arriaii_lcell_comb
-- Equation(s):
-- \state~19_combout\ = ( \state~14_combout\ & ( (\wr_amt[9]~0_combout\ & ((!\state~18_combout\) # ((\state.010~q\) # (\state~13_combout\)))) ) ) # ( !\state~14_combout\ & ( (\wr_amt[9]~0_combout\ & !\state~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000101010101010100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_amt[9]~0_combout\,
	datab => \ALT_INV_state~18_combout\,
	datac => \ALT_INV_state~13_combout\,
	datad => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_state~14_combout\,
	combout => \state~19_combout\);

-- Location: FF_X50_Y26_N25
\state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.010~q\);

-- Location: LABCELL_X50_Y26_N22
\always0~4\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~4_combout\ = ( \nreset~input_o\ & ( (\state.010~q\ & !\wr_done~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_nreset~input_o\,
	combout => \always0~4_combout\);

-- Location: LABCELL_X50_Y26_N4
\d_in_empty~0\ : arriaii_lcell_comb
-- Equation(s):
-- \d_in_empty~0_combout\ = ( \d_in_empty~q\ & ( \Equal0~6_combout\ & ( (\state~27_combout\ & ((\always0~4_combout\) # (\nreset~input_o\))) ) ) ) # ( !\d_in_empty~q\ & ( \Equal0~6_combout\ & ( (\nreset~input_o\ & (\state.011~q\ & (\state~27_combout\ & 
-- !\always0~4_combout\))) ) ) ) # ( \d_in_empty~q\ & ( !\Equal0~6_combout\ & ( (\state~27_combout\ & ((\always0~4_combout\) # (\nreset~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000111100000001000000000000010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_state.011~q\,
	datac => \ALT_INV_state~27_combout\,
	datad => \ALT_INV_always0~4_combout\,
	datae => \ALT_INV_d_in_empty~q\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \d_in_empty~0_combout\);

-- Location: FF_X50_Y26_N5
d_in_empty : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \d_in_empty~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \d_in_empty~q\);

-- Location: MLABCELL_X54_Y26_N22
\state~22\ : arriaii_lcell_comb
-- Equation(s):
-- \state~22_combout\ = ( \nreset~input_o\ & ( \wr_done~q\ & ( (!\start~input_o\ & (\state.011~q\ & \state.001~q\)) ) ) ) # ( \nreset~input_o\ & ( !\wr_done~q\ & ( (!\state.010~q\ & (!\start~input_o\ & (\state.011~q\ & \state.001~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_state.011~q\,
	datad => \ALT_INV_state.001~q\,
	datae => \ALT_INV_nreset~input_o\,
	dataf => \ALT_INV_wr_done~q\,
	combout => \state~22_combout\);

-- Location: MLABCELL_X49_Y26_N12
\state~20\ : arriaii_lcell_comb
-- Equation(s):
-- \state~20_combout\ = ( !\start~input_o\ & ( (\nreset~input_o\ & (!\state.001~q\ & !\buff_full~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_nreset~input_o\,
	datab => \ALT_INV_state.001~q\,
	datac => \ALT_INV_buff_full~q\,
	dataf => \ALT_INV_start~input_o\,
	combout => \state~20_combout\);

-- Location: LABCELL_X50_Y26_N26
\state~21\ : arriaii_lcell_comb
-- Equation(s):
-- \state~21_combout\ = ( \Equal0~6DUPLICATE_combout\ & ( (!\LessThan0~20_combout\) # (\buff_on~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_buff_on~q\,
	datad => \ALT_INV_LessThan0~20_combout\,
	dataf => \ALT_INV_Equal0~6DUPLICATE_combout\,
	combout => \state~21_combout\);

-- Location: LABCELL_X50_Y26_N14
\state~23\ : arriaii_lcell_comb
-- Equation(s):
-- \state~23_combout\ = ( \state~21_combout\ & ( \state~13_combout\ & ( ((!\d_in_empty~q\ & \state~12_combout\)) # (\state~20_combout\) ) ) ) # ( !\state~21_combout\ & ( \state~13_combout\ & ( ((!\d_in_empty~q\ & \state~12_combout\)) # (\state~20_combout\) ) 
-- ) ) # ( \state~21_combout\ & ( !\state~13_combout\ & ( ((!\d_in_empty~q\ & \state~12_combout\)) # (\state~20_combout\) ) ) ) # ( !\state~21_combout\ & ( !\state~13_combout\ & ( (((!\d_in_empty~q\ & \state~12_combout\)) # (\state~20_combout\)) # 
-- (\state~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111110111111000011111010111100001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d_in_empty~q\,
	datab => \ALT_INV_state~22_combout\,
	datac => \ALT_INV_state~20_combout\,
	datad => \ALT_INV_state~12_combout\,
	datae => \ALT_INV_state~21_combout\,
	dataf => \ALT_INV_state~13_combout\,
	combout => \state~23_combout\);

-- Location: FF_X50_Y26_N15
\state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.011~q\);

-- Location: MLABCELL_X49_Y26_N26
\state~24\ : arriaii_lcell_comb
-- Equation(s):
-- \state~24_combout\ = ( \nreset~input_o\ & ( (!\state.011~q\ & (!\state.001~q\ & ((!\state.010~q\) # (\wr_done~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.011~q\,
	datab => \ALT_INV_state.001~q\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_nreset~input_o\,
	combout => \state~24_combout\);

-- Location: MLABCELL_X49_Y25_N22
\state~25\ : arriaii_lcell_comb
-- Equation(s):
-- \state~25_combout\ = ( \Equal0~6DUPLICATE_combout\ & ( \d_in_empty~q\ & ( (\nreset~input_o\ & (((!\wr_done~q\ & \state.010~q\)) # (\state.011~q\))) ) ) ) # ( !\Equal0~6DUPLICATE_combout\ & ( \d_in_empty~q\ & ( (!\wr_done~q\ & (\nreset~input_o\ & 
-- \state.010~q\)) ) ) ) # ( \Equal0~6DUPLICATE_combout\ & ( !\d_in_empty~q\ & ( (\nreset~input_o\ & (\state.011~q\ & ((!\state.010~q\) # (\wr_done~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000011000100000010000000100000001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_done~q\,
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_state.011~q\,
	datae => \ALT_INV_Equal0~6DUPLICATE_combout\,
	dataf => \ALT_INV_d_in_empty~q\,
	combout => \state~25_combout\);

-- Location: LABCELL_X50_Y26_N30
\state~26\ : arriaii_lcell_comb
-- Equation(s):
-- \state~26_combout\ = ( \state~25_combout\ & ( (\wr_amt[9]~0_combout\ & ((!\always0~5_combout\) # ((!\state~24_combout\ & \LessThan0~20_combout\)))) ) ) # ( !\state~25_combout\ & ( (\wr_amt[9]~0_combout\ & ((!\state~24_combout\) # (!\always0~5_combout\))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101000100010101010100010001010101000001000101010100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_amt[9]~0_combout\,
	datab => \ALT_INV_state~24_combout\,
	datac => \ALT_INV_LessThan0~20_combout\,
	datad => \ALT_INV_always0~5_combout\,
	dataf => \ALT_INV_state~25_combout\,
	combout => \state~26_combout\);

-- Location: FF_X50_Y26_N31
\state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.001~q\);

-- Location: MLABCELL_X54_Y25_N32
\rle_siz~3\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~3_combout\ = ( \state.011~q\ & ( (\state.001~q\ & ((!\state.010~q\) # (\wr_done~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.001~q\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_state.011~q\,
	combout => \rle_siz~3_combout\);

-- Location: LABCELL_X50_Y24_N20
\Add4~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~1_sumout\ = SUM(( VCC ) + ( prev_run(0) ) + ( !VCC ))
-- \Add4~2\ = CARRY(( VCC ) + ( prev_run(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_run(0),
	cin => GND,
	sumout => \Add4~1_sumout\,
	cout => \Add4~2\);

-- Location: MLABCELL_X52_Y25_N2
\prev_run~8\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~8_combout\ = ( \Add4~1_sumout\ ) # ( !\Add4~1_sumout\ & ( (\read_frst~q\ & !\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_read_frst~q\,
	datac => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Add4~1_sumout\,
	combout => \prev_run~8_combout\);

-- Location: MLABCELL_X49_Y25_N4
\prev_run[4]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run[4]~1_combout\ = ( \Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( !\d_in_shft_ct[27]~0_combout\ ) ) ) # ( !\Equal1~1_combout\ & ( \LessThan0~20_combout\ & ( (!\d_in_shft_ct[27]~0_combout\ & ((!\wr_amt[9]~0_combout\) # 
-- ((!\Equal0~6DUPLICATE_combout\) # (!\read_frst~q\)))) ) ) ) # ( \Equal1~1_combout\ & ( !\LessThan0~20_combout\ & ( !\d_in_shft_ct[27]~0_combout\ ) ) ) # ( !\Equal1~1_combout\ & ( !\LessThan0~20_combout\ & ( !\d_in_shft_ct[27]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_d_in_shft_ct[27]~0_combout\,
	datab => \ALT_INV_wr_amt[9]~0_combout\,
	datac => \ALT_INV_Equal0~6DUPLICATE_combout\,
	datad => \ALT_INV_read_frst~q\,
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \prev_run[4]~1_combout\);

-- Location: FF_X49_Y25_N33
\prev_run[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prev_run~8_combout\,
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(0));

-- Location: LABCELL_X50_Y24_N22
\Add4~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~5_sumout\ = SUM(( GND ) + ( prev_run(1) ) + ( \Add4~2\ ))
-- \Add4~6\ = CARRY(( GND ) + ( prev_run(1) ) + ( \Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_run(1),
	cin => \Add4~2\,
	sumout => \Add4~5_sumout\,
	cout => \Add4~6\);

-- Location: MLABCELL_X49_Y25_N24
\prev_run~0\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~0_combout\ = ( \Equal2~3_combout\ & ( \Add4~5_sumout\ ) ) # ( !\Equal2~3_combout\ & ( (!\read_frst~q\ & \Add4~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_read_frst~q\,
	datad => \ALT_INV_Add4~5_sumout\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \prev_run~0_combout\);

-- Location: FF_X49_Y25_N25
\prev_run[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~0_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(1));

-- Location: LABCELL_X50_Y24_N24
\Add4~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~9_sumout\ = SUM(( GND ) + ( prev_run(2) ) + ( \Add4~6\ ))
-- \Add4~10\ = CARRY(( GND ) + ( prev_run(2) ) + ( \Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_run(2),
	cin => \Add4~6\,
	sumout => \Add4~9_sumout\,
	cout => \Add4~10\);

-- Location: MLABCELL_X49_Y25_N36
\prev_run~2\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~2_combout\ = ( \Add4~9_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_read_frst~q\,
	dataf => \ALT_INV_Add4~9_sumout\,
	combout => \prev_run~2_combout\);

-- Location: FF_X49_Y25_N37
\prev_run[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~2_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(2));

-- Location: LABCELL_X50_Y24_N26
\Add4~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~13_sumout\ = SUM(( GND ) + ( prev_run(3) ) + ( \Add4~10\ ))
-- \Add4~14\ = CARRY(( GND ) + ( prev_run(3) ) + ( \Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_run(3),
	cin => \Add4~10\,
	sumout => \Add4~13_sumout\,
	cout => \Add4~14\);

-- Location: MLABCELL_X49_Y25_N26
\prev_run~3\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~3_combout\ = ( \Add4~13_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_read_frst~q\,
	datad => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Add4~13_sumout\,
	combout => \prev_run~3_combout\);

-- Location: FF_X49_Y25_N27
\prev_run[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~3_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(3));

-- Location: LABCELL_X50_Y24_N28
\Add4~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~17_sumout\ = SUM(( prev_run(4) ) + ( GND ) + ( \Add4~14\ ))
-- \Add4~18\ = CARRY(( prev_run(4) ) + ( GND ) + ( \Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_prev_run(4),
	cin => \Add4~14\,
	sumout => \Add4~17_sumout\,
	cout => \Add4~18\);

-- Location: LABCELL_X50_Y25_N0
\prev_run~5\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~5_combout\ = ( \Add4~17_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_read_frst~q\,
	datad => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Add4~17_sumout\,
	combout => \prev_run~5_combout\);

-- Location: FF_X50_Y25_N1
\prev_run[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~5_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(4));

-- Location: LABCELL_X50_Y24_N30
\Add4~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~21_sumout\ = SUM(( prev_run(5) ) + ( GND ) + ( \Add4~18\ ))
-- \Add4~22\ = CARRY(( prev_run(5) ) + ( GND ) + ( \Add4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_prev_run(5),
	cin => \Add4~18\,
	sumout => \Add4~21_sumout\,
	cout => \Add4~22\);

-- Location: MLABCELL_X52_Y25_N0
\prev_run~7\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~7_combout\ = ( \Add4~21_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_read_frst~q\,
	datac => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Add4~21_sumout\,
	combout => \prev_run~7_combout\);

-- Location: FF_X49_Y25_N21
\prev_run[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \prev_run~7_combout\,
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(5));

-- Location: LABCELL_X50_Y24_N32
\Add4~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~25_sumout\ = SUM(( prev_run(6) ) + ( GND ) + ( \Add4~22\ ))
-- \Add4~26\ = CARRY(( prev_run(6) ) + ( GND ) + ( \Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_prev_run(6),
	cin => \Add4~22\,
	sumout => \Add4~25_sumout\,
	cout => \Add4~26\);

-- Location: MLABCELL_X49_Y25_N10
\prev_run~4\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~4_combout\ = ( \Add4~25_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~3_combout\,
	datac => \ALT_INV_read_frst~q\,
	dataf => \ALT_INV_Add4~25_sumout\,
	combout => \prev_run~4_combout\);

-- Location: FF_X49_Y25_N11
\prev_run[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~4_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(6));

-- Location: LABCELL_X50_Y24_N34
\Add4~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add4~29_sumout\ = SUM(( GND ) + ( prev_run(7) ) + ( \Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_prev_run(7),
	cin => \Add4~26\,
	sumout => \Add4~29_sumout\);

-- Location: MLABCELL_X49_Y25_N8
\prev_run~6\ : arriaii_lcell_comb
-- Equation(s):
-- \prev_run~6_combout\ = ( \Add4~29_sumout\ & ( (!\read_frst~q\) # (\Equal2~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~3_combout\,
	datad => \ALT_INV_read_frst~q\,
	dataf => \ALT_INV_Add4~29_sumout\,
	combout => \prev_run~6_combout\);

-- Location: FF_X49_Y25_N9
\prev_run[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prev_run~6_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \prev_run[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_run(7));

-- Location: LABCELL_X53_Y25_N10
\Equal3~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = ( !prev_run(5) & ( (!prev_run(7) & (!prev_run(4) & !prev_run(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_run(7),
	datac => ALT_INV_prev_run(4),
	datad => ALT_INV_prev_run(0),
	dataf => ALT_INV_prev_run(5),
	combout => \Equal3~0_combout\);

-- Location: LABCELL_X53_Y25_N24
\Equal3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = ( !prev_run(6) & ( \Equal3~0_combout\ & ( (!prev_run(2) & (!prev_run(1) & !prev_run(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_prev_run(2),
	datac => ALT_INV_prev_run(1),
	datad => ALT_INV_prev_run(3),
	datae => ALT_INV_prev_run(6),
	dataf => \ALT_INV_Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: MLABCELL_X54_Y25_N34
\rle_siz~1\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~1_combout\ = ( \Equal3~1_combout\ & ( (\buff_on~q\ & !\Equal2~3_combout\) ) ) # ( !\Equal3~1_combout\ & ( (!\Equal2~3_combout\ & ((\read_frst~q\) # (\buff_on~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datac => \ALT_INV_read_frst~q\,
	datad => \ALT_INV_Equal2~3_combout\,
	dataf => \ALT_INV_Equal3~1_combout\,
	combout => \rle_siz~1_combout\);

-- Location: LABCELL_X58_Y25_N0
\Add3~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( VCC ) + ( rle_siz(1) ) + ( !VCC ))
-- \Add3~2\ = CARRY(( VCC ) + ( rle_siz(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(1),
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X55_Y25_N4
\rle_siz~5\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~5_combout\ = ( \rle_siz~2_combout\ & ( \Add3~1_sumout\ & ( (!\rle_siz~3_combout\ & (\rle_siz~4_combout\)) # (\rle_siz~3_combout\ & ((!\rle_siz~1_combout\ & (\rle_siz~4_combout\)) # (\rle_siz~1_combout\ & ((!\rle_siz[12]~0_combout\))))) ) ) ) # ( 
-- !\rle_siz~2_combout\ & ( \Add3~1_sumout\ & ( \rle_siz~4_combout\ ) ) ) # ( \rle_siz~2_combout\ & ( !\Add3~1_sumout\ & ( (\rle_siz~4_combout\ & ((!\rle_siz~3_combout\) # (!\rle_siz~1_combout\))) ) ) ) # ( !\rle_siz~2_combout\ & ( !\Add3~1_sumout\ & ( 
-- \rle_siz~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010100010001010101010101010101010101110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rle_siz~4_combout\,
	datab => \ALT_INV_rle_siz~3_combout\,
	datac => \ALT_INV_rle_siz[12]~0_combout\,
	datad => \ALT_INV_rle_siz~1_combout\,
	datae => \ALT_INV_rle_siz~2_combout\,
	dataf => \ALT_INV_Add3~1_sumout\,
	combout => \rle_siz~5_combout\);

-- Location: FF_X55_Y25_N5
\rle_siz[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(1));

-- Location: MLABCELL_X57_Y25_N0
\Add2~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( VCC ) + ( rle_siz(2) ) + ( !VCC ))
-- \Add2~2\ = CARRY(( VCC ) + ( rle_siz(2) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(2),
	cin => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\);

-- Location: LABCELL_X58_Y25_N2
\Add3~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( GND ) + ( rle_siz(2) ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( GND ) + ( rle_siz(2) ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(2),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: LABCELL_X55_Y25_N26
\rle_siz~6\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~6_combout\ = ( \Add3~5_sumout\ & ( \LessThan0~20_combout\ & ( ((!\Equal0~6_combout\) # (\Add2~1_sumout\)) # (\Equal1~1_combout\) ) ) ) # ( !\Add3~5_sumout\ & ( \LessThan0~20_combout\ & ( (!\Equal1~1_combout\ & (\Equal0~6_combout\ & 
-- \Add2~1_sumout\)) ) ) ) # ( \Add3~5_sumout\ & ( !\LessThan0~20_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011001111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_Add2~1_sumout\,
	datae => \ALT_INV_Add3~5_sumout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \rle_siz~6_combout\);

-- Location: LABCELL_X50_Y26_N28
\always0~2\ : arriaii_lcell_comb
-- Equation(s):
-- \always0~2_combout\ = ( \state.010~q\ & ( !\wr_done~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_state.010~q\,
	combout => \always0~2_combout\);

-- Location: LABCELL_X53_Y25_N20
\rle_siz[12]~7\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz[12]~7_combout\ = ( \state.011~q\ & ( \always0~2_combout\ & ( (\nreset~input_o\ & !\start~input_o\) ) ) ) # ( !\state.011~q\ & ( \always0~2_combout\ & ( (\nreset~input_o\ & !\start~input_o\) ) ) ) # ( \state.011~q\ & ( !\always0~2_combout\ & ( 
-- (\nreset~input_o\ & (!\start~input_o\ & ((!\read_frst~q\) # (!\state.001~q\)))) ) ) ) # ( !\state.011~q\ & ( !\always0~2_combout\ & ( (\nreset~input_o\ & !\start~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100100000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_read_frst~q\,
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_state.001~q\,
	datad => \ALT_INV_start~input_o\,
	datae => \ALT_INV_state.011~q\,
	dataf => \ALT_INV_always0~2_combout\,
	combout => \rle_siz[12]~7_combout\);

-- Location: MLABCELL_X54_Y25_N10
\rle_siz[12]~8\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz[12]~8_combout\ = ( \LessThan0~20_combout\ & ( \Equal0~6_combout\ & ( (!\rle_siz[12]~7_combout\ & (((!\Equal1~1_combout\) # (\rle_siz~1_combout\)) # (\rle_siz[12]~0_combout\))) ) ) ) # ( !\LessThan0~20_combout\ & ( \Equal0~6_combout\ & ( 
-- (!\rle_siz[12]~7_combout\ & ((\rle_siz~1_combout\) # (\rle_siz[12]~0_combout\))) ) ) ) # ( \LessThan0~20_combout\ & ( !\Equal0~6_combout\ & ( (!\rle_siz[12]~7_combout\ & ((\rle_siz~1_combout\) # (\rle_siz[12]~0_combout\))) ) ) ) # ( 
-- !\LessThan0~20_combout\ & ( !\Equal0~6_combout\ & ( (!\rle_siz[12]~7_combout\ & ((\rle_siz~1_combout\) # (\rle_siz[12]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000000010111110000000001011111000000001101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rle_siz[12]~0_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_rle_siz~1_combout\,
	datad => \ALT_INV_rle_siz[12]~7_combout\,
	datae => \ALT_INV_LessThan0~20_combout\,
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \rle_siz[12]~8_combout\);

-- Location: FF_X55_Y25_N27
\rle_siz[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~6_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(2));

-- Location: MLABCELL_X57_Y25_N2
\Add2~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( rle_siz(3) ) + ( GND ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( rle_siz(3) ) + ( GND ) + ( \Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(3),
	cin => \Add2~2\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\);

-- Location: LABCELL_X58_Y25_N4
\Add3~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( rle_siz(3) ) + ( GND ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( rle_siz(3) ) + ( GND ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(3),
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X55_Y25_N28
\rle_siz~9\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~9_combout\ = ( \Add3~9_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~5_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~9_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~5_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~5_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~9_sumout\,
	combout => \rle_siz~9_combout\);

-- Location: FF_X55_Y25_N29
\rle_siz[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~9_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(3));

-- Location: MLABCELL_X57_Y25_N4
\Add2~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( GND ) + ( rle_siz(4) ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( GND ) + ( rle_siz(4) ) + ( \Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(4),
	cin => \Add2~6\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\);

-- Location: LABCELL_X58_Y25_N6
\Add3~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( GND ) + ( rle_siz(4) ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( GND ) + ( rle_siz(4) ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(4),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X55_Y25_N0
\rle_siz~10\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~10_combout\ = ( \Add3~13_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~9_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~13_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~9_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~9_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~13_sumout\,
	combout => \rle_siz~10_combout\);

-- Location: FF_X55_Y25_N1
\rle_siz[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~10_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(4));

-- Location: MLABCELL_X57_Y25_N6
\Add2~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( rle_siz(5) ) + ( GND ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( rle_siz(5) ) + ( GND ) + ( \Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(5),
	cin => \Add2~10\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\);

-- Location: LABCELL_X58_Y25_N8
\Add3~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( rle_siz(5) ) + ( GND ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( rle_siz(5) ) + ( GND ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(5),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X55_Y25_N14
\rle_siz~11\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~11_combout\ = ( \Add3~17_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~13_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~17_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~13_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~13_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~17_sumout\,
	combout => \rle_siz~11_combout\);

-- Location: FF_X55_Y25_N15
\rle_siz[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~11_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(5));

-- Location: LABCELL_X58_Y25_N10
\Add3~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( GND ) + ( rle_siz(6) ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( GND ) + ( rle_siz(6) ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(6),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: MLABCELL_X57_Y25_N8
\Add2~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( GND ) + ( rle_siz(6) ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( GND ) + ( rle_siz(6) ) + ( \Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(6),
	cin => \Add2~14\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\);

-- Location: LABCELL_X55_Y25_N12
\rle_siz~12\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~12_combout\ = ( \Add2~17_sumout\ & ( ((\LessThan0~20_combout\ & (!\Equal1~1_combout\ & \Equal0~6_combout\))) # (\Add3~21_sumout\) ) ) # ( !\Add2~17_sumout\ & ( (\Add3~21_sumout\ & ((!\LessThan0~20_combout\) # ((!\Equal0~6_combout\) # 
-- (\Equal1~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add3~21_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add2~17_sumout\,
	combout => \rle_siz~12_combout\);

-- Location: FF_X55_Y25_N13
\rle_siz[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~12_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(6));

-- Location: MLABCELL_X57_Y25_N10
\Add2~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( GND ) + ( rle_siz(7) ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( GND ) + ( rle_siz(7) ) + ( \Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(7),
	cin => \Add2~18\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\);

-- Location: LABCELL_X58_Y25_N12
\Add3~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( GND ) + ( rle_siz(7) ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( GND ) + ( rle_siz(7) ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(7),
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X55_Y25_N18
\rle_siz~13\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~13_combout\ = ( \Add3~25_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~21_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~25_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~21_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~21_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~25_sumout\,
	combout => \rle_siz~13_combout\);

-- Location: FF_X55_Y25_N19
\rle_siz[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~13_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(7));

-- Location: MLABCELL_X57_Y25_N12
\Add2~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( GND ) + ( rle_siz(8) ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( GND ) + ( rle_siz(8) ) + ( \Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(8),
	cin => \Add2~22\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\);

-- Location: LABCELL_X58_Y25_N14
\Add3~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( rle_siz(8) ) + ( GND ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( rle_siz(8) ) + ( GND ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(8),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X55_Y25_N16
\rle_siz~14\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~14_combout\ = ( \Add3~29_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~25_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~29_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~25_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~25_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~29_sumout\,
	combout => \rle_siz~14_combout\);

-- Location: FF_X55_Y25_N17
\rle_siz[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~14_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(8));

-- Location: LABCELL_X58_Y25_N16
\Add3~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( GND ) + ( rle_siz(9) ) + ( \Add3~30\ ))
-- \Add3~34\ = CARRY(( GND ) + ( rle_siz(9) ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(9),
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\,
	cout => \Add3~34\);

-- Location: MLABCELL_X57_Y25_N14
\Add2~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( GND ) + ( rle_siz(9) ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( GND ) + ( rle_siz(9) ) + ( \Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(9),
	cin => \Add2~26\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\);

-- Location: LABCELL_X55_Y25_N22
\rle_siz~15\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~15_combout\ = ( \Add2~29_sumout\ & ( ((\LessThan0~20_combout\ & (!\Equal1~1_combout\ & \Equal0~6_combout\))) # (\Add3~33_sumout\) ) ) # ( !\Add2~29_sumout\ & ( (\Add3~33_sumout\ & ((!\LessThan0~20_combout\) # ((!\Equal0~6_combout\) # 
-- (\Equal1~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001011000011110000101100001111010011110000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add3~33_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add2~29_sumout\,
	combout => \rle_siz~15_combout\);

-- Location: FF_X55_Y25_N23
\rle_siz[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~15_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(9));

-- Location: MLABCELL_X57_Y25_N16
\Add2~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( GND ) + ( rle_siz(10) ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( GND ) + ( rle_siz(10) ) + ( \Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(10),
	cin => \Add2~30\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\);

-- Location: LABCELL_X58_Y25_N18
\Add3~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~37_sumout\ = SUM(( rle_siz(10) ) + ( GND ) + ( \Add3~34\ ))
-- \Add3~38\ = CARRY(( rle_siz(10) ) + ( GND ) + ( \Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(10),
	cin => \Add3~34\,
	sumout => \Add3~37_sumout\,
	cout => \Add3~38\);

-- Location: LABCELL_X55_Y25_N20
\rle_siz~16\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~16_combout\ = ( \Add3~37_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~33_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~37_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~33_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~33_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~37_sumout\,
	combout => \rle_siz~16_combout\);

-- Location: FF_X55_Y25_N21
\rle_siz[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~16_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(10));

-- Location: MLABCELL_X57_Y25_N18
\Add2~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( GND ) + ( rle_siz(11) ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( GND ) + ( rle_siz(11) ) + ( \Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(11),
	cin => \Add2~34\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\);

-- Location: LABCELL_X58_Y25_N20
\Add3~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~41_sumout\ = SUM(( GND ) + ( rle_siz(11) ) + ( \Add3~38\ ))
-- \Add3~42\ = CARRY(( GND ) + ( rle_siz(11) ) + ( \Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(11),
	cin => \Add3~38\,
	sumout => \Add3~41_sumout\,
	cout => \Add3~42\);

-- Location: LABCELL_X55_Y25_N10
\rle_siz~17\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~17_combout\ = ( \Add3~41_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~37_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~41_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~37_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~37_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~41_sumout\,
	combout => \rle_siz~17_combout\);

-- Location: FF_X55_Y25_N11
\rle_siz[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~17_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(11));

-- Location: MLABCELL_X57_Y25_N20
\Add2~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( GND ) + ( rle_siz(12) ) + ( \Add2~38\ ))
-- \Add2~42\ = CARRY(( GND ) + ( rle_siz(12) ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(12),
	cin => \Add2~38\,
	sumout => \Add2~41_sumout\,
	cout => \Add2~42\);

-- Location: LABCELL_X58_Y25_N22
\Add3~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~45_sumout\ = SUM(( GND ) + ( rle_siz(12) ) + ( \Add3~42\ ))
-- \Add3~46\ = CARRY(( GND ) + ( rle_siz(12) ) + ( \Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(12),
	cin => \Add3~42\,
	sumout => \Add3~45_sumout\,
	cout => \Add3~46\);

-- Location: LABCELL_X55_Y25_N30
\rle_siz~18\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~18_combout\ = ( \Add3~45_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~41_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~45_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~41_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~41_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~45_sumout\,
	combout => \rle_siz~18_combout\);

-- Location: FF_X55_Y25_N31
\rle_siz[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~18_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(12));

-- Location: MLABCELL_X57_Y25_N22
\Add2~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~45_sumout\ = SUM(( rle_siz(13) ) + ( GND ) + ( \Add2~42\ ))
-- \Add2~46\ = CARRY(( rle_siz(13) ) + ( GND ) + ( \Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(13),
	cin => \Add2~42\,
	sumout => \Add2~45_sumout\,
	cout => \Add2~46\);

-- Location: LABCELL_X58_Y25_N24
\Add3~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~49_sumout\ = SUM(( rle_siz(13) ) + ( GND ) + ( \Add3~46\ ))
-- \Add3~50\ = CARRY(( rle_siz(13) ) + ( GND ) + ( \Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(13),
	cin => \Add3~46\,
	sumout => \Add3~49_sumout\,
	cout => \Add3~50\);

-- Location: LABCELL_X55_Y25_N2
\rle_siz~19\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~19_combout\ = ( \Add3~49_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~45_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~49_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Equal0~6_combout\ & 
-- \Add2~45_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111011111111111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Equal0~6_combout\,
	datad => \ALT_INV_Add2~45_sumout\,
	dataf => \ALT_INV_Add3~49_sumout\,
	combout => \rle_siz~19_combout\);

-- Location: FF_X55_Y25_N3
\rle_siz[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~19_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(13));

-- Location: MLABCELL_X57_Y25_N24
\Add2~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~49_sumout\ = SUM(( rle_siz(14) ) + ( GND ) + ( \Add2~46\ ))
-- \Add2~50\ = CARRY(( rle_siz(14) ) + ( GND ) + ( \Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_rle_siz(14),
	cin => \Add2~46\,
	sumout => \Add2~49_sumout\,
	cout => \Add2~50\);

-- Location: LABCELL_X58_Y25_N26
\Add3~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~53_sumout\ = SUM(( GND ) + ( rle_siz(14) ) + ( \Add3~50\ ))
-- \Add3~54\ = CARRY(( GND ) + ( rle_siz(14) ) + ( \Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(14),
	cin => \Add3~50\,
	sumout => \Add3~53_sumout\,
	cout => \Add3~54\);

-- Location: LABCELL_X55_Y25_N8
\rle_siz~20\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~20_combout\ = ( \Add3~53_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~49_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~53_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~49_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~49_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~53_sumout\,
	combout => \rle_siz~20_combout\);

-- Location: FF_X55_Y25_N9
\rle_siz[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~20_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(14));

-- Location: MLABCELL_X57_Y25_N26
\Add2~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add2~53_sumout\ = SUM(( GND ) + ( rle_siz(15) ) + ( \Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(15),
	cin => \Add2~50\,
	sumout => \Add2~53_sumout\);

-- Location: LABCELL_X58_Y25_N28
\Add3~57\ : arriaii_lcell_comb
-- Equation(s):
-- \Add3~57_sumout\ = SUM(( GND ) + ( rle_siz(15) ) + ( \Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_rle_siz(15),
	cin => \Add3~54\,
	sumout => \Add3~57_sumout\);

-- Location: LABCELL_X55_Y25_N36
\rle_siz~21\ : arriaii_lcell_comb
-- Equation(s):
-- \rle_siz~21_combout\ = ( \Add3~57_sumout\ & ( (!\LessThan0~20_combout\) # (((!\Equal0~6_combout\) # (\Add2~53_sumout\)) # (\Equal1~1_combout\)) ) ) # ( !\Add3~57_sumout\ & ( (\LessThan0~20_combout\ & (!\Equal1~1_combout\ & (\Add2~53_sumout\ & 
-- \Equal0~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010011111111101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_Add2~53_sumout\,
	datad => \ALT_INV_Equal0~6_combout\,
	dataf => \ALT_INV_Add3~57_sumout\,
	combout => \rle_siz~21_combout\);

-- Location: FF_X55_Y25_N37
\rle_siz[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rle_siz~21_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \rle_siz[12]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rle_siz(15));

-- Location: MLABCELL_X54_Y25_N2
\done~0\ : arriaii_lcell_comb
-- Equation(s):
-- \done~0_combout\ = (\LessThan0~20_combout\ & \wr_done~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datac => \ALT_INV_wr_done~q\,
	combout => \done~0_combout\);

-- Location: MLABCELL_X52_Y25_N24
\buff[8]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \buff[8]~1_combout\ = ( \state.010~q\ & ( \state.001~q\ & ( (!\wr_done~q\) # ((\state.011~q\ & \read_frst~q\)) ) ) ) # ( !\state.010~q\ & ( \state.001~q\ & ( (\state.011~q\ & \read_frst~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011111010101010101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_wr_done~q\,
	datac => \ALT_INV_state.011~q\,
	datad => \ALT_INV_read_frst~q\,
	datae => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_state.001~q\,
	combout => \buff[8]~1_combout\);

-- Location: LABCELL_X53_Y25_N18
\buff[8]~0\ : arriaii_lcell_comb
-- Equation(s):
-- \buff[8]~0_combout\ = ( \state.010~q\ & ( \Equal2~3_combout\ & ( !\wr_done~q\ ) ) ) # ( \state.010~q\ & ( !\Equal2~3_combout\ & ( (!\wr_done~q\) # ((!\buff_on~q\ & !\Equal3~1_combout\)) ) ) ) # ( !\state.010~q\ & ( !\Equal2~3_combout\ & ( (!\buff_on~q\ & 
-- !\Equal3~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000111110101111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datac => \ALT_INV_wr_done~q\,
	datad => \ALT_INV_Equal3~1_combout\,
	datae => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_Equal2~3_combout\,
	combout => \buff[8]~0_combout\);

-- Location: LABCELL_X53_Y25_N2
\buff[8]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \buff[8]~2_combout\ = ( \buff[8]~0_combout\ & ( \LessThan0~20_combout\ & ( (!\wr_amt[9]~0_combout\) # (\buff[8]~1_combout\) ) ) ) # ( !\buff[8]~0_combout\ & ( \LessThan0~20_combout\ & ( (!\wr_amt[9]~0_combout\) # ((\buff[8]~1_combout\ & 
-- (!\Equal1~1_combout\ & \Equal0~6_combout\))) ) ) ) # ( \buff[8]~0_combout\ & ( !\LessThan0~20_combout\ & ( (!\wr_amt[9]~0_combout\) # (\buff[8]~1_combout\) ) ) ) # ( !\buff[8]~0_combout\ & ( !\LessThan0~20_combout\ & ( !\wr_amt[9]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110111011101110111001100110111001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff[8]~1_combout\,
	datab => \ALT_INV_wr_amt[9]~0_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal0~6_combout\,
	datae => \ALT_INV_buff[8]~0_combout\,
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff[8]~2_combout\);

-- Location: FF_X53_Y25_N3
\buff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(0),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(0));

-- Location: FF_X53_Y25_N29
\buff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(1),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(1));

-- Location: FF_X53_Y25_N35
\buff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(2),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(2));

-- Location: FF_X53_Y25_N21
\buff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(3),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(3));

-- Location: FF_X53_Y25_N17
\buff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(4),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(4));

-- Location: FF_X53_Y25_N13
\buff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(5),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(5));

-- Location: FF_X53_Y25_N25
\buff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(6),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(6));

-- Location: FF_X53_Y25_N23
\buff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_run(7),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(7));

-- Location: FF_X53_Y25_N1
\buff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(0),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(8));

-- Location: FF_X53_Y25_N7
\buff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(1),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(9));

-- Location: FF_X53_Y25_N15
\buff[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(2),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(10));

-- Location: FF_X53_Y25_N31
\buff[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(3),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(11));

-- Location: FF_X53_Y25_N11
\buff[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(4),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(12));

-- Location: FF_X53_Y25_N27
\buff[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(5),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(13));

-- Location: FF_X53_Y25_N5
\buff[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(6),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(14));

-- Location: FF_X53_Y25_N33
\buff[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => prev_val(7),
	sclr => \rle_siz[12]~0_combout\,
	sload => VCC,
	ena => \buff[8]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(15));

-- Location: LABCELL_X50_Y24_N10
\buff~4\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~4_combout\ = ( buff(16) & ( \LessThan0~20_combout\ ) ) # ( !buff(16) & ( \LessThan0~20_combout\ & ( (!prev_run(0) & (((!\Equal1~1_combout\ & \Equal0~6DUPLICATE_combout\)))) # (prev_run(0) & (((!\Equal1~1_combout\ & \Equal0~6DUPLICATE_combout\)) # 
-- (\buff~3_combout\))) ) ) ) # ( buff(16) & ( !\LessThan0~20_combout\ ) ) # ( !buff(16) & ( !\LessThan0~20_combout\ & ( (prev_run(0) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001111111111111111100010001111100011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_run(0),
	datab => \ALT_INV_buff~3_combout\,
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_Equal0~6DUPLICATE_combout\,
	datae => ALT_INV_buff(16),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~4_combout\);

-- Location: MLABCELL_X52_Y25_N28
\buff[16]~5\ : arriaii_lcell_comb
-- Equation(s):
-- \buff[16]~5_combout\ = ( \state.010~q\ & ( \state.011~q\ & ( ((!\nreset~input_o\) # ((!\wr_done~q\) # (\read_frst~q\))) # (\start~input_o\) ) ) ) # ( !\state.010~q\ & ( \state.011~q\ & ( ((!\nreset~input_o\) # (\read_frst~q\)) # (\start~input_o\) ) ) ) # 
-- ( \state.010~q\ & ( !\state.011~q\ & ( ((!\nreset~input_o\) # (!\wr_done~q\)) # (\start~input_o\) ) ) ) # ( !\state.010~q\ & ( !\state.011~q\ & ( (!\nreset~input_o\) # (\start~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110111011101111111011111110111011101111111111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_start~input_o\,
	datab => \ALT_INV_nreset~input_o\,
	datac => \ALT_INV_wr_done~q\,
	datad => \ALT_INV_read_frst~q\,
	datae => \ALT_INV_state.010~q\,
	dataf => \ALT_INV_state.011~q\,
	combout => \buff[16]~5_combout\);

-- Location: FF_X50_Y24_N11
\buff[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~4_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(16));

-- Location: MLABCELL_X52_Y25_N18
\buff~6\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~6_combout\ = ( buff(17) & ( \Equal0~6_combout\ & ( (!\LessThan0~20_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(17) & ( \Equal0~6_combout\ & ( (prev_run(1) & (\buff~3_combout\ & ((!\LessThan0~20_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( 
-- buff(17) & ( !\Equal0~6_combout\ ) ) # ( !buff(17) & ( !\Equal0~6_combout\ & ( (prev_run(1) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111111111111100000000010100011111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_run(1),
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_LessThan0~20_combout\,
	datad => \ALT_INV_buff~3_combout\,
	datae => ALT_INV_buff(17),
	dataf => \ALT_INV_Equal0~6_combout\,
	combout => \buff~6_combout\);

-- Location: FF_X52_Y25_N19
\buff[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~6_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(17));

-- Location: LABCELL_X55_Y25_N32
\buff~7\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~7_combout\ = ( buff(18) & ( \LessThan0~20_combout\ & ( (!\Equal0~6_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(18) & ( \LessThan0~20_combout\ & ( (\buff~3_combout\ & (prev_run(2) & ((!\Equal0~6_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( 
-- buff(18) & ( !\LessThan0~20_combout\ ) ) # ( !buff(18) & ( !\LessThan0~20_combout\ & ( (\buff~3_combout\ & prev_run(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000000011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff~3_combout\,
	datab => \ALT_INV_Equal1~1_combout\,
	datac => ALT_INV_prev_run(2),
	datad => \ALT_INV_Equal0~6_combout\,
	datae => ALT_INV_buff(18),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~7_combout\);

-- Location: FF_X55_Y25_N33
\buff[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~7_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(18));

-- Location: LABCELL_X50_Y24_N14
\buff~8\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~8_combout\ = ( buff(19) & ( \LessThan0~20_combout\ & ( (!\Equal0~6DUPLICATE_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(19) & ( \LessThan0~20_combout\ & ( (prev_run(3) & (\buff~3_combout\ & ((!\Equal0~6DUPLICATE_combout\) # 
-- (\Equal1~1_combout\)))) ) ) ) # ( buff(19) & ( !\LessThan0~20_combout\ ) ) # ( !buff(19) & ( !\LessThan0~20_combout\ & ( (prev_run(3) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111111111111111100000101000000011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_run(3),
	datab => \ALT_INV_Equal1~1_combout\,
	datac => \ALT_INV_buff~3_combout\,
	datad => \ALT_INV_Equal0~6DUPLICATE_combout\,
	datae => ALT_INV_buff(19),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~8_combout\);

-- Location: FF_X50_Y24_N15
\buff[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~8_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(19));

-- Location: MLABCELL_X52_Y25_N36
\buff~9\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~9_combout\ = ( buff(20) & ( \LessThan0~20_combout\ & ( (!\Equal0~6_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(20) & ( \LessThan0~20_combout\ & ( (prev_run(4) & (\buff~3_combout\ & ((!\Equal0~6_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( 
-- buff(20) & ( !\LessThan0~20_combout\ ) ) # ( !buff(20) & ( !\LessThan0~20_combout\ & ( (prev_run(4) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000010000000111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => ALT_INV_prev_run(4),
	datac => \ALT_INV_buff~3_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => ALT_INV_buff(20),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~9_combout\);

-- Location: FF_X52_Y25_N37
\buff[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~9_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(20));

-- Location: MLABCELL_X52_Y25_N32
\buff~10\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~10_combout\ = ( buff(21) & ( \LessThan0~20_combout\ & ( (!\Equal0~6_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(21) & ( \LessThan0~20_combout\ & ( (prev_run(5) & (\buff~3_combout\ & ((!\Equal0~6_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( 
-- buff(21) & ( !\LessThan0~20_combout\ ) ) # ( !buff(21) & ( !\LessThan0~20_combout\ & ( (prev_run(5) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000010000000111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => ALT_INV_prev_run(5),
	datac => \ALT_INV_buff~3_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => ALT_INV_buff(21),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~10_combout\);

-- Location: FF_X52_Y25_N33
\buff[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~10_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(21));

-- Location: MLABCELL_X52_Y25_N14
\buff~11\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~11_combout\ = ( buff(22) & ( \LessThan0~20_combout\ & ( (!\Equal0~6_combout\) # (\Equal1~1_combout\) ) ) ) # ( !buff(22) & ( \LessThan0~20_combout\ & ( (prev_run(6) & (\buff~3_combout\ & ((!\Equal0~6_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( 
-- buff(22) & ( !\LessThan0~20_combout\ ) ) # ( !buff(22) & ( !\LessThan0~20_combout\ & ( (prev_run(6) & \buff~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111111111111100000000001000111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~6_combout\,
	datab => ALT_INV_prev_run(6),
	datac => \ALT_INV_Equal1~1_combout\,
	datad => \ALT_INV_buff~3_combout\,
	datae => ALT_INV_buff(22),
	dataf => \ALT_INV_LessThan0~20_combout\,
	combout => \buff~11_combout\);

-- Location: FF_X52_Y25_N15
\buff[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~11_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(22));

-- Location: LABCELL_X50_Y24_N16
\buff~12\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~12_combout\ = ( buff(23) & ( \buff~3_combout\ & ( (!\LessThan0~20_combout\) # ((!\Equal0~6DUPLICATE_combout\) # (\Equal1~1_combout\)) ) ) ) # ( !buff(23) & ( \buff~3_combout\ & ( (prev_run(7) & ((!\LessThan0~20_combout\) # 
-- ((!\Equal0~6DUPLICATE_combout\) # (\Equal1~1_combout\)))) ) ) ) # ( buff(23) & ( !\buff~3_combout\ & ( (!\LessThan0~20_combout\) # ((!\Equal0~6DUPLICATE_combout\) # (\Equal1~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001111111101010100010101011111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_prev_run(7),
	datab => \ALT_INV_LessThan0~20_combout\,
	datac => \ALT_INV_Equal0~6DUPLICATE_combout\,
	datad => \ALT_INV_Equal1~1_combout\,
	datae => ALT_INV_buff(23),
	dataf => \ALT_INV_buff~3_combout\,
	combout => \buff~12_combout\);

-- Location: FF_X50_Y24_N17
\buff[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~12_combout\,
	sclr => \rle_siz[12]~0_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(23));

-- Location: MLABCELL_X54_Y25_N26
\buff~13\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~13_combout\ = ((\buff_on~q\ & (!\Equal2~3_combout\ & prev_val(0)))) # (buff(24))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(0),
	datad => ALT_INV_buff(24),
	combout => \buff~13_combout\);

-- Location: FF_X54_Y25_N27
\buff[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~13_combout\,
	asdata => d_in(0),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(24));

-- Location: MLABCELL_X54_Y25_N24
\buff~14\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~14_combout\ = ((\buff_on~q\ & (!\Equal2~3_combout\ & prev_val(1)))) # (buff(25))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(1),
	datad => ALT_INV_buff(25),
	combout => \buff~14_combout\);

-- Location: FF_X54_Y25_N25
\buff[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~14_combout\,
	asdata => d_in(1),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(25));

-- Location: MLABCELL_X54_Y25_N14
\buff~15\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~15_combout\ = ( \buff_on~q\ & ( ((!\Equal2~3_combout\ & prev_val(2))) # (buff(26)) ) ) # ( !\buff_on~q\ & ( buff(26) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(2),
	datad => ALT_INV_buff(26),
	dataf => \ALT_INV_buff_on~q\,
	combout => \buff~15_combout\);

-- Location: FF_X54_Y25_N15
\buff[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~15_combout\,
	asdata => d_in(2),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(26));

-- Location: MLABCELL_X54_Y25_N12
\buff~16\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~16_combout\ = ((\buff_on~q\ & (!\Equal2~3_combout\ & prev_val(3)))) # (buff(27))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(3),
	datad => ALT_INV_buff(27),
	combout => \buff~16_combout\);

-- Location: FF_X54_Y25_N13
\buff[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~16_combout\,
	asdata => d_in(3),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(27));

-- Location: MLABCELL_X54_Y25_N18
\buff~17\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~17_combout\ = ( prev_val(4) & ( ((\buff_on~q\ & !\Equal2~3_combout\)) # (buff(28)) ) ) # ( !prev_val(4) & ( buff(28) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000100111111110100010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datad => ALT_INV_buff(28),
	dataf => ALT_INV_prev_val(4),
	combout => \buff~17_combout\);

-- Location: FF_X54_Y25_N19
\buff[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~17_combout\,
	asdata => d_in(4),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(28));

-- Location: MLABCELL_X54_Y25_N16
\buff~18\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~18_combout\ = ((\buff_on~q\ & (!\Equal2~3_combout\ & prev_val(5)))) # (buff(29))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(5),
	datad => ALT_INV_buff(29),
	combout => \buff~18_combout\);

-- Location: FF_X54_Y25_N17
\buff[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~18_combout\,
	asdata => d_in(5),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(29));

-- Location: MLABCELL_X54_Y25_N38
\buff~19\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~19_combout\ = ((\buff_on~q\ & (!\Equal2~3_combout\ & prev_val(6)))) # (buff(30))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100000100111111110000010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datab => \ALT_INV_Equal2~3_combout\,
	datac => ALT_INV_prev_val(6),
	datad => ALT_INV_buff(30),
	combout => \buff~19_combout\);

-- Location: FF_X54_Y25_N39
\buff[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~19_combout\,
	asdata => d_in(6),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(30));

-- Location: MLABCELL_X54_Y25_N36
\buff~20\ : arriaii_lcell_comb
-- Equation(s):
-- \buff~20_combout\ = ( prev_val(7) & ( ((\buff_on~q\ & !\Equal2~3_combout\)) # (buff(31)) ) ) # ( !prev_val(7) & ( buff(31) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_buff_on~q\,
	datac => \ALT_INV_Equal2~3_combout\,
	datad => ALT_INV_buff(31),
	dataf => ALT_INV_prev_val(7),
	combout => \buff~20_combout\);

-- Location: FF_X54_Y25_N37
\buff[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \buff~20_combout\,
	asdata => d_in(7),
	sclr => \rle_siz[12]~0_combout\,
	sload => \always0~3_combout\,
	ena => \buff[16]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => buff(31));

-- Location: IOIBUF_X52_Y0_N63
\message_addr[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(0),
	o => \message_addr[0]~input_o\);

-- Location: IOIBUF_X48_Y0_N32
\rle_addr[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(0),
	o => \rle_addr[0]~input_o\);

-- Location: MLABCELL_X49_Y26_N38
\port_A_addr~0\ : arriaii_lcell_comb
-- Equation(s):
-- \port_A_addr~0_combout\ = (!\state.010~q\ & (\message_addr[0]~input_o\)) # (\state.010~q\ & ((\rle_addr[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_message_addr[0]~input_o\,
	datac => \ALT_INV_state.010~q\,
	datad => \ALT_INV_rle_addr[0]~input_o\,
	combout => \port_A_addr~0_combout\);

-- Location: IOIBUF_X59_Y22_N1
\rle_addr[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(1),
	o => \rle_addr[1]~input_o\);

-- Location: IOIBUF_X55_Y0_N94
\message_addr[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(1),
	o => \message_addr[1]~input_o\);

-- Location: LABCELL_X53_Y25_N8
\port_A_addr~1\ : arriaii_lcell_comb
-- Equation(s):
-- \port_A_addr~1_combout\ = (!\state.010~q\ & ((\message_addr[1]~input_o\))) # (\state.010~q\ & (\rle_addr[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000011110011110000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.010~q\,
	datac => \ALT_INV_rle_addr[1]~input_o\,
	datad => \ALT_INV_message_addr[1]~input_o\,
	combout => \port_A_addr~1_combout\);

-- Location: IOIBUF_X41_Y0_N1
\message_addr[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(2),
	o => \message_addr[2]~input_o\);

-- Location: IOIBUF_X51_Y56_N63
\rle_addr[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(2),
	o => \rle_addr[2]~input_o\);

-- Location: MLABCELL_X49_Y27_N34
\Add6~0\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = ( \rle_addr[2]~input_o\ & ( (\message_addr[2]~input_o\) # (\state.010~q\) ) ) # ( !\rle_addr[2]~input_o\ & ( (!\state.010~q\ & \message_addr[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => \ALT_INV_message_addr[2]~input_o\,
	dataf => \ALT_INV_rle_addr[2]~input_o\,
	combout => \Add6~0_combout\);

-- Location: MLABCELL_X52_Y27_N0
\Add1~1\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( wr_amt(2) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( wr_amt(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(2),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: MLABCELL_X52_Y27_N32
\wr_amt[9]~1\ : arriaii_lcell_comb
-- Equation(s):
-- \wr_amt[9]~1_combout\ = ( \nreset~input_o\ & ( \state.010~q\ & ( (\wr_done~q\) # (\start~input_o\) ) ) ) # ( !\nreset~input_o\ & ( \state.010~q\ ) ) # ( \nreset~input_o\ & ( !\state.010~q\ ) ) # ( !\nreset~input_o\ & ( !\state.010~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_start~input_o\,
	datac => \ALT_INV_wr_done~q\,
	datae => \ALT_INV_nreset~input_o\,
	dataf => \ALT_INV_state.010~q\,
	combout => \wr_amt[9]~1_combout\);

-- Location: MLABCELL_X52_Y27_N30
\wr_amt[9]~2\ : arriaii_lcell_comb
-- Equation(s):
-- \wr_amt[9]~2_combout\ = ( \wr_done~q\ & ( \state.001~q\ & ( !\wr_amt[9]~0_combout\ ) ) ) # ( !\wr_done~q\ & ( \state.001~q\ & ( (!\wr_amt[9]~0_combout\) # (\state.010~q\) ) ) ) # ( \wr_done~q\ & ( !\state.001~q\ & ( !\wr_amt[9]~0_combout\ ) ) ) # ( 
-- !\wr_done~q\ & ( !\state.001~q\ & ( !\wr_amt[9]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_wr_amt[9]~0_combout\,
	datad => \ALT_INV_state.010~q\,
	datae => \ALT_INV_wr_done~q\,
	dataf => \ALT_INV_state.001~q\,
	combout => \wr_amt[9]~2_combout\);

-- Location: FF_X52_Y27_N1
\wr_amt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~1_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(2));

-- Location: MLABCELL_X49_Y27_N0
\Add6~2\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~2_sumout\ = SUM(( \Add6~0_combout\ ) + ( (!\state.010~q\ & (rd_amt(2))) # (\state.010~q\ & ((wr_amt(2)))) ) + ( !VCC ))
-- \Add6~3\ = CARRY(( \Add6~0_combout\ ) + ( (!\state.010~q\ & (rd_amt(2))) # (\state.010~q\ & ((wr_amt(2)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(2),
	datad => \ALT_INV_Add6~0_combout\,
	dataf => ALT_INV_wr_amt(2),
	cin => GND,
	sumout => \Add6~2_sumout\,
	cout => \Add6~3\);

-- Location: IOIBUF_X59_Y51_N94
\rle_addr[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(3),
	o => \rle_addr[3]~input_o\);

-- Location: MLABCELL_X52_Y27_N2
\Add1~5\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( wr_amt(3) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( wr_amt(3) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(3),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: FF_X52_Y27_N3
\wr_amt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~5_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(3));

-- Location: IOIBUF_X59_Y36_N94
\message_addr[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(3),
	o => \message_addr[3]~input_o\);

-- Location: MLABCELL_X49_Y27_N2
\Add6~6\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~6_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(3))) # (\state.010~q\ & ((wr_amt(3)))) ) + ( (!\state.010~q\ & ((\message_addr[3]~input_o\))) # (\state.010~q\ & (\rle_addr[3]~input_o\)) ) + ( \Add6~3\ ))
-- \Add6~7\ = CARRY(( (!\state.010~q\ & (rd_amt(3))) # (\state.010~q\ & ((wr_amt(3)))) ) + ( (!\state.010~q\ & ((\message_addr[3]~input_o\))) # (\state.010~q\ & (\rle_addr[3]~input_o\)) ) + ( \Add6~3\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => ALT_INV_rd_amt(3),
	datac => \ALT_INV_rle_addr[3]~input_o\,
	datad => ALT_INV_wr_amt(3),
	dataf => \ALT_INV_message_addr[3]~input_o\,
	cin => \Add6~3\,
	sumout => \Add6~6_sumout\,
	cout => \Add6~7\);

-- Location: IOIBUF_X59_Y34_N63
\message_addr[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(4),
	o => \message_addr[4]~input_o\);

-- Location: IOIBUF_X59_Y48_N63
\rle_addr[4]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(4),
	o => \rle_addr[4]~input_o\);

-- Location: LABCELL_X58_Y34_N16
\Add6~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~9_combout\ = ( \rle_addr[4]~input_o\ & ( (\state.010~q\) # (\message_addr[4]~input_o\) ) ) # ( !\rle_addr[4]~input_o\ & ( (\message_addr[4]~input_o\ & !\state.010~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011101110111011101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_message_addr[4]~input_o\,
	datab => \ALT_INV_state.010~q\,
	datae => \ALT_INV_rle_addr[4]~input_o\,
	combout => \Add6~9_combout\);

-- Location: MLABCELL_X52_Y27_N4
\Add1~9\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( wr_amt(4) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( wr_amt(4) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(4),
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X52_Y27_N5
\wr_amt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~9_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(4));

-- Location: MLABCELL_X49_Y27_N4
\Add6~11\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~11_sumout\ = SUM(( \Add6~9_combout\ ) + ( (!\state.010~q\ & (rd_amt(4))) # (\state.010~q\ & ((wr_amt(4)))) ) + ( \Add6~7\ ))
-- \Add6~12\ = CARRY(( \Add6~9_combout\ ) + ( (!\state.010~q\ & (rd_amt(4))) # (\state.010~q\ & ((wr_amt(4)))) ) + ( \Add6~7\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(4),
	datad => \ALT_INV_Add6~9_combout\,
	dataf => ALT_INV_wr_amt(4),
	cin => \Add6~7\,
	sumout => \Add6~11_sumout\,
	cout => \Add6~12\);

-- Location: IOIBUF_X59_Y31_N63
\rle_addr[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(5),
	o => \rle_addr[5]~input_o\);

-- Location: IOIBUF_X49_Y56_N94
\message_addr[5]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(5),
	o => \message_addr[5]~input_o\);

-- Location: MLABCELL_X52_Y27_N6
\Add1~13\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( wr_amt(5) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( wr_amt(5) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(5),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X52_Y27_N7
\wr_amt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~13_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(5));

-- Location: MLABCELL_X49_Y27_N6
\Add6~15\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~15_sumout\ = SUM(( (!\state.010~q\ & ((\message_addr[5]~input_o\))) # (\state.010~q\ & (\rle_addr[5]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(5))) # (\state.010~q\ & ((wr_amt(5)))) ) + ( \Add6~12\ ))
-- \Add6~16\ = CARRY(( (!\state.010~q\ & ((\message_addr[5]~input_o\))) # (\state.010~q\ & (\rle_addr[5]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(5))) # (\state.010~q\ & ((wr_amt(5)))) ) + ( \Add6~12\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => \ALT_INV_rle_addr[5]~input_o\,
	datac => ALT_INV_rd_amt(5),
	datad => \ALT_INV_message_addr[5]~input_o\,
	dataf => ALT_INV_wr_amt(5),
	cin => \Add6~12\,
	sumout => \Add6~15_sumout\,
	cout => \Add6~16\);

-- Location: MLABCELL_X52_Y27_N8
\Add1~17\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( wr_amt(6) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( wr_amt(6) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(6),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X52_Y27_N9
\wr_amt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~17_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(6));

-- Location: IOIBUF_X59_Y31_N94
\rle_addr[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(6),
	o => \rle_addr[6]~input_o\);

-- Location: IOIBUF_X59_Y51_N63
\message_addr[6]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(6),
	o => \message_addr[6]~input_o\);

-- Location: LABCELL_X58_Y31_N24
\Add6~18\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = ( \message_addr[6]~input_o\ & ( (!\state.010~q\) # (\rle_addr[6]~input_o\) ) ) # ( !\message_addr[6]~input_o\ & ( (\state.010~q\ & \rle_addr[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => \ALT_INV_rle_addr[6]~input_o\,
	dataf => \ALT_INV_message_addr[6]~input_o\,
	combout => \Add6~18_combout\);

-- Location: MLABCELL_X49_Y27_N8
\Add6~20\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~20_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(6))) # (\state.010~q\ & ((wr_amt(6)))) ) + ( \Add6~18_combout\ ) + ( \Add6~16\ ))
-- \Add6~21\ = CARRY(( (!\state.010~q\ & (rd_amt(6))) # (\state.010~q\ & ((wr_amt(6)))) ) + ( \Add6~18_combout\ ) + ( \Add6~16\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(6),
	datad => ALT_INV_wr_amt(6),
	dataf => \ALT_INV_Add6~18_combout\,
	cin => \Add6~16\,
	sumout => \Add6~20_sumout\,
	cout => \Add6~21\);

-- Location: IOIBUF_X59_Y31_N1
\rle_addr[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(7),
	o => \rle_addr[7]~input_o\);

-- Location: MLABCELL_X52_Y27_N10
\Add1~21\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( wr_amt(7) ) + ( GND ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( wr_amt(7) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(7),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: FF_X52_Y27_N11
\wr_amt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~21_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(7));

-- Location: IOIBUF_X59_Y12_N1
\message_addr[7]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(7),
	o => \message_addr[7]~input_o\);

-- Location: MLABCELL_X49_Y27_N10
\Add6~24\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~24_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(7))) # (\state.010~q\ & ((wr_amt(7)))) ) + ( (!\state.010~q\ & ((\message_addr[7]~input_o\))) # (\state.010~q\ & (\rle_addr[7]~input_o\)) ) + ( \Add6~21\ ))
-- \Add6~25\ = CARRY(( (!\state.010~q\ & (rd_amt(7))) # (\state.010~q\ & ((wr_amt(7)))) ) + ( (!\state.010~q\ & ((\message_addr[7]~input_o\))) # (\state.010~q\ & (\rle_addr[7]~input_o\)) ) + ( \Add6~21\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011100100010000000000000000000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => \ALT_INV_rle_addr[7]~input_o\,
	datac => ALT_INV_rd_amt(7),
	datad => ALT_INV_wr_amt(7),
	dataf => \ALT_INV_message_addr[7]~input_o\,
	cin => \Add6~21\,
	sumout => \Add6~24_sumout\,
	cout => \Add6~25\);

-- Location: MLABCELL_X52_Y27_N12
\Add1~25\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( wr_amt(8) ) + ( GND ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( wr_amt(8) ) + ( GND ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(8),
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X52_Y27_N13
\wr_amt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~25_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(8));

-- Location: IOIBUF_X59_Y39_N32
\message_addr[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(8),
	o => \message_addr[8]~input_o\);

-- Location: IOIBUF_X45_Y0_N1
\rle_addr[8]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(8),
	o => \rle_addr[8]~input_o\);

-- Location: MLABCELL_X49_Y27_N20
\Add6~27\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~27_combout\ = ( \rle_addr[8]~input_o\ & ( (\message_addr[8]~input_o\) # (\state.010~q\) ) ) # ( !\rle_addr[8]~input_o\ & ( (!\state.010~q\ & \message_addr[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => \ALT_INV_message_addr[8]~input_o\,
	dataf => \ALT_INV_rle_addr[8]~input_o\,
	combout => \Add6~27_combout\);

-- Location: MLABCELL_X49_Y27_N12
\Add6~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(8))) # (\state.010~q\ & ((wr_amt(8)))) ) + ( \Add6~27_combout\ ) + ( \Add6~25\ ))
-- \Add6~30\ = CARRY(( (!\state.010~q\ & (rd_amt(8))) # (\state.010~q\ & ((wr_amt(8)))) ) + ( \Add6~27_combout\ ) + ( \Add6~25\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(8),
	datad => ALT_INV_wr_amt(8),
	dataf => \ALT_INV_Add6~27_combout\,
	cin => \Add6~25\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: IOIBUF_X59_Y46_N94
\rle_addr[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(9),
	o => \rle_addr[9]~input_o\);

-- Location: MLABCELL_X52_Y27_N14
\Add1~29\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( wr_amt(9) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( wr_amt(9) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(9),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X52_Y27_N15
\wr_amt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~29_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(9));

-- Location: IOIBUF_X59_Y46_N32
\message_addr[9]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(9),
	o => \message_addr[9]~input_o\);

-- Location: MLABCELL_X49_Y27_N14
\Add6~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(9))) # (\state.010~q\ & ((wr_amt(9)))) ) + ( (!\state.010~q\ & ((\message_addr[9]~input_o\))) # (\state.010~q\ & (\rle_addr[9]~input_o\)) ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( (!\state.010~q\ & (rd_amt(9))) # (\state.010~q\ & ((wr_amt(9)))) ) + ( (!\state.010~q\ & ((\message_addr[9]~input_o\))) # (\state.010~q\ & (\rle_addr[9]~input_o\)) ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => ALT_INV_rd_amt(9),
	datac => \ALT_INV_rle_addr[9]~input_o\,
	datad => ALT_INV_wr_amt(9),
	dataf => \ALT_INV_message_addr[9]~input_o\,
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: MLABCELL_X52_Y27_N16
\Add1~33\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( wr_amt(10) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( wr_amt(10) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(10),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X52_Y27_N17
\wr_amt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~33_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(10));

-- Location: IOIBUF_X59_Y34_N1
\message_addr[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(10),
	o => \message_addr[10]~input_o\);

-- Location: IOIBUF_X46_Y56_N1
\rle_addr[10]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(10),
	o => \rle_addr[10]~input_o\);

-- Location: MLABCELL_X49_Y27_N32
\Add6~36\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~36_combout\ = ( \rle_addr[10]~input_o\ & ( (\message_addr[10]~input_o\) # (\state.010~q\) ) ) # ( !\rle_addr[10]~input_o\ & ( (!\state.010~q\ & \message_addr[10]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => \ALT_INV_message_addr[10]~input_o\,
	dataf => \ALT_INV_rle_addr[10]~input_o\,
	combout => \Add6~36_combout\);

-- Location: MLABCELL_X49_Y27_N16
\Add6~38\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~38_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(10))) # (\state.010~q\ & ((wr_amt(10)))) ) + ( \Add6~36_combout\ ) + ( \Add6~34\ ))
-- \Add6~39\ = CARRY(( (!\state.010~q\ & (rd_amt(10))) # (\state.010~q\ & ((wr_amt(10)))) ) + ( \Add6~36_combout\ ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(10),
	datad => ALT_INV_wr_amt(10),
	dataf => \ALT_INV_Add6~36_combout\,
	cin => \Add6~34\,
	sumout => \Add6~38_sumout\,
	cout => \Add6~39\);

-- Location: IOIBUF_X49_Y56_N32
\rle_addr[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(11),
	o => \rle_addr[11]~input_o\);

-- Location: IOIBUF_X45_Y0_N94
\message_addr[11]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(11),
	o => \message_addr[11]~input_o\);

-- Location: MLABCELL_X52_Y27_N18
\Add1~37\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( wr_amt(11) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( wr_amt(11) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(11),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X52_Y27_N19
\wr_amt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~37_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(11));

-- Location: MLABCELL_X49_Y27_N18
\Add6~42\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~42_sumout\ = SUM(( (!\state.010~q\ & ((\message_addr[11]~input_o\))) # (\state.010~q\ & (\rle_addr[11]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(11))) # (\state.010~q\ & ((wr_amt(11)))) ) + ( \Add6~39\ ))
-- \Add6~43\ = CARRY(( (!\state.010~q\ & ((\message_addr[11]~input_o\))) # (\state.010~q\ & (\rle_addr[11]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(11))) # (\state.010~q\ & ((wr_amt(11)))) ) + ( \Add6~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011010000000000000000000000001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.010~q\,
	datab => \ALT_INV_rle_addr[11]~input_o\,
	datac => ALT_INV_rd_amt(11),
	datad => \ALT_INV_message_addr[11]~input_o\,
	dataf => ALT_INV_wr_amt(11),
	cin => \Add6~39\,
	sumout => \Add6~42_sumout\,
	cout => \Add6~43\);

-- Location: IOIBUF_X44_Y56_N1
\rle_addr[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(12),
	o => \rle_addr[12]~input_o\);

-- Location: IOIBUF_X48_Y0_N94
\message_addr[12]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(12),
	o => \message_addr[12]~input_o\);

-- Location: MLABCELL_X49_Y26_N30
\Add6~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~45_combout\ = ( \message_addr[12]~input_o\ & ( (!\state.010~q\) # (\rle_addr[12]~input_o\) ) ) # ( !\message_addr[12]~input_o\ & ( (\state.010~q\ & \rle_addr[12]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.010~q\,
	datad => \ALT_INV_rle_addr[12]~input_o\,
	dataf => \ALT_INV_message_addr[12]~input_o\,
	combout => \Add6~45_combout\);

-- Location: MLABCELL_X52_Y27_N20
\Add1~41\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( wr_amt(12) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( wr_amt(12) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(12),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: FF_X52_Y27_N21
\wr_amt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~41_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(12));

-- Location: MLABCELL_X49_Y26_N0
\Add6~47\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~47_sumout\ = SUM(( \Add6~45_combout\ ) + ( (!\state.010~q\ & (rd_amt(12))) # (\state.010~q\ & ((wr_amt(12)))) ) + ( \Add6~43\ ))
-- \Add6~48\ = CARRY(( \Add6~45_combout\ ) + ( (!\state.010~q\ & (rd_amt(12))) # (\state.010~q\ & ((wr_amt(12)))) ) + ( \Add6~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(12),
	datad => \ALT_INV_Add6~45_combout\,
	dataf => ALT_INV_wr_amt(12),
	cin => \Add6~43\,
	sumout => \Add6~47_sumout\,
	cout => \Add6~48\);

-- Location: IOIBUF_X59_Y12_N32
\rle_addr[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(13),
	o => \rle_addr[13]~input_o\);

-- Location: IOIBUF_X45_Y0_N32
\message_addr[13]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(13),
	o => \message_addr[13]~input_o\);

-- Location: MLABCELL_X52_Y27_N22
\Add1~45\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( wr_amt(13) ) + ( GND ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( wr_amt(13) ) + ( GND ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(13),
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: FF_X52_Y27_N23
\wr_amt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~45_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(13));

-- Location: MLABCELL_X49_Y26_N2
\Add6~51\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~51_sumout\ = SUM(( (!\state.010~q\ & ((\message_addr[13]~input_o\))) # (\state.010~q\ & (\rle_addr[13]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(13))) # (\state.010~q\ & ((wr_amt(13)))) ) + ( \Add6~48\ ))
-- \Add6~52\ = CARRY(( (!\state.010~q\ & ((\message_addr[13]~input_o\))) # (\state.010~q\ & (\rle_addr[13]~input_o\)) ) + ( (!\state.010~q\ & (rd_amt(13))) # (\state.010~q\ & ((wr_amt(13)))) ) + ( \Add6~48\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111100000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_rle_addr[13]~input_o\,
	datab => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(13),
	datad => \ALT_INV_message_addr[13]~input_o\,
	dataf => ALT_INV_wr_amt(13),
	cin => \Add6~48\,
	sumout => \Add6~51_sumout\,
	cout => \Add6~52\);

-- Location: MLABCELL_X52_Y27_N24
\Add1~49\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( wr_amt(14) ) + ( GND ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( wr_amt(14) ) + ( GND ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(14),
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: FF_X52_Y27_N25
\wr_amt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~49_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(14));

-- Location: IOIBUF_X41_Y0_N32
\rle_addr[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(14),
	o => \rle_addr[14]~input_o\);

-- Location: IOIBUF_X59_Y48_N94
\message_addr[14]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(14),
	o => \message_addr[14]~input_o\);

-- Location: MLABCELL_X49_Y26_N28
\Add6~54\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~54_combout\ = ( \message_addr[14]~input_o\ & ( (!\state.010~q\) # (\rle_addr[14]~input_o\) ) ) # ( !\message_addr[14]~input_o\ & ( (\state.010~q\ & \rle_addr[14]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.010~q\,
	datad => \ALT_INV_rle_addr[14]~input_o\,
	dataf => \ALT_INV_message_addr[14]~input_o\,
	combout => \Add6~54_combout\);

-- Location: MLABCELL_X49_Y26_N4
\Add6~56\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~56_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(14))) # (\state.010~q\ & ((wr_amt(14)))) ) + ( \Add6~54_combout\ ) + ( \Add6~52\ ))
-- \Add6~57\ = CARRY(( (!\state.010~q\ & (rd_amt(14))) # (\state.010~q\ & ((wr_amt(14)))) ) + ( \Add6~54_combout\ ) + ( \Add6~52\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_state.010~q\,
	datac => ALT_INV_rd_amt(14),
	datad => ALT_INV_wr_amt(14),
	dataf => \ALT_INV_Add6~54_combout\,
	cin => \Add6~52\,
	sumout => \Add6~56_sumout\,
	cout => \Add6~57\);

-- Location: IOIBUF_X50_Y0_N63
\rle_addr[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(15),
	o => \rle_addr[15]~input_o\);

-- Location: MLABCELL_X52_Y27_N26
\Add1~53\ : arriaii_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( wr_amt(15) ) + ( GND ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_wr_amt(15),
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\);

-- Location: FF_X52_Y27_N27
\wr_amt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add1~53_sumout\,
	sclr => \wr_amt[9]~1_combout\,
	ena => \wr_amt[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => wr_amt(15));

-- Location: IOIBUF_X59_Y33_N32
\message_addr[15]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(15),
	o => \message_addr[15]~input_o\);

-- Location: MLABCELL_X49_Y26_N6
\Add6~60\ : arriaii_lcell_comb
-- Equation(s):
-- \Add6~60_sumout\ = SUM(( (!\state.010~q\ & (rd_amt(15))) # (\state.010~q\ & ((wr_amt(15)))) ) + ( (!\state.010~q\ & ((\message_addr[15]~input_o\))) # (\state.010~q\ & (\rle_addr[15]~input_o\)) ) + ( \Add6~57\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_rd_amt(15),
	datab => \ALT_INV_state.010~q\,
	datac => \ALT_INV_rle_addr[15]~input_o\,
	datad => ALT_INV_wr_amt(15),
	dataf => \ALT_INV_message_addr[15]~input_o\,
	cin => \Add6~57\,
	sumout => \Add6~60_sumout\);

-- Location: IOIBUF_X30_Y0_N32
\message_addr[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(16),
	o => \message_addr[16]~input_o\);

-- Location: IOIBUF_X15_Y56_N1
\message_addr[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(17),
	o => \message_addr[17]~input_o\);

-- Location: IOIBUF_X38_Y56_N1
\message_addr[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(18),
	o => \message_addr[18]~input_o\);

-- Location: IOIBUF_X41_Y0_N63
\message_addr[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(19),
	o => \message_addr[19]~input_o\);

-- Location: IOIBUF_X43_Y0_N63
\message_addr[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(20),
	o => \message_addr[20]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\message_addr[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(21),
	o => \message_addr[21]~input_o\);

-- Location: IOIBUF_X17_Y56_N32
\message_addr[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(22),
	o => \message_addr[22]~input_o\);

-- Location: IOIBUF_X35_Y0_N94
\message_addr[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(23),
	o => \message_addr[23]~input_o\);

-- Location: IOIBUF_X15_Y0_N63
\message_addr[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(24),
	o => \message_addr[24]~input_o\);

-- Location: IOIBUF_X9_Y0_N94
\message_addr[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(25),
	o => \message_addr[25]~input_o\);

-- Location: IOIBUF_X30_Y56_N63
\message_addr[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(26),
	o => \message_addr[26]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\message_addr[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(27),
	o => \message_addr[27]~input_o\);

-- Location: IOIBUF_X53_Y56_N63
\message_addr[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(28),
	o => \message_addr[28]~input_o\);

-- Location: IOIBUF_X40_Y56_N32
\message_addr[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(29),
	o => \message_addr[29]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\message_addr[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(30),
	o => \message_addr[30]~input_o\);

-- Location: IOIBUF_X16_Y0_N32
\message_addr[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_message_addr(31),
	o => \message_addr[31]~input_o\);

-- Location: IOIBUF_X5_Y0_N32
\rle_addr[16]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(16),
	o => \rle_addr[16]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\rle_addr[17]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(17),
	o => \rle_addr[17]~input_o\);

-- Location: IOIBUF_X56_Y56_N94
\rle_addr[18]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(18),
	o => \rle_addr[18]~input_o\);

-- Location: IOIBUF_X8_Y56_N63
\rle_addr[19]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(19),
	o => \rle_addr[19]~input_o\);

-- Location: IOIBUF_X41_Y0_N94
\rle_addr[20]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(20),
	o => \rle_addr[20]~input_o\);

-- Location: IOIBUF_X56_Y0_N94
\rle_addr[21]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(21),
	o => \rle_addr[21]~input_o\);

-- Location: IOIBUF_X25_Y56_N94
\rle_addr[22]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(22),
	o => \rle_addr[22]~input_o\);

-- Location: IOIBUF_X32_Y0_N63
\rle_addr[23]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(23),
	o => \rle_addr[23]~input_o\);

-- Location: IOIBUF_X19_Y56_N63
\rle_addr[24]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(24),
	o => \rle_addr[24]~input_o\);

-- Location: IOIBUF_X33_Y0_N1
\rle_addr[25]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(25),
	o => \rle_addr[25]~input_o\);

-- Location: IOIBUF_X24_Y0_N63
\rle_addr[26]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(26),
	o => \rle_addr[26]~input_o\);

-- Location: IOIBUF_X40_Y56_N94
\rle_addr[27]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(27),
	o => \rle_addr[27]~input_o\);

-- Location: IOIBUF_X19_Y0_N32
\rle_addr[28]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(28),
	o => \rle_addr[28]~input_o\);

-- Location: IOIBUF_X17_Y56_N63
\rle_addr[29]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(29),
	o => \rle_addr[29]~input_o\);

-- Location: IOIBUF_X35_Y56_N94
\rle_addr[30]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(30),
	o => \rle_addr[30]~input_o\);

-- Location: IOIBUF_X44_Y56_N63
\rle_addr[31]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rle_addr(31),
	o => \rle_addr[31]~input_o\);

ww_rle_size(0) <= \rle_size[0]~output_o\;

ww_rle_size(1) <= \rle_size[1]~output_o\;

ww_rle_size(2) <= \rle_size[2]~output_o\;

ww_rle_size(3) <= \rle_size[3]~output_o\;

ww_rle_size(4) <= \rle_size[4]~output_o\;

ww_rle_size(5) <= \rle_size[5]~output_o\;

ww_rle_size(6) <= \rle_size[6]~output_o\;

ww_rle_size(7) <= \rle_size[7]~output_o\;

ww_rle_size(8) <= \rle_size[8]~output_o\;

ww_rle_size(9) <= \rle_size[9]~output_o\;

ww_rle_size(10) <= \rle_size[10]~output_o\;

ww_rle_size(11) <= \rle_size[11]~output_o\;

ww_rle_size(12) <= \rle_size[12]~output_o\;

ww_rle_size(13) <= \rle_size[13]~output_o\;

ww_rle_size(14) <= \rle_size[14]~output_o\;

ww_rle_size(15) <= \rle_size[15]~output_o\;

ww_rle_size(16) <= \rle_size[16]~output_o\;

ww_rle_size(17) <= \rle_size[17]~output_o\;

ww_rle_size(18) <= \rle_size[18]~output_o\;

ww_rle_size(19) <= \rle_size[19]~output_o\;

ww_rle_size(20) <= \rle_size[20]~output_o\;

ww_rle_size(21) <= \rle_size[21]~output_o\;

ww_rle_size(22) <= \rle_size[22]~output_o\;

ww_rle_size(23) <= \rle_size[23]~output_o\;

ww_rle_size(24) <= \rle_size[24]~output_o\;

ww_rle_size(25) <= \rle_size[25]~output_o\;

ww_rle_size(26) <= \rle_size[26]~output_o\;

ww_rle_size(27) <= \rle_size[27]~output_o\;

ww_rle_size(28) <= \rle_size[28]~output_o\;

ww_rle_size(29) <= \rle_size[29]~output_o\;

ww_rle_size(30) <= \rle_size[30]~output_o\;

ww_rle_size(31) <= \rle_size[31]~output_o\;

ww_done <= \done~output_o\;

ww_port_A_clk <= \port_A_clk~output_o\;

ww_port_A_data_in(0) <= \port_A_data_in[0]~output_o\;

ww_port_A_data_in(1) <= \port_A_data_in[1]~output_o\;

ww_port_A_data_in(2) <= \port_A_data_in[2]~output_o\;

ww_port_A_data_in(3) <= \port_A_data_in[3]~output_o\;

ww_port_A_data_in(4) <= \port_A_data_in[4]~output_o\;

ww_port_A_data_in(5) <= \port_A_data_in[5]~output_o\;

ww_port_A_data_in(6) <= \port_A_data_in[6]~output_o\;

ww_port_A_data_in(7) <= \port_A_data_in[7]~output_o\;

ww_port_A_data_in(8) <= \port_A_data_in[8]~output_o\;

ww_port_A_data_in(9) <= \port_A_data_in[9]~output_o\;

ww_port_A_data_in(10) <= \port_A_data_in[10]~output_o\;

ww_port_A_data_in(11) <= \port_A_data_in[11]~output_o\;

ww_port_A_data_in(12) <= \port_A_data_in[12]~output_o\;

ww_port_A_data_in(13) <= \port_A_data_in[13]~output_o\;

ww_port_A_data_in(14) <= \port_A_data_in[14]~output_o\;

ww_port_A_data_in(15) <= \port_A_data_in[15]~output_o\;

ww_port_A_data_in(16) <= \port_A_data_in[16]~output_o\;

ww_port_A_data_in(17) <= \port_A_data_in[17]~output_o\;

ww_port_A_data_in(18) <= \port_A_data_in[18]~output_o\;

ww_port_A_data_in(19) <= \port_A_data_in[19]~output_o\;

ww_port_A_data_in(20) <= \port_A_data_in[20]~output_o\;

ww_port_A_data_in(21) <= \port_A_data_in[21]~output_o\;

ww_port_A_data_in(22) <= \port_A_data_in[22]~output_o\;

ww_port_A_data_in(23) <= \port_A_data_in[23]~output_o\;

ww_port_A_data_in(24) <= \port_A_data_in[24]~output_o\;

ww_port_A_data_in(25) <= \port_A_data_in[25]~output_o\;

ww_port_A_data_in(26) <= \port_A_data_in[26]~output_o\;

ww_port_A_data_in(27) <= \port_A_data_in[27]~output_o\;

ww_port_A_data_in(28) <= \port_A_data_in[28]~output_o\;

ww_port_A_data_in(29) <= \port_A_data_in[29]~output_o\;

ww_port_A_data_in(30) <= \port_A_data_in[30]~output_o\;

ww_port_A_data_in(31) <= \port_A_data_in[31]~output_o\;

ww_port_A_addr(0) <= \port_A_addr[0]~output_o\;

ww_port_A_addr(1) <= \port_A_addr[1]~output_o\;

ww_port_A_addr(2) <= \port_A_addr[2]~output_o\;

ww_port_A_addr(3) <= \port_A_addr[3]~output_o\;

ww_port_A_addr(4) <= \port_A_addr[4]~output_o\;

ww_port_A_addr(5) <= \port_A_addr[5]~output_o\;

ww_port_A_addr(6) <= \port_A_addr[6]~output_o\;

ww_port_A_addr(7) <= \port_A_addr[7]~output_o\;

ww_port_A_addr(8) <= \port_A_addr[8]~output_o\;

ww_port_A_addr(9) <= \port_A_addr[9]~output_o\;

ww_port_A_addr(10) <= \port_A_addr[10]~output_o\;

ww_port_A_addr(11) <= \port_A_addr[11]~output_o\;

ww_port_A_addr(12) <= \port_A_addr[12]~output_o\;

ww_port_A_addr(13) <= \port_A_addr[13]~output_o\;

ww_port_A_addr(14) <= \port_A_addr[14]~output_o\;

ww_port_A_addr(15) <= \port_A_addr[15]~output_o\;

ww_port_A_we <= \port_A_we~output_o\;
END structure;


