--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: topModule_synthesis.vhd
-- /___/   /\     Timestamp: Tue Oct 13 09:11:46 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm topModule -w -dir netgen/synthesis -ofmt vhdl -sim topModule.ngc topModule_synthesis.vhd 
-- Device	: xc3s100e-5-cp132
-- Input file	: topModule.ngc
-- Output file	: C:\Users\ass\Downloads\EEE 495\EEE 495\lab4\netgen\synthesis\topModule_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: topModule
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
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity topModule is
  port (
    cs : out STD_LOGIC; 
    test_mode : in STD_LOGIC := 'X'; 
    tx_start : in STD_LOGIC := 'X'; 
    txd : out STD_LOGIC; 
    clock : in STD_LOGIC := 'X'; 
    sdata : in STD_LOGIC := 'X'; 
    sclk200Khz : out STD_LOGIC; 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    selecto : in STD_LOGIC_VECTOR ( 1 downto 0 ) 
  );
end topModule;

architecture Structure of topModule is
  signal Mcount_sampleCount_cy_1_Q : STD_LOGIC; 
  signal Mcount_sampleCount_cy_4_Q : STD_LOGIC; 
  signal Mmux_varindex0000_10_3 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f5_4 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f51 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f52 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f53 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f6_8 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f61 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f62 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f63 : STD_LOGIC; 
  signal Mmux_varindex0000_10_f7_12 : STD_LOGIC; 
  signal Mmux_varindex0000_11_13 : STD_LOGIC; 
  signal Mmux_varindex0000_111_14 : STD_LOGIC; 
  signal Mmux_varindex0000_112_15 : STD_LOGIC; 
  signal Mmux_varindex0000_113_16 : STD_LOGIC; 
  signal Mmux_varindex0000_114_17 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f5_18 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f51 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f52 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f53 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f54 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f55 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f56 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f6_25 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f61 : STD_LOGIC; 
  signal Mmux_varindex0000_11_f62 : STD_LOGIC; 
  signal Mmux_varindex0000_12_28 : STD_LOGIC; 
  signal Mmux_varindex0000_121_29 : STD_LOGIC; 
  signal Mmux_varindex0000_1210_30 : STD_LOGIC; 
  signal Mmux_varindex0000_122_31 : STD_LOGIC; 
  signal Mmux_varindex0000_123_32 : STD_LOGIC; 
  signal Mmux_varindex0000_124_33 : STD_LOGIC; 
  signal Mmux_varindex0000_125_34 : STD_LOGIC; 
  signal Mmux_varindex0000_126_35 : STD_LOGIC; 
  signal Mmux_varindex0000_127_36 : STD_LOGIC; 
  signal Mmux_varindex0000_128_37 : STD_LOGIC; 
  signal Mmux_varindex0000_129_38 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f5_39 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f51 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f52 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f53 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f54 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f55 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f56 : STD_LOGIC; 
  signal Mmux_varindex0000_12_f6_46 : STD_LOGIC; 
  signal Mmux_varindex0000_13_47 : STD_LOGIC; 
  signal Mmux_varindex0000_131_48 : STD_LOGIC; 
  signal Mmux_varindex0000_1310_49 : STD_LOGIC; 
  signal Mmux_varindex0000_1311_50 : STD_LOGIC; 
  signal Mmux_varindex0000_1312_51 : STD_LOGIC; 
  signal Mmux_varindex0000_1313_52 : STD_LOGIC; 
  signal Mmux_varindex0000_132_53 : STD_LOGIC; 
  signal Mmux_varindex0000_133_54 : STD_LOGIC; 
  signal Mmux_varindex0000_134_55 : STD_LOGIC; 
  signal Mmux_varindex0000_135_56 : STD_LOGIC; 
  signal Mmux_varindex0000_136_57 : STD_LOGIC; 
  signal Mmux_varindex0000_137_58 : STD_LOGIC; 
  signal Mmux_varindex0000_138_59 : STD_LOGIC; 
  signal Mmux_varindex0000_139_60 : STD_LOGIC; 
  signal Mmux_varindex0000_13_f5_61 : STD_LOGIC; 
  signal Mmux_varindex0000_13_f51 : STD_LOGIC; 
  signal Mmux_varindex0000_13_f52 : STD_LOGIC; 
  signal Mmux_varindex0000_13_f53 : STD_LOGIC; 
  signal Mmux_varindex0000_14_65 : STD_LOGIC; 
  signal Mmux_varindex0000_141_66 : STD_LOGIC; 
  signal Mmux_varindex0000_1410_67 : STD_LOGIC; 
  signal Mmux_varindex0000_142_68 : STD_LOGIC; 
  signal Mmux_varindex0000_143_69 : STD_LOGIC; 
  signal Mmux_varindex0000_144_70 : STD_LOGIC; 
  signal Mmux_varindex0000_145_71 : STD_LOGIC; 
  signal Mmux_varindex0000_146_72 : STD_LOGIC; 
  signal Mmux_varindex0000_147_73 : STD_LOGIC; 
  signal Mmux_varindex0000_148_74 : STD_LOGIC; 
  signal Mmux_varindex0000_149_75 : STD_LOGIC; 
  signal Mmux_varindex0000_14_f5_76 : STD_LOGIC; 
  signal Mmux_varindex0000_15_77 : STD_LOGIC; 
  signal Mmux_varindex0000_151_78 : STD_LOGIC; 
  signal Mmux_varindex0000_152_79 : STD_LOGIC; 
  signal Mmux_varindex0000_153_80 : STD_LOGIC; 
  signal Mmux_varindex0000_154_81 : STD_LOGIC; 
  signal Mmux_varindex0000_16_82 : STD_LOGIC; 
  signal Mmux_varindex0000_6_f8_83 : STD_LOGIC; 
  signal Mmux_varindex0000_7_f5_84 : STD_LOGIC; 
  signal Mmux_varindex0000_7_f7_85 : STD_LOGIC; 
  signal Mmux_varindex0000_7_f8_86 : STD_LOGIC; 
  signal Mmux_varindex0000_8_87 : STD_LOGIC; 
  signal Mmux_varindex0000_8_f6_88 : STD_LOGIC; 
  signal Mmux_varindex0000_8_f7_89 : STD_LOGIC; 
  signal Mmux_varindex0000_8_f71 : STD_LOGIC; 
  signal Mmux_varindex0000_8_f8_91 : STD_LOGIC; 
  signal Mmux_varindex0000_9_92 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f5_93 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f6_94 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f61 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f62 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f7_97 : STD_LOGIC; 
  signal Mmux_varindex0000_9_f71 : STD_LOGIC; 
  signal Mshreg_state_FSM_FFd4_99 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N10 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N16 : STD_LOGIC; 
  signal N161 : STD_LOGIC; 
  signal N17 : STD_LOGIC; 
  signal N18 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N19 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N20 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N21 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N241 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N261 : STD_LOGIC; 
  signal N27 : STD_LOGIC; 
  signal N28 : STD_LOGIC; 
  signal N29 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N31 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N331 : STD_LOGIC; 
  signal N34 : STD_LOGIC; 
  signal N35 : STD_LOGIC; 
  signal N351 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N37 : STD_LOGIC; 
  signal N371 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N391 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N411 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N431 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N451 : STD_LOGIC; 
  signal N46 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N48 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N511 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N521 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N541 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N571 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N581 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N60 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N62 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N77 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_0_2 : STD_LOGIC; 
  signal Result_0_3 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_1_2 : STD_LOGIC; 
  signal Result_1_3 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_2_2 : STD_LOGIC; 
  signal Result_2_3 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_3_2 : STD_LOGIC; 
  signal Result_3_3 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_4_1_bdd0 : STD_LOGIC; 
  signal Result_4_2 : STD_LOGIC; 
  signal Result_4_3 : STD_LOGIC; 
  signal Result_4_3_bdd0 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_5_2 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_6_2 : STD_LOGIC; 
  signal Q_varindex0000 : STD_LOGIC; 
  signal aaddcc_clkdiv_count_cmp_eq0000 : STD_LOGIC; 
  signal aaddcc_clkdiv_ct_228 : STD_LOGIC; 
  signal aaddcc_clkdiv_ct_not0001 : STD_LOGIC; 
  signal aaddcc_copysamp_11_and0000 : STD_LOGIC; 
  signal aaddcc_copysamp_11_and00001_232 : STD_LOGIC; 
  signal aaddcc_copysamp_4_and0000_bdd2 : STD_LOGIC; 
  signal aaddcc_copysamp_5_and0000_bdd2 : STD_LOGIC; 
  signal aaddcc_countstate_mux0000_1_1_243 : STD_LOGIC; 
  signal aaddcc_countstate_mux0000_1_2_244 : STD_LOGIC; 
  signal aaddcc_countstate_not0002_inv : STD_LOGIC; 
  signal aaddcc_countstate_not0003 : STD_LOGIC; 
  signal aaddcc_cs_250 : STD_LOGIC; 
  signal aaddcc_cs_not0001 : STD_LOGIC; 
  signal clkk_265 : STD_LOGIC; 
  signal clkk1 : STD_LOGIC; 
  signal clock_BUFGP_268 : STD_LOGIC; 
  signal count_and0000 : STD_LOGIC; 
  signal count_not0001 : STD_LOGIC; 
  signal data_mux0003_24_12 : STD_LOGIC; 
  signal data_mux0003_24_22_289 : STD_LOGIC; 
  signal data_mux0003_24_4_290 : STD_LOGIC; 
  signal data_mux0003_25_22_292 : STD_LOGIC; 
  signal data_mux0003_25_4_293 : STD_LOGIC; 
  signal data_mux0003_26_12 : STD_LOGIC; 
  signal data_mux0003_26_22_296 : STD_LOGIC; 
  signal data_mux0003_26_4_297 : STD_LOGIC; 
  signal data_mux0003_27_22_299 : STD_LOGIC; 
  signal data_mux0003_27_4_300 : STD_LOGIC; 
  signal data_mux0003_28_22_302 : STD_LOGIC; 
  signal data_mux0003_28_4_303 : STD_LOGIC; 
  signal data_mux0003_29_22_305 : STD_LOGIC; 
  signal data_mux0003_29_4_306 : STD_LOGIC; 
  signal data_mux0003_30_22_308 : STD_LOGIC; 
  signal data_mux0003_30_4_309 : STD_LOGIC; 
  signal data_mux0003_31_22_311 : STD_LOGIC; 
  signal data_mux0003_31_4_312 : STD_LOGIC; 
  signal dclk_313 : STD_LOGIC; 
  signal dclk1 : STD_LOGIC; 
  signal dclk_cmp_eq0000_315 : STD_LOGIC; 
  signal dclk_not0001 : STD_LOGIC; 
  signal firstSample_0_not0001 : STD_LOGIC; 
  signal leds_0_327 : STD_LOGIC; 
  signal leds_1_328 : STD_LOGIC; 
  signal leds_2_329 : STD_LOGIC; 
  signal leds_3_330 : STD_LOGIC; 
  signal leds_4_331 : STD_LOGIC; 
  signal leds_5_332 : STD_LOGIC; 
  signal leds_6_333 : STD_LOGIC; 
  signal leds_7_334 : STD_LOGIC; 
  signal mux1_3_343 : STD_LOGIC; 
  signal mux1_4_344 : STD_LOGIC; 
  signal mux2_3_345 : STD_LOGIC; 
  signal mux2_4_346 : STD_LOGIC; 
  signal mux3_3_347 : STD_LOGIC; 
  signal mux3_4_348 : STD_LOGIC; 
  signal mux4_3_349 : STD_LOGIC; 
  signal mux4_4_350 : STD_LOGIC; 
  signal mux5_3_351 : STD_LOGIC; 
  signal mux5_4_352 : STD_LOGIC; 
  signal mux6_3_353 : STD_LOGIC; 
  signal mux6_4_354 : STD_LOGIC; 
  signal mux7_3_355 : STD_LOGIC; 
  signal mux7_4_356 : STD_LOGIC; 
  signal mux_3_357 : STD_LOGIC; 
  signal mux_4_358 : STD_LOGIC; 
  signal outputData_0_and0000 : STD_LOGIC; 
  signal outputData_10_and0000 : STD_LOGIC; 
  signal outputData_11_and0000 : STD_LOGIC; 
  signal outputData_12_and0000 : STD_LOGIC; 
  signal outputData_13_and0000 : STD_LOGIC; 
  signal outputData_14_and0000 : STD_LOGIC; 
  signal outputData_15_and0000 : STD_LOGIC; 
  signal outputData_16_and0000 : STD_LOGIC; 
  signal outputData_17_and0000 : STD_LOGIC; 
  signal outputData_18_and0000 : STD_LOGIC; 
  signal outputData_19_and0000 : STD_LOGIC; 
  signal outputData_1_and0000 : STD_LOGIC; 
  signal outputData_20_and0000 : STD_LOGIC; 
  signal outputData_21_and0000 : STD_LOGIC; 
  signal outputData_22_and0000 : STD_LOGIC; 
  signal outputData_23_and0000 : STD_LOGIC; 
  signal outputData_24_and0000 : STD_LOGIC; 
  signal outputData_25_and0000 : STD_LOGIC; 
  signal outputData_26_and0000 : STD_LOGIC; 
  signal outputData_27_and0000 : STD_LOGIC; 
  signal outputData_28_and0000 : STD_LOGIC; 
  signal outputData_29_and0000 : STD_LOGIC; 
  signal outputData_2_and0000 : STD_LOGIC; 
  signal outputData_30_and0000 : STD_LOGIC; 
  signal outputData_31_and0000 : STD_LOGIC; 
  signal outputData_31_mux0000_410 : STD_LOGIC; 
  signal outputData_3_and0000 : STD_LOGIC; 
  signal outputData_4_and0000 : STD_LOGIC; 
  signal outputData_5_and0000 : STD_LOGIC; 
  signal outputData_6_and0000 : STD_LOGIC; 
  signal outputData_7_and0000 : STD_LOGIC; 
  signal outputData_8_and0000 : STD_LOGIC; 
  signal outputData_9_and0000 : STD_LOGIC; 
  signal receptionComplete_inv : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_10_rt_428 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_11_rt_430 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_12_rt_432 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_13_rt_434 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_14_rt_436 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_15_rt_438 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_3_rt_442 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_5_rt_445 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_6_rt_447 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_8_rt_450 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_cy_9_rt_452 : STD_LOGIC; 
  signal rss_Madd_acc_add0000_lut_0_Q : STD_LOGIC; 
  signal rss_Madd_acc_add0000_lut_1_Q : STD_LOGIC; 
  signal rss_Madd_acc_add0000_lut_2_Q : STD_LOGIC; 
  signal rss_Madd_acc_add0000_lut_4_Q : STD_LOGIC; 
  signal rss_Madd_acc_add0000_lut_7_Q : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_10_rt_460 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_11_rt_462 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_1_rt_464 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_2_rt_466 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_3_rt_468 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_4_rt_470 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_5_rt_472 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_6_rt_474 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_7_rt_476 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_8_rt_478 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_cy_9_rt_480 : STD_LOGIC; 
  signal rss_Madd_indData_add0000_xor_12_rt_482 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_10_rt_485 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_11_rt_487 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_1_rt_489 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_2_rt_491 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_3_rt_493 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_4_rt_495 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_5_rt_497 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_6_rt_499 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_7_rt_501 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_8_rt_503 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_cy_9_rt_505 : STD_LOGIC; 
  signal rss_Madd_indTest_add0000_xor_12_rt_507 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_10_rt_510 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_11_rt_512 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_1_rt_514 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_2_rt_516 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_3_rt_518 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_4_rt_520 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_5_rt_522 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_6_rt_524 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_7_rt_526 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_8_rt_528 : STD_LOGIC; 
  signal rss_Mcount_cntData_cy_9_rt_530 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_0 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_1 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_10 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_11 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_12 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_2 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_3 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_4 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_5 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_6 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_7 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_8 : STD_LOGIC; 
  signal rss_Mcount_cntData_eqn_9 : STD_LOGIC; 
  signal rss_Mcount_cntData_xor_12_rt_545 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_10_rt_548 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_11_rt_550 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_1_rt_552 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_2_rt_554 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_3_rt_556 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_4_rt_558 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_5_rt_560 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_6_rt_562 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_7_rt_564 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_8_rt_566 : STD_LOGIC; 
  signal rss_Mcount_cntTest_cy_9_rt_568 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_0 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_1 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_10 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_11 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_12 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_2 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_3 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_4 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_5 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_6 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_7 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_8 : STD_LOGIC; 
  signal rss_Mcount_cntTest_eqn_9 : STD_LOGIC; 
  signal rss_Mcount_cntTest_xor_12_rt_583 : STD_LOGIC; 
  signal rss_Mcount_count_cy_10_rt_586 : STD_LOGIC; 
  signal rss_Mcount_count_cy_1_rt_588 : STD_LOGIC; 
  signal rss_Mcount_count_cy_2_rt_590 : STD_LOGIC; 
  signal rss_Mcount_count_cy_3_rt_592 : STD_LOGIC; 
  signal rss_Mcount_count_cy_4_rt_594 : STD_LOGIC; 
  signal rss_Mcount_count_cy_5_rt_596 : STD_LOGIC; 
  signal rss_Mcount_count_cy_6_rt_598 : STD_LOGIC; 
  signal rss_Mcount_count_cy_7_rt_600 : STD_LOGIC; 
  signal rss_Mcount_count_cy_8_rt_602 : STD_LOGIC; 
  signal rss_Mcount_count_cy_9_rt_604 : STD_LOGIC; 
  signal rss_Mcount_count_xor_11_rt_606 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_1_rt_609 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_2_rt_611 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_3_rt_613 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_4_rt_615 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_5_rt_617 : STD_LOGIC; 
  signal rss_Mcount_indData_cy_6_rt_619 : STD_LOGIC; 
  signal rss_Mcount_indData_xor_7_rt_621 : STD_LOGIC; 
  signal rss_Result_0_1 : STD_LOGIC; 
  signal rss_Result_0_2 : STD_LOGIC; 
  signal rss_Result_0_3 : STD_LOGIC; 
  signal rss_Result_0_4 : STD_LOGIC; 
  signal rss_Result_0_5 : STD_LOGIC; 
  signal rss_Result_10_1 : STD_LOGIC; 
  signal rss_Result_10_2 : STD_LOGIC; 
  signal rss_Result_11_1 : STD_LOGIC; 
  signal rss_Result_11_2 : STD_LOGIC; 
  signal rss_Result_12_1 : STD_LOGIC; 
  signal rss_Result_1_1 : STD_LOGIC; 
  signal rss_Result_1_2 : STD_LOGIC; 
  signal rss_Result_1_3 : STD_LOGIC; 
  signal rss_Result_1_4 : STD_LOGIC; 
  signal rss_Result_1_5 : STD_LOGIC; 
  signal rss_Result_2_1 : STD_LOGIC; 
  signal rss_Result_2_2 : STD_LOGIC; 
  signal rss_Result_2_3 : STD_LOGIC; 
  signal rss_Result_2_4 : STD_LOGIC; 
  signal rss_Result_2_5 : STD_LOGIC; 
  signal rss_Result_3_1 : STD_LOGIC; 
  signal rss_Result_3_2 : STD_LOGIC; 
  signal rss_Result_3_3 : STD_LOGIC; 
  signal rss_Result_3_4 : STD_LOGIC; 
  signal rss_Result_4_1 : STD_LOGIC; 
  signal rss_Result_4_2 : STD_LOGIC; 
  signal rss_Result_4_21_656 : STD_LOGIC; 
  signal rss_Result_4_22_657 : STD_LOGIC; 
  signal rss_Result_4_3 : STD_LOGIC; 
  signal rss_Result_4_4 : STD_LOGIC; 
  signal rss_Result_5_1 : STD_LOGIC; 
  signal rss_Result_5_2 : STD_LOGIC; 
  signal rss_Result_5_3 : STD_LOGIC; 
  signal rss_Result_6_1 : STD_LOGIC; 
  signal rss_Result_6_2 : STD_LOGIC; 
  signal rss_Result_6_3 : STD_LOGIC; 
  signal rss_Result_7_1 : STD_LOGIC; 
  signal rss_Result_7_2 : STD_LOGIC; 
  signal rss_Result_7_3 : STD_LOGIC; 
  signal rss_Result_8_1 : STD_LOGIC; 
  signal rss_Result_8_2 : STD_LOGIC; 
  signal rss_Result_9_1 : STD_LOGIC; 
  signal rss_Result_9_2 : STD_LOGIC; 
  signal rss_buff_in_mux0000_1_1_721 : STD_LOGIC; 
  signal rss_buff_in_mux0000_3_471 : STD_LOGIC; 
  signal rss_buff_in_mux0000_4_69_726 : STD_LOGIC; 
  signal rss_buff_in_mux0000_5_90_728 : STD_LOGIC; 
  signal rss_buff_in_mux0000_6_59_730 : STD_LOGIC; 
  signal rss_buff_in_mux0000_7_1_732 : STD_LOGIC; 
  signal rss_buff_in_not0001_733 : STD_LOGIC; 
  signal rss_cntData_not0002_inv : STD_LOGIC; 
  signal rss_cntData_not0003 : STD_LOGIC; 
  signal rss_cntData_or0000 : STD_LOGIC; 
  signal rss_cntData_or0000117_750 : STD_LOGIC; 
  signal rss_cntData_or0000132_751 : STD_LOGIC; 
  signal rss_cntData_or0000148_752 : STD_LOGIC; 
  signal rss_cntData_or000015_753 : STD_LOGIC; 
  signal rss_cntTest_not0002_inv : STD_LOGIC; 
  signal rss_cntTest_not0003_768 : STD_LOGIC; 
  signal rss_cntTest_or0000 : STD_LOGIC; 
  signal rss_cntTest_or0000117_770 : STD_LOGIC; 
  signal rss_cntTest_or0000132_771 : STD_LOGIC; 
  signal rss_cntTest_or0000148_772 : STD_LOGIC; 
  signal rss_cntTest_or000015_773 : STD_LOGIC; 
  signal rss_count_cmp_eq0000 : STD_LOGIC; 
  signal rss_count_cmp_eq000017_787 : STD_LOGIC; 
  signal rss_count_cmp_eq000029_788 : STD_LOGIC; 
  signal rss_count_cmp_eq00008_789 : STD_LOGIC; 
  signal rss_counter_or0000 : STD_LOGIC; 
  signal rss_flag_794 : STD_LOGIC; 
  signal rss_flag_cmp_eq0001 : STD_LOGIC; 
  signal rss_flag_cmp_eq000111_796 : STD_LOGIC; 
  signal rss_flag_cmp_eq000124_797 : STD_LOGIC; 
  signal rss_flag_cmp_eq000212_798 : STD_LOGIC; 
  signal rss_flag_cmp_eq000225_799 : STD_LOGIC; 
  signal rss_flag_cmp_eq000312_800 : STD_LOGIC; 
  signal rss_flag_cmp_eq000325_801 : STD_LOGIC; 
  signal rss_flag_mux0002 : STD_LOGIC; 
  signal rss_flag_not0001 : STD_LOGIC; 
  signal rss_indData_not0001 : STD_LOGIC; 
  signal rss_indData_or0000 : STD_LOGIC; 
  signal rss_indTest_not0001 : STD_LOGIC; 
  signal rss_indTest_or0000_846 : STD_LOGIC; 
  signal rss_mclk_847 : STD_LOGIC; 
  signal rss_mclk1 : STD_LOGIC; 
  signal rss_mclk_not0001 : STD_LOGIC; 
  signal rss_state_FSM_FFd1_850 : STD_LOGIC; 
  signal rss_state_FSM_FFd1_In1_851 : STD_LOGIC; 
  signal rss_state_FSM_FFd10_852 : STD_LOGIC; 
  signal rss_state_FSM_FFd10_In : STD_LOGIC; 
  signal rss_state_FSM_FFd2_854 : STD_LOGIC; 
  signal rss_state_FSM_FFd3_855 : STD_LOGIC; 
  signal rss_state_FSM_FFd4_856 : STD_LOGIC; 
  signal rss_state_FSM_FFd5_857 : STD_LOGIC; 
  signal rss_state_FSM_FFd6_858 : STD_LOGIC; 
  signal rss_state_FSM_FFd7_859 : STD_LOGIC; 
  signal rss_state_FSM_FFd8_860 : STD_LOGIC; 
  signal rss_state_FSM_FFd9_861 : STD_LOGIC; 
  signal rss_state_FSM_Scst_FSM_inv : STD_LOGIC; 
  signal rss_tmp_txd_863 : STD_LOGIC; 
  signal rss_tmp_txd_mux0002 : STD_LOGIC; 
  signal rss_tmp_txd_mux000221_865 : STD_LOGIC; 
  signal rss_tmp_txd_mux000226_866 : STD_LOGIC; 
  signal rss_tmp_txd_mux000236_867 : STD_LOGIC; 
  signal rss_tmp_txd_mux00024_868 : STD_LOGIC; 
  signal rss_tmp_txd_mux000262 : STD_LOGIC; 
  signal rss_tmp_txd_mux0002621_870 : STD_LOGIC; 
  signal rss_tmp_txd_mux000277_871 : STD_LOGIC; 
  signal rss_tmp_txd_mux00029_872 : STD_LOGIC; 
  signal sample1_0_mux0000 : STD_LOGIC; 
  signal sample1_0_not0001 : STD_LOGIC; 
  signal sample1_10_mux0000 : STD_LOGIC; 
  signal sample1_10_not0001 : STD_LOGIC; 
  signal sample1_11_mux0000 : STD_LOGIC; 
  signal sample1_11_not0001 : STD_LOGIC; 
  signal sample1_12_mux0000 : STD_LOGIC; 
  signal sample1_12_not0001 : STD_LOGIC; 
  signal sample1_13_mux0000 : STD_LOGIC; 
  signal sample1_13_not0001 : STD_LOGIC; 
  signal sample1_14_mux0000 : STD_LOGIC; 
  signal sample1_14_not0001 : STD_LOGIC; 
  signal sample1_15_mux0000 : STD_LOGIC; 
  signal sample1_15_not0001 : STD_LOGIC; 
  signal sample1_16_mux0000 : STD_LOGIC; 
  signal sample1_16_not0001 : STD_LOGIC; 
  signal sample1_17_mux0000 : STD_LOGIC; 
  signal sample1_17_not0001 : STD_LOGIC; 
  signal sample1_18_mux0000 : STD_LOGIC; 
  signal sample1_18_not0001 : STD_LOGIC; 
  signal sample1_19_mux0000 : STD_LOGIC; 
  signal sample1_19_not0001 : STD_LOGIC; 
  signal sample1_1_mux0000 : STD_LOGIC; 
  signal sample1_1_not0001 : STD_LOGIC; 
  signal sample1_20_mux0000 : STD_LOGIC; 
  signal sample1_20_not0001 : STD_LOGIC; 
  signal sample1_21_mux0000 : STD_LOGIC; 
  signal sample1_21_not0001 : STD_LOGIC; 
  signal sample1_22_mux0000 : STD_LOGIC; 
  signal sample1_22_not0001 : STD_LOGIC; 
  signal sample1_23_mux0000 : STD_LOGIC; 
  signal sample1_23_not0001 : STD_LOGIC; 
  signal sample1_24_mux0000 : STD_LOGIC; 
  signal sample1_24_not0001 : STD_LOGIC; 
  signal sample1_25_mux0000 : STD_LOGIC; 
  signal sample1_25_not0001 : STD_LOGIC; 
  signal sample1_26_mux0000 : STD_LOGIC; 
  signal sample1_26_not0001 : STD_LOGIC; 
  signal sample1_27_mux0000 : STD_LOGIC; 
  signal sample1_27_not0001 : STD_LOGIC; 
  signal sample1_28_mux0000 : STD_LOGIC; 
  signal sample1_28_not0001 : STD_LOGIC; 
  signal sample1_29_mux0000 : STD_LOGIC; 
  signal sample1_29_not0001 : STD_LOGIC; 
  signal sample1_2_mux0000 : STD_LOGIC; 
  signal sample1_2_not0001 : STD_LOGIC; 
  signal sample1_30_mux0000 : STD_LOGIC; 
  signal sample1_30_not0001 : STD_LOGIC; 
  signal sample1_31_mux0000 : STD_LOGIC; 
  signal sample1_31_not0001 : STD_LOGIC; 
  signal sample1_32_mux0000 : STD_LOGIC; 
  signal sample1_32_not0001 : STD_LOGIC; 
  signal sample1_33_mux0000 : STD_LOGIC; 
  signal sample1_33_not0001 : STD_LOGIC; 
  signal sample1_34_mux0000 : STD_LOGIC; 
  signal sample1_34_not0001 : STD_LOGIC; 
  signal sample1_35_mux0000 : STD_LOGIC; 
  signal sample1_35_not0001 : STD_LOGIC; 
  signal sample1_36_mux0000 : STD_LOGIC; 
  signal sample1_36_not0001 : STD_LOGIC; 
  signal sample1_37_mux0000 : STD_LOGIC; 
  signal sample1_37_not0001 : STD_LOGIC; 
  signal sample1_38_mux0000 : STD_LOGIC; 
  signal sample1_38_not0001_969 : STD_LOGIC; 
  signal sample1_39_mux0000 : STD_LOGIC; 
  signal sample1_39_not0001 : STD_LOGIC; 
  signal sample1_3_mux0000 : STD_LOGIC; 
  signal sample1_3_not0001 : STD_LOGIC; 
  signal sample1_40_mux0000 : STD_LOGIC; 
  signal sample1_40_not0001 : STD_LOGIC; 
  signal sample1_41_mux0000 : STD_LOGIC; 
  signal sample1_41_not0001 : STD_LOGIC; 
  signal sample1_42_mux0000 : STD_LOGIC; 
  signal sample1_42_not0001 : STD_LOGIC; 
  signal sample1_43_mux0000 : STD_LOGIC; 
  signal sample1_43_not0001 : STD_LOGIC; 
  signal sample1_44_mux0000 : STD_LOGIC; 
  signal sample1_44_not0001 : STD_LOGIC; 
  signal sample1_45_mux0000 : STD_LOGIC; 
  signal sample1_45_not0001 : STD_LOGIC; 
  signal sample1_46_mux0000 : STD_LOGIC; 
  signal sample1_46_not0001_996 : STD_LOGIC; 
  signal sample1_47_mux0000 : STD_LOGIC; 
  signal sample1_47_not0001 : STD_LOGIC; 
  signal sample1_48_mux0000 : STD_LOGIC; 
  signal sample1_48_not0001 : STD_LOGIC; 
  signal sample1_49_mux0000 : STD_LOGIC; 
  signal sample1_49_not0001 : STD_LOGIC; 
  signal sample1_4_mux0000 : STD_LOGIC; 
  signal sample1_4_not0001 : STD_LOGIC; 
  signal sample1_50_mux0000 : STD_LOGIC; 
  signal sample1_50_not0001 : STD_LOGIC; 
  signal sample1_51_mux0000 : STD_LOGIC; 
  signal sample1_51_not0001 : STD_LOGIC; 
  signal sample1_52_mux0000 : STD_LOGIC; 
  signal sample1_52_not0001 : STD_LOGIC; 
  signal sample1_53_mux0000 : STD_LOGIC; 
  signal sample1_53_not0001 : STD_LOGIC; 
  signal sample1_54_mux0000 : STD_LOGIC; 
  signal sample1_54_not0001_1023 : STD_LOGIC; 
  signal sample1_55_mux0000 : STD_LOGIC; 
  signal sample1_55_not0001 : STD_LOGIC; 
  signal sample1_56_mux0000 : STD_LOGIC; 
  signal sample1_56_not0001 : STD_LOGIC; 
  signal sample1_57_mux0000 : STD_LOGIC; 
  signal sample1_57_not0001 : STD_LOGIC; 
  signal sample1_58_mux0000 : STD_LOGIC; 
  signal sample1_58_not0001 : STD_LOGIC; 
  signal sample1_59_mux0000 : STD_LOGIC; 
  signal sample1_59_not0001 : STD_LOGIC; 
  signal sample1_5_mux0000 : STD_LOGIC; 
  signal sample1_5_not0001 : STD_LOGIC; 
  signal sample1_60_mux0000 : STD_LOGIC; 
  signal sample1_60_not0001 : STD_LOGIC; 
  signal sample1_61_mux0000 : STD_LOGIC; 
  signal sample1_61_not0001 : STD_LOGIC; 
  signal sample1_62_mux0000 : STD_LOGIC; 
  signal sample1_62_not0001_1050 : STD_LOGIC; 
  signal sample1_63_mux0000 : STD_LOGIC; 
  signal sample1_63_not0001 : STD_LOGIC; 
  signal sample1_64_mux0000 : STD_LOGIC; 
  signal sample1_64_not0001 : STD_LOGIC; 
  signal sample1_65_mux0000 : STD_LOGIC; 
  signal sample1_65_not0001 : STD_LOGIC; 
  signal sample1_66_mux0000 : STD_LOGIC; 
  signal sample1_66_not0001 : STD_LOGIC; 
  signal sample1_67_mux0000 : STD_LOGIC; 
  signal sample1_67_not0001 : STD_LOGIC; 
  signal sample1_68_mux0000 : STD_LOGIC; 
  signal sample1_68_not0001 : STD_LOGIC; 
  signal sample1_69_mux0000 : STD_LOGIC; 
  signal sample1_69_not0001 : STD_LOGIC; 
  signal sample1_6_mux0000 : STD_LOGIC; 
  signal sample1_6_not0001 : STD_LOGIC; 
  signal sample1_70_mux0000 : STD_LOGIC; 
  signal sample1_70_not0001 : STD_LOGIC; 
  signal sample1_71_mux0000 : STD_LOGIC; 
  signal sample1_71_not0001 : STD_LOGIC; 
  signal sample1_72_mux0000 : STD_LOGIC; 
  signal sample1_72_not0001 : STD_LOGIC; 
  signal sample1_73_mux0000 : STD_LOGIC; 
  signal sample1_73_not0001 : STD_LOGIC; 
  signal sample1_74_mux0000 : STD_LOGIC; 
  signal sample1_74_not0001 : STD_LOGIC; 
  signal sample1_75_mux0000 : STD_LOGIC; 
  signal sample1_75_not0001 : STD_LOGIC; 
  signal sample1_76_mux0000 : STD_LOGIC; 
  signal sample1_76_not0001 : STD_LOGIC; 
  signal sample1_77_mux0000 : STD_LOGIC; 
  signal sample1_77_not0001 : STD_LOGIC; 
  signal sample1_78_mux0000 : STD_LOGIC; 
  signal sample1_78_not0001 : STD_LOGIC; 
  signal sample1_79_mux0000 : STD_LOGIC; 
  signal sample1_79_not0001 : STD_LOGIC; 
  signal sample1_7_mux0000 : STD_LOGIC; 
  signal sample1_7_not0001 : STD_LOGIC; 
  signal sample1_80_mux0000 : STD_LOGIC; 
  signal sample1_80_not0001 : STD_LOGIC; 
  signal sample1_81_mux0000 : STD_LOGIC; 
  signal sample1_81_not0001 : STD_LOGIC; 
  signal sample1_82_mux0000 : STD_LOGIC; 
  signal sample1_82_not0001 : STD_LOGIC; 
  signal sample1_83_mux0000 : STD_LOGIC; 
  signal sample1_83_not0001 : STD_LOGIC; 
  signal sample1_84_mux0000 : STD_LOGIC; 
  signal sample1_84_not0001 : STD_LOGIC; 
  signal sample1_85_mux0000 : STD_LOGIC; 
  signal sample1_85_not0001 : STD_LOGIC; 
  signal sample1_86_mux0000 : STD_LOGIC; 
  signal sample1_86_not0001 : STD_LOGIC; 
  signal sample1_87_mux0000 : STD_LOGIC; 
  signal sample1_87_not0001 : STD_LOGIC; 
  signal sample1_88_mux0000 : STD_LOGIC; 
  signal sample1_88_not0001 : STD_LOGIC; 
  signal sample1_89_mux0000 : STD_LOGIC; 
  signal sample1_89_not0001 : STD_LOGIC; 
  signal sample1_8_mux0000 : STD_LOGIC; 
  signal sample1_8_not0001 : STD_LOGIC; 
  signal sample1_90_mux0000 : STD_LOGIC; 
  signal sample1_90_not0001 : STD_LOGIC; 
  signal sample1_91_mux0000 : STD_LOGIC; 
  signal sample1_91_not0001 : STD_LOGIC; 
  signal sample1_92_mux0000 : STD_LOGIC; 
  signal sample1_92_not0001 : STD_LOGIC; 
  signal sample1_93_mux0000 : STD_LOGIC; 
  signal sample1_93_not0001 : STD_LOGIC; 
  signal sample1_94_mux0000 : STD_LOGIC; 
  signal sample1_94_not0001 : STD_LOGIC; 
  signal sample1_95_mux0000 : STD_LOGIC; 
  signal sample1_95_not0001 : STD_LOGIC; 
  signal sample1_96_mux0000 : STD_LOGIC; 
  signal sample1_96_not0001 : STD_LOGIC; 
  signal sample1_97_mux0000 : STD_LOGIC; 
  signal sample1_97_not0001 : STD_LOGIC; 
  signal sample1_98_mux0000 : STD_LOGIC; 
  signal sample1_98_not0001 : STD_LOGIC; 
  signal sample1_99_mux0000 : STD_LOGIC; 
  signal sample1_99_not0001 : STD_LOGIC; 
  signal sample1_9_mux0000 : STD_LOGIC; 
  signal sample1_9_not0001 : STD_LOGIC; 
  signal sample2_0_or0000_inv : STD_LOGIC; 
  signal sample2_10_not0001 : STD_LOGIC; 
  signal sample2_11_not0001 : STD_LOGIC; 
  signal sample2_12_not0001 : STD_LOGIC; 
  signal sample2_13_not0001 : STD_LOGIC; 
  signal sample2_14_not0001 : STD_LOGIC; 
  signal sample2_15_not0001 : STD_LOGIC; 
  signal sample2_16_not0001 : STD_LOGIC; 
  signal sample2_17_not0001 : STD_LOGIC; 
  signal sample2_18_not0001 : STD_LOGIC; 
  signal sample2_19_not0001 : STD_LOGIC; 
  signal sample2_1_not0001 : STD_LOGIC; 
  signal sample2_20_not0001 : STD_LOGIC; 
  signal sample2_21_not0001 : STD_LOGIC; 
  signal sample2_22_not0001 : STD_LOGIC; 
  signal sample2_23_not0001 : STD_LOGIC; 
  signal sample2_24_not0001 : STD_LOGIC; 
  signal sample2_25_not0001 : STD_LOGIC; 
  signal sample2_26_not0001 : STD_LOGIC; 
  signal sample2_27_not0001 : STD_LOGIC; 
  signal sample2_28_not0001 : STD_LOGIC; 
  signal sample2_29_not0001 : STD_LOGIC; 
  signal sample2_2_not0001 : STD_LOGIC; 
  signal sample2_30_not0001 : STD_LOGIC; 
  signal sample2_31_not0001 : STD_LOGIC; 
  signal sample2_32_not0001 : STD_LOGIC; 
  signal sample2_33_not0001 : STD_LOGIC; 
  signal sample2_34_not0001 : STD_LOGIC; 
  signal sample2_35_not0001 : STD_LOGIC; 
  signal sample2_36_not0001 : STD_LOGIC; 
  signal sample2_37_not0001 : STD_LOGIC; 
  signal sample2_38_not0001 : STD_LOGIC; 
  signal sample2_39_not0001 : STD_LOGIC; 
  signal sample2_3_not0001 : STD_LOGIC; 
  signal sample2_40_not0001 : STD_LOGIC; 
  signal sample2_41_not0001 : STD_LOGIC; 
  signal sample2_42_not0001 : STD_LOGIC; 
  signal sample2_43_not0001 : STD_LOGIC; 
  signal sample2_44_not0001 : STD_LOGIC; 
  signal sample2_45_not0001 : STD_LOGIC; 
  signal sample2_46_not0001 : STD_LOGIC; 
  signal sample2_47_not0001 : STD_LOGIC; 
  signal sample2_48_not0001 : STD_LOGIC; 
  signal sample2_49_not0001 : STD_LOGIC; 
  signal sample2_4_not0001 : STD_LOGIC; 
  signal sample2_50_not0001 : STD_LOGIC; 
  signal sample2_51_not0001 : STD_LOGIC; 
  signal sample2_52_not0001 : STD_LOGIC; 
  signal sample2_53_not0001 : STD_LOGIC; 
  signal sample2_54_not0001 : STD_LOGIC; 
  signal sample2_55_not0001 : STD_LOGIC; 
  signal sample2_56_not0001 : STD_LOGIC; 
  signal sample2_57_not0001 : STD_LOGIC; 
  signal sample2_58_not0001 : STD_LOGIC; 
  signal sample2_59_not0001 : STD_LOGIC; 
  signal sample2_5_not0001 : STD_LOGIC; 
  signal sample2_60_not0001 : STD_LOGIC; 
  signal sample2_61_not0001 : STD_LOGIC; 
  signal sample2_62_not0001 : STD_LOGIC; 
  signal sample2_63_not0001 : STD_LOGIC; 
  signal sample2_64_not0001 : STD_LOGIC; 
  signal sample2_65_not0001 : STD_LOGIC; 
  signal sample2_66_not0001 : STD_LOGIC; 
  signal sample2_67_not0001 : STD_LOGIC; 
  signal sample2_68_not0001 : STD_LOGIC; 
  signal sample2_69_not0001 : STD_LOGIC; 
  signal sample2_6_not0001 : STD_LOGIC; 
  signal sample2_70_not0001 : STD_LOGIC; 
  signal sample2_71_not0001 : STD_LOGIC; 
  signal sample2_72_not0001 : STD_LOGIC; 
  signal sample2_73_not0001 : STD_LOGIC; 
  signal sample2_74_not0001 : STD_LOGIC; 
  signal sample2_75_not0001 : STD_LOGIC; 
  signal sample2_76_not0001 : STD_LOGIC; 
  signal sample2_77_not0001 : STD_LOGIC; 
  signal sample2_78_not0001 : STD_LOGIC; 
  signal sample2_79_not0001 : STD_LOGIC; 
  signal sample2_7_not0001 : STD_LOGIC; 
  signal sample2_80_not0001 : STD_LOGIC; 
  signal sample2_81_not0001 : STD_LOGIC; 
  signal sample2_82_not0001 : STD_LOGIC; 
  signal sample2_83_not0001 : STD_LOGIC; 
  signal sample2_84_not0001 : STD_LOGIC; 
  signal sample2_85_not0001 : STD_LOGIC; 
  signal sample2_86_not0001 : STD_LOGIC; 
  signal sample2_87_not0001 : STD_LOGIC; 
  signal sample2_88_not0001 : STD_LOGIC; 
  signal sample2_89_not0001 : STD_LOGIC; 
  signal sample2_8_not0001 : STD_LOGIC; 
  signal sample2_90_not0001 : STD_LOGIC; 
  signal sample2_91_not0001 : STD_LOGIC; 
  signal sample2_92_not0001 : STD_LOGIC; 
  signal sample2_93_not0001 : STD_LOGIC; 
  signal sample2_94_not0001 : STD_LOGIC; 
  signal sample2_95_not0001 : STD_LOGIC; 
  signal sample2_96_not0001 : STD_LOGIC; 
  signal sample2_97_not0001 : STD_LOGIC; 
  signal sample2_98_not0001 : STD_LOGIC; 
  signal sample2_99_or0000 : STD_LOGIC; 
  signal sample2_9_not0001 : STD_LOGIC; 
  signal sdata_IBUF_1382 : STD_LOGIC; 
  signal selecto_0_IBUF_1385 : STD_LOGIC; 
  signal selecto_1_IBUF_1386 : STD_LOGIC; 
  signal state_FSM_FFd2_1387 : STD_LOGIC; 
  signal state_FSM_FFd3_1388 : STD_LOGIC; 
  signal state_FSM_FFd4_1389 : STD_LOGIC; 
  signal state_not0001 : STD_LOGIC; 
  signal test_mode_IBUF_1392 : STD_LOGIC; 
  signal tx_start_IBUF_1394 : STD_LOGIC; 
  signal Mcount_bit_number_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal Result : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal aaddcc_Result : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal aaddcc_clkdiv_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal aaddcc_copysamp : STD_LOGIC_VECTOR ( 11 downto 11 ); 
  signal aaddcc_cosample : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal aaddcc_countstate : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal aaddcc_countstate_mux0000 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal aaddcc_sample : STD_LOGIC_VECTOR ( 7 downto 7 ); 
  signal bit_number : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal clkCount : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal count : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal data_mux0003 : STD_LOGIC_VECTOR ( 31 downto 24 ); 
  signal firstSample : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal leds_mux0003 : STD_LOGIC_VECTOR ( 31 downto 24 ); 
  signal outputData : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal receptionComplete : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Madd_acc_add0000_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rss_Madd_indData_add0000_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rss_Madd_indData_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Madd_indTest_add0000_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rss_Madd_indTest_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Mcount_cntData_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rss_Mcount_cntData_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Mcount_cntTest_cy : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rss_Mcount_cntTest_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Mcount_count_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal rss_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Mcount_indData_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal rss_Mcount_indData_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal rss_Result : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal rss_acc : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal rss_acc_add0000 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal rss_buff_in : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal rss_buff_in_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal rss_cntData : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal rss_cntTest : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal rss_count : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal rss_counter : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal rss_indData : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal rss_indData_add0000 : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal rss_indTest : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal rss_indTest_add0000 : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal sample1 : STD_LOGIC_VECTOR ( 99 downto 0 ); 
  signal sample2 : STD_LOGIC_VECTOR ( 99 downto 0 ); 
  signal sampleCount : STD_LOGIC_VECTOR ( 6 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  data_0 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(24),
      Q => data(0)
    );
  data_1 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(25),
      Q => data(1)
    );
  data_2 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(26),
      Q => data(2)
    );
  data_3 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(27),
      Q => data(3)
    );
  data_4 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(28),
      Q => data(4)
    );
  data_5 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(29),
      Q => data(5)
    );
  data_6 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(30),
      Q => data(6)
    );
  data_7 : FDE
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => data_mux0003(31),
      Q => data(7)
    );
  dclk : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      CE => dclk_cmp_eq0000_315,
      D => dclk_not0001,
      Q => dclk1
    );
  sample1_0 : FDE
    port map (
      C => dclk_313,
      CE => sample1_0_not0001,
      D => sample1_0_mux0000,
      Q => sample1(0)
    );
  sample1_10 : FDE
    port map (
      C => dclk_313,
      CE => sample1_10_not0001,
      D => sample1_10_mux0000,
      Q => sample1(10)
    );
  sample1_1 : FDE
    port map (
      C => dclk_313,
      CE => sample1_1_not0001,
      D => sample1_1_mux0000,
      Q => sample1(1)
    );
  sample1_11 : FDE
    port map (
      C => dclk_313,
      CE => sample1_11_not0001,
      D => sample1_11_mux0000,
      Q => sample1(11)
    );
  sample1_2 : FDE
    port map (
      C => dclk_313,
      CE => sample1_2_not0001,
      D => sample1_2_mux0000,
      Q => sample1(2)
    );
  sample1_12 : FDE
    port map (
      C => dclk_313,
      CE => sample1_12_not0001,
      D => sample1_12_mux0000,
      Q => sample1(12)
    );
  sample1_3 : FDE
    port map (
      C => dclk_313,
      CE => sample1_3_not0001,
      D => sample1_3_mux0000,
      Q => sample1(3)
    );
  sample1_13 : FDE
    port map (
      C => dclk_313,
      CE => sample1_13_not0001,
      D => sample1_13_mux0000,
      Q => sample1(13)
    );
  sample1_4 : FDE
    port map (
      C => dclk_313,
      CE => sample1_4_not0001,
      D => sample1_4_mux0000,
      Q => sample1(4)
    );
  sample1_14 : FDE
    port map (
      C => dclk_313,
      CE => sample1_14_not0001,
      D => sample1_14_mux0000,
      Q => sample1(14)
    );
  sample1_5 : FDE
    port map (
      C => dclk_313,
      CE => sample1_5_not0001,
      D => sample1_5_mux0000,
      Q => sample1(5)
    );
  sample1_20 : FDE
    port map (
      C => dclk_313,
      CE => sample1_20_not0001,
      D => sample1_20_mux0000,
      Q => sample1(20)
    );
  sample1_15 : FDE
    port map (
      C => dclk_313,
      CE => sample1_15_not0001,
      D => sample1_15_mux0000,
      Q => sample1(15)
    );
  sample1_6 : FDE
    port map (
      C => dclk_313,
      CE => sample1_6_not0001,
      D => sample1_6_mux0000,
      Q => sample1(6)
    );
  sample1_16 : FDE
    port map (
      C => dclk_313,
      CE => sample1_16_not0001,
      D => sample1_16_mux0000,
      Q => sample1(16)
    );
  sample1_21 : FDE
    port map (
      C => dclk_313,
      CE => sample1_21_not0001,
      D => sample1_21_mux0000,
      Q => sample1(21)
    );
  sample1_7 : FDE
    port map (
      C => dclk_313,
      CE => sample1_7_not0001,
      D => sample1_7_mux0000,
      Q => sample1(7)
    );
  sample1_17 : FDE
    port map (
      C => dclk_313,
      CE => sample1_17_not0001,
      D => sample1_17_mux0000,
      Q => sample1(17)
    );
  sample1_22 : FDE
    port map (
      C => dclk_313,
      CE => sample1_22_not0001,
      D => sample1_22_mux0000,
      Q => sample1(22)
    );
  sample1_8 : FDE
    port map (
      C => dclk_313,
      CE => sample1_8_not0001,
      D => sample1_8_mux0000,
      Q => sample1(8)
    );
  sample1_18 : FDE
    port map (
      C => dclk_313,
      CE => sample1_18_not0001,
      D => sample1_18_mux0000,
      Q => sample1(18)
    );
  sample1_23 : FDE
    port map (
      C => dclk_313,
      CE => sample1_23_not0001,
      D => sample1_23_mux0000,
      Q => sample1(23)
    );
  sample1_9 : FDE
    port map (
      C => dclk_313,
      CE => sample1_9_not0001,
      D => sample1_9_mux0000,
      Q => sample1(9)
    );
  sample1_19 : FDE
    port map (
      C => dclk_313,
      CE => sample1_19_not0001,
      D => sample1_19_mux0000,
      Q => sample1(19)
    );
  sample1_24 : FDE
    port map (
      C => dclk_313,
      CE => sample1_24_not0001,
      D => sample1_24_mux0000,
      Q => sample1(24)
    );
  sample1_25 : FDE
    port map (
      C => dclk_313,
      CE => sample1_25_not0001,
      D => sample1_25_mux0000,
      Q => sample1(25)
    );
  sample1_30 : FDE
    port map (
      C => dclk_313,
      CE => sample1_30_not0001,
      D => sample1_30_mux0000,
      Q => sample1(30)
    );
  sample1_26 : FDE
    port map (
      C => dclk_313,
      CE => sample1_26_not0001,
      D => sample1_26_mux0000,
      Q => sample1(26)
    );
  sample1_31 : FDE
    port map (
      C => dclk_313,
      CE => sample1_31_not0001,
      D => sample1_31_mux0000,
      Q => sample1(31)
    );
  sample1_27 : FDE
    port map (
      C => dclk_313,
      CE => sample1_27_not0001,
      D => sample1_27_mux0000,
      Q => sample1(27)
    );
  sample1_32 : FDE
    port map (
      C => dclk_313,
      CE => sample1_32_not0001,
      D => sample1_32_mux0000,
      Q => sample1(32)
    );
  sample1_28 : FDE
    port map (
      C => dclk_313,
      CE => sample1_28_not0001,
      D => sample1_28_mux0000,
      Q => sample1(28)
    );
  sample1_33 : FDE
    port map (
      C => dclk_313,
      CE => sample1_33_not0001,
      D => sample1_33_mux0000,
      Q => sample1(33)
    );
  sample1_29 : FDE
    port map (
      C => dclk_313,
      CE => sample1_29_not0001,
      D => sample1_29_mux0000,
      Q => sample1(29)
    );
  sample1_34 : FDE
    port map (
      C => dclk_313,
      CE => sample1_34_not0001,
      D => sample1_34_mux0000,
      Q => sample1(34)
    );
  sample1_35 : FDE
    port map (
      C => dclk_313,
      CE => sample1_35_not0001,
      D => sample1_35_mux0000,
      Q => sample1(35)
    );
  sample1_40 : FDE
    port map (
      C => dclk_313,
      CE => sample1_40_not0001,
      D => sample1_40_mux0000,
      Q => sample1(40)
    );
  sample1_36 : FDE
    port map (
      C => dclk_313,
      CE => sample1_36_not0001,
      D => sample1_36_mux0000,
      Q => sample1(36)
    );
  sample1_41 : FDE
    port map (
      C => dclk_313,
      CE => sample1_41_not0001,
      D => sample1_41_mux0000,
      Q => sample1(41)
    );
  sample1_42 : FDE
    port map (
      C => dclk_313,
      CE => sample1_42_not0001,
      D => sample1_42_mux0000,
      Q => sample1(42)
    );
  sample1_37 : FDE
    port map (
      C => dclk_313,
      CE => sample1_37_not0001,
      D => sample1_37_mux0000,
      Q => sample1(37)
    );
  sample1_38 : FDE
    port map (
      C => dclk_313,
      CE => sample1_38_not0001_969,
      D => sample1_38_mux0000,
      Q => sample1(38)
    );
  sample1_43 : FDE
    port map (
      C => dclk_313,
      CE => sample1_43_not0001,
      D => sample1_43_mux0000,
      Q => sample1(43)
    );
  sample1_45 : FDE
    port map (
      C => dclk_313,
      CE => sample1_45_not0001,
      D => sample1_45_mux0000,
      Q => sample1(45)
    );
  sample1_39 : FDE
    port map (
      C => dclk_313,
      CE => sample1_39_not0001,
      D => sample1_39_mux0000,
      Q => sample1(39)
    );
  sample1_44 : FDE
    port map (
      C => dclk_313,
      CE => sample1_44_not0001,
      D => sample1_44_mux0000,
      Q => sample1(44)
    );
  sample1_50 : FDE
    port map (
      C => dclk_313,
      CE => sample1_50_not0001,
      D => sample1_50_mux0000,
      Q => sample1(50)
    );
  sample1_46 : FDE
    port map (
      C => dclk_313,
      CE => sample1_46_not0001_996,
      D => sample1_46_mux0000,
      Q => sample1(46)
    );
  sample1_51 : FDE
    port map (
      C => dclk_313,
      CE => sample1_51_not0001,
      D => sample1_51_mux0000,
      Q => sample1(51)
    );
  sample1_47 : FDE
    port map (
      C => dclk_313,
      CE => sample1_47_not0001,
      D => sample1_47_mux0000,
      Q => sample1(47)
    );
  sample1_52 : FDE
    port map (
      C => dclk_313,
      CE => sample1_52_not0001,
      D => sample1_52_mux0000,
      Q => sample1(52)
    );
  sample1_48 : FDE
    port map (
      C => dclk_313,
      CE => sample1_48_not0001,
      D => sample1_48_mux0000,
      Q => sample1(48)
    );
  sample1_53 : FDE
    port map (
      C => dclk_313,
      CE => sample1_53_not0001,
      D => sample1_53_mux0000,
      Q => sample1(53)
    );
  sample1_49 : FDE
    port map (
      C => dclk_313,
      CE => sample1_49_not0001,
      D => sample1_49_mux0000,
      Q => sample1(49)
    );
  sample1_54 : FDE
    port map (
      C => dclk_313,
      CE => sample1_54_not0001_1023,
      D => sample1_54_mux0000,
      Q => sample1(54)
    );
  sample1_55 : FDE
    port map (
      C => dclk_313,
      CE => sample1_55_not0001,
      D => sample1_55_mux0000,
      Q => sample1(55)
    );
  sample1_60 : FDE
    port map (
      C => dclk_313,
      CE => sample1_60_not0001,
      D => sample1_60_mux0000,
      Q => sample1(60)
    );
  sample1_56 : FDE
    port map (
      C => dclk_313,
      CE => sample1_56_not0001,
      D => sample1_56_mux0000,
      Q => sample1(56)
    );
  sample1_61 : FDE
    port map (
      C => dclk_313,
      CE => sample1_61_not0001,
      D => sample1_61_mux0000,
      Q => sample1(61)
    );
  sample1_57 : FDE
    port map (
      C => dclk_313,
      CE => sample1_57_not0001,
      D => sample1_57_mux0000,
      Q => sample1(57)
    );
  sample1_62 : FDE
    port map (
      C => dclk_313,
      CE => sample1_62_not0001_1050,
      D => sample1_62_mux0000,
      Q => sample1(62)
    );
  sample1_58 : FDE
    port map (
      C => dclk_313,
      CE => sample1_58_not0001,
      D => sample1_58_mux0000,
      Q => sample1(58)
    );
  sample1_63 : FDE
    port map (
      C => dclk_313,
      CE => sample1_63_not0001,
      D => sample1_63_mux0000,
      Q => sample1(63)
    );
  firstSample_0 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => dclk_313,
      CE => firstSample_0_not0001,
      D => N0,
      Q => firstSample(0)
    );
  sample1_59 : FDE
    port map (
      C => dclk_313,
      CE => sample1_59_not0001,
      D => sample1_59_mux0000,
      Q => sample1(59)
    );
  sample1_64 : FDE
    port map (
      C => dclk_313,
      CE => sample1_64_not0001,
      D => sample1_64_mux0000,
      Q => sample1(64)
    );
  sample1_65 : FDE
    port map (
      C => dclk_313,
      CE => sample1_65_not0001,
      D => sample1_65_mux0000,
      Q => sample1(65)
    );
  sample1_70 : FDE
    port map (
      C => dclk_313,
      CE => sample1_70_not0001,
      D => sample1_70_mux0000,
      Q => sample1(70)
    );
  sample1_71 : FDE
    port map (
      C => dclk_313,
      CE => sample1_71_not0001,
      D => sample1_71_mux0000,
      Q => sample1(71)
    );
  sample1_66 : FDE
    port map (
      C => dclk_313,
      CE => sample1_66_not0001,
      D => sample1_66_mux0000,
      Q => sample1(66)
    );
  sample1_67 : FDE
    port map (
      C => dclk_313,
      CE => sample1_67_not0001,
      D => sample1_67_mux0000,
      Q => sample1(67)
    );
  sample1_72 : FDE
    port map (
      C => dclk_313,
      CE => sample1_72_not0001,
      D => sample1_72_mux0000,
      Q => sample1(72)
    );
  sample1_68 : FDE
    port map (
      C => dclk_313,
      CE => sample1_68_not0001,
      D => sample1_68_mux0000,
      Q => sample1(68)
    );
  sample1_73 : FDE
    port map (
      C => dclk_313,
      CE => sample1_73_not0001,
      D => sample1_73_mux0000,
      Q => sample1(73)
    );
  sample1_69 : FDE
    port map (
      C => dclk_313,
      CE => sample1_69_not0001,
      D => sample1_69_mux0000,
      Q => sample1(69)
    );
  sample1_74 : FDE
    port map (
      C => dclk_313,
      CE => sample1_74_not0001,
      D => sample1_74_mux0000,
      Q => sample1(74)
    );
  sample1_75 : FDE
    port map (
      C => dclk_313,
      CE => sample1_75_not0001,
      D => sample1_75_mux0000,
      Q => sample1(75)
    );
  sample1_80 : FDE
    port map (
      C => dclk_313,
      CE => sample1_80_not0001,
      D => sample1_80_mux0000,
      Q => sample1(80)
    );
  sample1_76 : FDE
    port map (
      C => dclk_313,
      CE => sample1_76_not0001,
      D => sample1_76_mux0000,
      Q => sample1(76)
    );
  sample1_81 : FDE
    port map (
      C => dclk_313,
      CE => sample1_81_not0001,
      D => sample1_81_mux0000,
      Q => sample1(81)
    );
  sample1_77 : FDE
    port map (
      C => dclk_313,
      CE => sample1_77_not0001,
      D => sample1_77_mux0000,
      Q => sample1(77)
    );
  sample1_82 : FDE
    port map (
      C => dclk_313,
      CE => sample1_82_not0001,
      D => sample1_82_mux0000,
      Q => sample1(82)
    );
  sample1_78 : FDE
    port map (
      C => dclk_313,
      CE => sample1_78_not0001,
      D => sample1_78_mux0000,
      Q => sample1(78)
    );
  sample1_83 : FDE
    port map (
      C => dclk_313,
      CE => sample1_83_not0001,
      D => sample1_83_mux0000,
      Q => sample1(83)
    );
  sample1_79 : FDE
    port map (
      C => dclk_313,
      CE => sample1_79_not0001,
      D => sample1_79_mux0000,
      Q => sample1(79)
    );
  sample1_84 : FDE
    port map (
      C => dclk_313,
      CE => sample1_84_not0001,
      D => sample1_84_mux0000,
      Q => sample1(84)
    );
  sample1_85 : FDE
    port map (
      C => dclk_313,
      CE => sample1_85_not0001,
      D => sample1_85_mux0000,
      Q => sample1(85)
    );
  sample1_90 : FDE
    port map (
      C => dclk_313,
      CE => sample1_90_not0001,
      D => sample1_90_mux0000,
      Q => sample1(90)
    );
  sample1_86 : FDE
    port map (
      C => dclk_313,
      CE => sample1_86_not0001,
      D => sample1_86_mux0000,
      Q => sample1(86)
    );
  sample1_91 : FDE
    port map (
      C => dclk_313,
      CE => sample1_91_not0001,
      D => sample1_91_mux0000,
      Q => sample1(91)
    );
  sample1_87 : FDE
    port map (
      C => dclk_313,
      CE => sample1_87_not0001,
      D => sample1_87_mux0000,
      Q => sample1(87)
    );
  sample1_92 : FDE
    port map (
      C => dclk_313,
      CE => sample1_92_not0001,
      D => sample1_92_mux0000,
      Q => sample1(92)
    );
  sample1_88 : FDE
    port map (
      C => dclk_313,
      CE => sample1_88_not0001,
      D => sample1_88_mux0000,
      Q => sample1(88)
    );
  sample1_93 : FDE
    port map (
      C => dclk_313,
      CE => sample1_93_not0001,
      D => sample1_93_mux0000,
      Q => sample1(93)
    );
  receptionComplete_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => outputData_31_and0000,
      D => N1,
      Q => receptionComplete(0)
    );
  sample1_89 : FDE
    port map (
      C => dclk_313,
      CE => sample1_89_not0001,
      D => sample1_89_mux0000,
      Q => sample1(89)
    );
  sample1_94 : FDE
    port map (
      C => dclk_313,
      CE => sample1_94_not0001,
      D => sample1_94_mux0000,
      Q => sample1(94)
    );
  sample1_95 : FDE
    port map (
      C => dclk_313,
      CE => sample1_95_not0001,
      D => sample1_95_mux0000,
      Q => sample1(95)
    );
  sample1_96 : FDE
    port map (
      C => dclk_313,
      CE => sample1_96_not0001,
      D => sample1_96_mux0000,
      Q => sample1(96)
    );
  sample1_97 : FDE
    port map (
      C => dclk_313,
      CE => sample1_97_not0001,
      D => sample1_97_mux0000,
      Q => sample1(97)
    );
  sample1_98 : FDE
    port map (
      C => dclk_313,
      CE => sample1_98_not0001,
      D => sample1_98_mux0000,
      Q => sample1(98)
    );
  sample1_99 : FDE
    port map (
      C => dclk_313,
      CE => sample1_99_not0001,
      D => sample1_99_mux0000,
      Q => sample1(99)
    );
  outputData_31 : FDE
    port map (
      C => dclk_313,
      CE => outputData_31_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(31)
    );
  outputData_30 : FDE
    port map (
      C => dclk_313,
      CE => outputData_30_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(30)
    );
  outputData_27 : FDE
    port map (
      C => dclk_313,
      CE => outputData_27_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(27)
    );
  outputData_29 : FDE
    port map (
      C => dclk_313,
      CE => outputData_29_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(29)
    );
  outputData_28 : FDE
    port map (
      C => dclk_313,
      CE => outputData_28_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(28)
    );
  outputData_26 : FDE
    port map (
      C => dclk_313,
      CE => outputData_26_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(26)
    );
  outputData_25 : FDE
    port map (
      C => dclk_313,
      CE => outputData_25_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(25)
    );
  outputData_24 : FDE
    port map (
      C => dclk_313,
      CE => outputData_24_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(24)
    );
  outputData_23 : FDE
    port map (
      C => dclk_313,
      CE => outputData_23_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(23)
    );
  outputData_22 : FDE
    port map (
      C => dclk_313,
      CE => outputData_22_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(22)
    );
  outputData_21 : FDE
    port map (
      C => dclk_313,
      CE => outputData_21_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(21)
    );
  outputData_20 : FDE
    port map (
      C => dclk_313,
      CE => outputData_20_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(20)
    );
  outputData_19 : FDE
    port map (
      C => dclk_313,
      CE => outputData_19_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(19)
    );
  outputData_18 : FDE
    port map (
      C => dclk_313,
      CE => outputData_18_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(18)
    );
  outputData_17 : FDE
    port map (
      C => dclk_313,
      CE => outputData_17_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(17)
    );
  outputData_16 : FDE
    port map (
      C => dclk_313,
      CE => outputData_16_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(16)
    );
  outputData_15 : FDE
    port map (
      C => dclk_313,
      CE => outputData_15_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(15)
    );
  outputData_14 : FDE
    port map (
      C => dclk_313,
      CE => outputData_14_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(14)
    );
  outputData_13 : FDE
    port map (
      C => dclk_313,
      CE => outputData_13_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(13)
    );
  outputData_12 : FDE
    port map (
      C => dclk_313,
      CE => outputData_12_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(12)
    );
  outputData_11 : FDE
    port map (
      C => dclk_313,
      CE => outputData_11_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(11)
    );
  outputData_10 : FDE
    port map (
      C => dclk_313,
      CE => outputData_10_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(10)
    );
  outputData_9 : FDE
    port map (
      C => dclk_313,
      CE => outputData_9_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(9)
    );
  outputData_8 : FDE
    port map (
      C => dclk_313,
      CE => outputData_8_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(8)
    );
  outputData_7 : FDE
    port map (
      C => dclk_313,
      CE => outputData_7_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(7)
    );
  outputData_6 : FDE
    port map (
      C => dclk_313,
      CE => outputData_6_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(6)
    );
  outputData_5 : FDE
    port map (
      C => dclk_313,
      CE => outputData_5_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(5)
    );
  outputData_4 : FDE
    port map (
      C => dclk_313,
      CE => outputData_4_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(4)
    );
  outputData_3 : FDE
    port map (
      C => dclk_313,
      CE => outputData_3_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(3)
    );
  outputData_2 : FDE
    port map (
      C => dclk_313,
      CE => outputData_2_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(2)
    );
  outputData_1 : FDE
    port map (
      C => dclk_313,
      CE => outputData_1_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(1)
    );
  outputData_0 : FDE
    port map (
      C => dclk_313,
      CE => outputData_0_and0000,
      D => outputData_31_mux0000_410,
      Q => outputData(0)
    );
  sample2_26 : FDE
    port map (
      C => dclk_313,
      CE => sample2_26_not0001,
      D => aaddcc_sample(7),
      Q => sample2(26)
    );
  sample2_31 : FDE
    port map (
      C => dclk_313,
      CE => sample2_31_not0001,
      D => aaddcc_sample(7),
      Q => sample2(31)
    );
  sample2_27 : FDE
    port map (
      C => dclk_313,
      CE => sample2_27_not0001,
      D => aaddcc_sample(7),
      Q => sample2(27)
    );
  sample2_32 : FDE
    port map (
      C => dclk_313,
      CE => sample2_32_not0001,
      D => aaddcc_sample(7),
      Q => sample2(32)
    );
  sample2_28 : FDE
    port map (
      C => dclk_313,
      CE => sample2_28_not0001,
      D => aaddcc_sample(7),
      Q => sample2(28)
    );
  sample2_33 : FDE
    port map (
      C => dclk_313,
      CE => sample2_33_not0001,
      D => aaddcc_sample(7),
      Q => sample2(33)
    );
  sample2_29 : FDE
    port map (
      C => dclk_313,
      CE => sample2_29_not0001,
      D => aaddcc_sample(7),
      Q => sample2(29)
    );
  sample2_34 : FDE
    port map (
      C => dclk_313,
      CE => sample2_34_not0001,
      D => aaddcc_sample(7),
      Q => sample2(34)
    );
  sample2_35 : FDE
    port map (
      C => dclk_313,
      CE => sample2_35_not0001,
      D => aaddcc_sample(7),
      Q => sample2(35)
    );
  sample2_40 : FDE
    port map (
      C => dclk_313,
      CE => sample2_40_not0001,
      D => aaddcc_sample(7),
      Q => sample2(40)
    );
  sample2_36 : FDE
    port map (
      C => dclk_313,
      CE => sample2_36_not0001,
      D => aaddcc_sample(7),
      Q => sample2(36)
    );
  sample2_41 : FDE
    port map (
      C => dclk_313,
      CE => sample2_41_not0001,
      D => aaddcc_sample(7),
      Q => sample2(41)
    );
  sample2_42 : FDE
    port map (
      C => dclk_313,
      CE => sample2_42_not0001,
      D => aaddcc_sample(7),
      Q => sample2(42)
    );
  sample2_37 : FDE
    port map (
      C => dclk_313,
      CE => sample2_37_not0001,
      D => aaddcc_sample(7),
      Q => sample2(37)
    );
  sample2_38 : FDE
    port map (
      C => dclk_313,
      CE => sample2_38_not0001,
      D => aaddcc_sample(7),
      Q => sample2(38)
    );
  sample2_43 : FDE
    port map (
      C => dclk_313,
      CE => sample2_43_not0001,
      D => aaddcc_sample(7),
      Q => sample2(43)
    );
  sample2_39 : FDE
    port map (
      C => dclk_313,
      CE => sample2_39_not0001,
      D => aaddcc_sample(7),
      Q => sample2(39)
    );
  sample2_44 : FDE
    port map (
      C => dclk_313,
      CE => sample2_44_not0001,
      D => aaddcc_sample(7),
      Q => sample2(44)
    );
  sample2_45 : FDE
    port map (
      C => dclk_313,
      CE => sample2_45_not0001,
      D => aaddcc_sample(7),
      Q => sample2(45)
    );
  sample2_50 : FDE
    port map (
      C => dclk_313,
      CE => sample2_50_not0001,
      D => aaddcc_sample(7),
      Q => sample2(50)
    );
  sample2_46 : FDE
    port map (
      C => dclk_313,
      CE => sample2_46_not0001,
      D => aaddcc_sample(7),
      Q => sample2(46)
    );
  sample2_51 : FDE
    port map (
      C => dclk_313,
      CE => sample2_51_not0001,
      D => aaddcc_sample(7),
      Q => sample2(51)
    );
  sample2_47 : FDE
    port map (
      C => dclk_313,
      CE => sample2_47_not0001,
      D => aaddcc_sample(7),
      Q => sample2(47)
    );
  sample2_52 : FDE
    port map (
      C => dclk_313,
      CE => sample2_52_not0001,
      D => aaddcc_sample(7),
      Q => sample2(52)
    );
  sample2_48 : FDE
    port map (
      C => dclk_313,
      CE => sample2_48_not0001,
      D => aaddcc_sample(7),
      Q => sample2(48)
    );
  sample2_53 : FDE
    port map (
      C => dclk_313,
      CE => sample2_53_not0001,
      D => aaddcc_sample(7),
      Q => sample2(53)
    );
  sample2_49 : FDE
    port map (
      C => dclk_313,
      CE => sample2_49_not0001,
      D => aaddcc_sample(7),
      Q => sample2(49)
    );
  sample2_54 : FDE
    port map (
      C => dclk_313,
      CE => sample2_54_not0001,
      D => aaddcc_sample(7),
      Q => sample2(54)
    );
  sample2_55 : FDE
    port map (
      C => dclk_313,
      CE => sample2_55_not0001,
      D => aaddcc_sample(7),
      Q => sample2(55)
    );
  sample2_60 : FDE
    port map (
      C => dclk_313,
      CE => sample2_60_not0001,
      D => aaddcc_sample(7),
      Q => sample2(60)
    );
  sample2_56 : FDE
    port map (
      C => dclk_313,
      CE => sample2_56_not0001,
      D => aaddcc_sample(7),
      Q => sample2(56)
    );
  sample2_61 : FDE
    port map (
      C => dclk_313,
      CE => sample2_61_not0001,
      D => aaddcc_sample(7),
      Q => sample2(61)
    );
  sample2_62 : FDE
    port map (
      C => dclk_313,
      CE => sample2_62_not0001,
      D => aaddcc_sample(7),
      Q => sample2(62)
    );
  sample2_57 : FDE
    port map (
      C => dclk_313,
      CE => sample2_57_not0001,
      D => aaddcc_sample(7),
      Q => sample2(57)
    );
  sample2_63 : FDE
    port map (
      C => dclk_313,
      CE => sample2_63_not0001,
      D => aaddcc_sample(7),
      Q => sample2(63)
    );
  sample2_58 : FDE
    port map (
      C => dclk_313,
      CE => sample2_58_not0001,
      D => aaddcc_sample(7),
      Q => sample2(58)
    );
  sample2_64 : FDE
    port map (
      C => dclk_313,
      CE => sample2_64_not0001,
      D => aaddcc_sample(7),
      Q => sample2(64)
    );
  sample2_59 : FDE
    port map (
      C => dclk_313,
      CE => sample2_59_not0001,
      D => aaddcc_sample(7),
      Q => sample2(59)
    );
  sample2_70 : FDE
    port map (
      C => dclk_313,
      CE => sample2_70_not0001,
      D => aaddcc_sample(7),
      Q => sample2(70)
    );
  sample2_65 : FDE
    port map (
      C => dclk_313,
      CE => sample2_65_not0001,
      D => aaddcc_sample(7),
      Q => sample2(65)
    );
  sample2_71 : FDE
    port map (
      C => dclk_313,
      CE => sample2_71_not0001,
      D => aaddcc_sample(7),
      Q => sample2(71)
    );
  sample2_66 : FDE
    port map (
      C => dclk_313,
      CE => sample2_66_not0001,
      D => aaddcc_sample(7),
      Q => sample2(66)
    );
  sample2_72 : FDE
    port map (
      C => dclk_313,
      CE => sample2_72_not0001,
      D => aaddcc_sample(7),
      Q => sample2(72)
    );
  sample2_67 : FDE
    port map (
      C => dclk_313,
      CE => sample2_67_not0001,
      D => aaddcc_sample(7),
      Q => sample2(67)
    );
  sample2_73 : FDE
    port map (
      C => dclk_313,
      CE => sample2_73_not0001,
      D => aaddcc_sample(7),
      Q => sample2(73)
    );
  sample2_68 : FDE
    port map (
      C => dclk_313,
      CE => sample2_68_not0001,
      D => aaddcc_sample(7),
      Q => sample2(68)
    );
  sample2_74 : FDE
    port map (
      C => dclk_313,
      CE => sample2_74_not0001,
      D => aaddcc_sample(7),
      Q => sample2(74)
    );
  sample2_69 : FDE
    port map (
      C => dclk_313,
      CE => sample2_69_not0001,
      D => aaddcc_sample(7),
      Q => sample2(69)
    );
  sample2_80 : FDE
    port map (
      C => dclk_313,
      CE => sample2_80_not0001,
      D => aaddcc_sample(7),
      Q => sample2(80)
    );
  sample2_75 : FDE
    port map (
      C => dclk_313,
      CE => sample2_75_not0001,
      D => aaddcc_sample(7),
      Q => sample2(75)
    );
  sample2_81 : FDE
    port map (
      C => dclk_313,
      CE => sample2_81_not0001,
      D => aaddcc_sample(7),
      Q => sample2(81)
    );
  sample2_76 : FDE
    port map (
      C => dclk_313,
      CE => sample2_76_not0001,
      D => aaddcc_sample(7),
      Q => sample2(76)
    );
  sample2_77 : FDE
    port map (
      C => dclk_313,
      CE => sample2_77_not0001,
      D => aaddcc_sample(7),
      Q => sample2(77)
    );
  sample2_82 : FDE
    port map (
      C => dclk_313,
      CE => sample2_82_not0001,
      D => aaddcc_sample(7),
      Q => sample2(82)
    );
  sample2_78 : FDE
    port map (
      C => dclk_313,
      CE => sample2_78_not0001,
      D => aaddcc_sample(7),
      Q => sample2(78)
    );
  sample2_83 : FDE
    port map (
      C => dclk_313,
      CE => sample2_83_not0001,
      D => aaddcc_sample(7),
      Q => sample2(83)
    );
  sample2_79 : FDE
    port map (
      C => dclk_313,
      CE => sample2_79_not0001,
      D => aaddcc_sample(7),
      Q => sample2(79)
    );
  sample2_84 : FDE
    port map (
      C => dclk_313,
      CE => sample2_84_not0001,
      D => aaddcc_sample(7),
      Q => sample2(84)
    );
  sample2_85 : FDE
    port map (
      C => dclk_313,
      CE => sample2_85_not0001,
      D => aaddcc_sample(7),
      Q => sample2(85)
    );
  sample2_90 : FDE
    port map (
      C => dclk_313,
      CE => sample2_90_not0001,
      D => aaddcc_sample(7),
      Q => sample2(90)
    );
  sample2_91 : FDE
    port map (
      C => dclk_313,
      CE => sample2_91_not0001,
      D => aaddcc_sample(7),
      Q => sample2(91)
    );
  sample2_86 : FDE
    port map (
      C => dclk_313,
      CE => sample2_86_not0001,
      D => aaddcc_sample(7),
      Q => sample2(86)
    );
  sample2_87 : FDE
    port map (
      C => dclk_313,
      CE => sample2_87_not0001,
      D => aaddcc_sample(7),
      Q => sample2(87)
    );
  sample2_92 : FDE
    port map (
      C => dclk_313,
      CE => sample2_92_not0001,
      D => aaddcc_sample(7),
      Q => sample2(92)
    );
  sample2_88 : FDE
    port map (
      C => dclk_313,
      CE => sample2_88_not0001,
      D => aaddcc_sample(7),
      Q => sample2(88)
    );
  sample2_93 : FDE
    port map (
      C => dclk_313,
      CE => sample2_93_not0001,
      D => aaddcc_sample(7),
      Q => sample2(93)
    );
  sample2_89 : FDE
    port map (
      C => dclk_313,
      CE => sample2_89_not0001,
      D => aaddcc_sample(7),
      Q => sample2(89)
    );
  sample2_94 : FDE
    port map (
      C => dclk_313,
      CE => sample2_94_not0001,
      D => aaddcc_sample(7),
      Q => sample2(94)
    );
  sample2_95 : FDE
    port map (
      C => dclk_313,
      CE => sample2_95_not0001,
      D => aaddcc_sample(7),
      Q => sample2(95)
    );
  sample2_96 : FDE
    port map (
      C => dclk_313,
      CE => sample2_96_not0001,
      D => aaddcc_sample(7),
      Q => sample2(96)
    );
  sample2_97 : FDE
    port map (
      C => dclk_313,
      CE => sample2_97_not0001,
      D => aaddcc_sample(7),
      Q => sample2(97)
    );
  sample2_98 : FDE
    port map (
      C => dclk_313,
      CE => sample2_98_not0001,
      D => aaddcc_sample(7),
      Q => sample2(98)
    );
  sample2_99 : FDE
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => aaddcc_sample(7),
      Q => sample2(99)
    );
  sample2_0 : FDE
    port map (
      C => dclk_313,
      CE => sample2_0_or0000_inv,
      D => aaddcc_sample(7),
      Q => sample2(0)
    );
  sample2_1 : FDE
    port map (
      C => dclk_313,
      CE => sample2_1_not0001,
      D => aaddcc_sample(7),
      Q => sample2(1)
    );
  sample2_2 : FDE
    port map (
      C => dclk_313,
      CE => sample2_2_not0001,
      D => aaddcc_sample(7),
      Q => sample2(2)
    );
  sample2_3 : FDE
    port map (
      C => dclk_313,
      CE => sample2_3_not0001,
      D => aaddcc_sample(7),
      Q => sample2(3)
    );
  sample2_4 : FDE
    port map (
      C => dclk_313,
      CE => sample2_4_not0001,
      D => aaddcc_sample(7),
      Q => sample2(4)
    );
  sample2_5 : FDE
    port map (
      C => dclk_313,
      CE => sample2_5_not0001,
      D => aaddcc_sample(7),
      Q => sample2(5)
    );
  sample2_6 : FDE
    port map (
      C => dclk_313,
      CE => sample2_6_not0001,
      D => aaddcc_sample(7),
      Q => sample2(6)
    );
  sample2_7 : FDE
    port map (
      C => dclk_313,
      CE => sample2_7_not0001,
      D => aaddcc_sample(7),
      Q => sample2(7)
    );
  sample2_8 : FDE
    port map (
      C => dclk_313,
      CE => sample2_8_not0001,
      D => aaddcc_sample(7),
      Q => sample2(8)
    );
  sample2_9 : FDE
    port map (
      C => dclk_313,
      CE => sample2_9_not0001,
      D => aaddcc_sample(7),
      Q => sample2(9)
    );
  sample2_10 : FDE
    port map (
      C => dclk_313,
      CE => sample2_10_not0001,
      D => aaddcc_sample(7),
      Q => sample2(10)
    );
  sample2_11 : FDE
    port map (
      C => dclk_313,
      CE => sample2_11_not0001,
      D => aaddcc_sample(7),
      Q => sample2(11)
    );
  sample2_12 : FDE
    port map (
      C => dclk_313,
      CE => sample2_12_not0001,
      D => aaddcc_sample(7),
      Q => sample2(12)
    );
  sample2_13 : FDE
    port map (
      C => dclk_313,
      CE => sample2_13_not0001,
      D => aaddcc_sample(7),
      Q => sample2(13)
    );
  sample2_14 : FDE
    port map (
      C => dclk_313,
      CE => sample2_14_not0001,
      D => aaddcc_sample(7),
      Q => sample2(14)
    );
  sample2_20 : FDE
    port map (
      C => dclk_313,
      CE => sample2_20_not0001,
      D => aaddcc_sample(7),
      Q => sample2(20)
    );
  sample2_15 : FDE
    port map (
      C => dclk_313,
      CE => sample2_15_not0001,
      D => aaddcc_sample(7),
      Q => sample2(15)
    );
  sample2_21 : FDE
    port map (
      C => dclk_313,
      CE => sample2_21_not0001,
      D => aaddcc_sample(7),
      Q => sample2(21)
    );
  sample2_16 : FDE
    port map (
      C => dclk_313,
      CE => sample2_16_not0001,
      D => aaddcc_sample(7),
      Q => sample2(16)
    );
  sample2_17 : FDE
    port map (
      C => dclk_313,
      CE => sample2_17_not0001,
      D => aaddcc_sample(7),
      Q => sample2(17)
    );
  sample2_22 : FDE
    port map (
      C => dclk_313,
      CE => sample2_22_not0001,
      D => aaddcc_sample(7),
      Q => sample2(22)
    );
  sample2_18 : FDE
    port map (
      C => dclk_313,
      CE => sample2_18_not0001,
      D => aaddcc_sample(7),
      Q => sample2(18)
    );
  sample2_23 : FDE
    port map (
      C => dclk_313,
      CE => sample2_23_not0001,
      D => aaddcc_sample(7),
      Q => sample2(23)
    );
  sample2_19 : FDE
    port map (
      C => dclk_313,
      CE => sample2_19_not0001,
      D => aaddcc_sample(7),
      Q => sample2(19)
    );
  sample2_24 : FDE
    port map (
      C => dclk_313,
      CE => sample2_24_not0001,
      D => aaddcc_sample(7),
      Q => sample2(24)
    );
  sample2_25 : FDE
    port map (
      C => dclk_313,
      CE => sample2_25_not0001,
      D => aaddcc_sample(7),
      Q => sample2(25)
    );
  sample2_30 : FDE
    port map (
      C => dclk_313,
      CE => sample2_30_not0001,
      D => aaddcc_sample(7),
      Q => sample2(30)
    );
  leds_0 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(24),
      Q => leds_0_327
    );
  leds_1 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(25),
      Q => leds_1_328
    );
  leds_2 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(26),
      Q => leds_2_329
    );
  leds_3 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(27),
      Q => leds_3_330
    );
  leds_4 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(28),
      Q => leds_4_331
    );
  leds_5 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(29),
      Q => leds_5_332
    );
  leds_6 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(30),
      Q => leds_6_333
    );
  leds_7 : FDE
    port map (
      C => rss_mclk_847,
      CE => receptionComplete(0),
      D => leds_mux0003(31),
      Q => leds_7_334
    );
  state_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => state_FSM_FFd4_1389,
      Q => state_FSM_FFd3_1388
    );
  state_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => state_FSM_FFd3_1388,
      Q => state_FSM_FFd2_1387
    );
  bit_number_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => Result_0_2,
      Q => bit_number(0)
    );
  bit_number_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => Result_1_2,
      Q => bit_number(1)
    );
  bit_number_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => Result_2_2,
      Q => bit_number(2)
    );
  bit_number_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => Result_3_2,
      Q => bit_number(3)
    );
  bit_number_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_and0000,
      D => Result_4_2,
      Q => bit_number(4)
    );
  clkCount_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_0_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(0)
    );
  clkCount_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_1_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(1)
    );
  clkCount_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_2_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(2)
    );
  clkCount_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_3_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(3)
    );
  clkCount_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_4_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(4)
    );
  clkCount_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_5_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(5)
    );
  clkCount_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => Result_6_1,
      R => dclk_cmp_eq0000_315,
      Q => clkCount(6)
    );
  sampleCount_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(0),
      R => sample1_99_not0001,
      Q => sampleCount(0)
    );
  sampleCount_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(1),
      R => sample1_99_not0001,
      Q => sampleCount(1)
    );
  sampleCount_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(2),
      R => sample1_99_not0001,
      Q => sampleCount(2)
    );
  sampleCount_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(3),
      R => sample1_99_not0001,
      Q => sampleCount(3)
    );
  sampleCount_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(4),
      R => sample1_99_not0001,
      Q => sampleCount(4)
    );
  sampleCount_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(5),
      R => sample1_99_not0001,
      Q => sampleCount(5)
    );
  sampleCount_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => receptionComplete_inv,
      D => Result(6),
      R => sample1_99_not0001,
      Q => sampleCount(6)
    );
  count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_0_3,
      R => count_and0000,
      Q => count(0)
    );
  count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_1_3,
      R => count_and0000,
      Q => count(1)
    );
  count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_2_3,
      R => count_and0000,
      Q => count(2)
    );
  count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_3_3,
      R => count_and0000,
      Q => count(3)
    );
  count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_4_3,
      R => count_and0000,
      Q => count(4)
    );
  count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_5_2,
      R => count_and0000,
      Q => count(5)
    );
  count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => dclk_313,
      CE => count_not0001,
      D => Result_6_2,
      R => count_and0000,
      Q => count(6)
    );
  Mmux_varindex0000_8_f8 : MUXF8
    port map (
      I0 => Mmux_varindex0000_10_f7_12,
      I1 => Mmux_varindex0000_9_f71,
      S => sampleCount(1),
      O => Mmux_varindex0000_8_f8_91
    );
  Mmux_varindex0000_10_f7 : MUXF7
    port map (
      I0 => Mmux_varindex0000_12_f6_46,
      I1 => Mmux_varindex0000_11_f62,
      S => sampleCount(0),
      O => Mmux_varindex0000_10_f7_12
    );
  Mmux_varindex0000_12_f6 : MUXF6
    port map (
      I0 => Mmux_varindex0000_14_f5_76,
      I1 => Mmux_varindex0000_13_f53,
      S => sampleCount(4),
      O => Mmux_varindex0000_12_f6_46
    );
  Mmux_varindex0000_14_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_16_82,
      I1 => Mmux_varindex0000_154_81,
      S => sampleCount(3),
      O => Mmux_varindex0000_14_f5_76
    );
  Mmux_varindex0000_16 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(36),
      I1 => sample1(32),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_16_82
    );
  Mmux_varindex0000_154 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(44),
      I1 => sample1(40),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_154_81
    );
  Mmux_varindex0000_13_f5_2 : MUXF5
    port map (
      I0 => Mmux_varindex0000_153_80,
      I1 => Mmux_varindex0000_1410_67,
      S => sampleCount(3),
      O => Mmux_varindex0000_13_f53
    );
  Mmux_varindex0000_153 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(52),
      I1 => sample1(48),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_153_80
    );
  Mmux_varindex0000_1410 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(60),
      I1 => sample1(56),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1410_67
    );
  Mmux_varindex0000_11_f6_1 : MUXF6
    port map (
      I0 => Mmux_varindex0000_13_f52,
      I1 => Mmux_varindex0000_12_f56,
      S => sampleCount(4),
      O => Mmux_varindex0000_11_f62
    );
  Mmux_varindex0000_13_f5_1 : MUXF5
    port map (
      I0 => Mmux_varindex0000_152_79,
      I1 => Mmux_varindex0000_149_75,
      S => sampleCount(3),
      O => Mmux_varindex0000_13_f52
    );
  Mmux_varindex0000_152 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(37),
      I1 => sample1(33),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_152_79
    );
  Mmux_varindex0000_149 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(45),
      I1 => sample1(41),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_149_75
    );
  Mmux_varindex0000_12_f5_5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_148_74,
      I1 => Mmux_varindex0000_1313_52,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f56
    );
  Mmux_varindex0000_148 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(53),
      I1 => sample1(49),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_148_74
    );
  Mmux_varindex0000_1313 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(61),
      I1 => sample1(57),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1313_52
    );
  Mmux_varindex0000_9_f7_0 : MUXF7
    port map (
      I0 => Mmux_varindex0000_11_f61,
      I1 => Mmux_varindex0000_10_f63,
      S => sampleCount(0),
      O => Mmux_varindex0000_9_f71
    );
  Mmux_varindex0000_11_f6_0 : MUXF6
    port map (
      I0 => Mmux_varindex0000_13_f51,
      I1 => Mmux_varindex0000_12_f55,
      S => sampleCount(4),
      O => Mmux_varindex0000_11_f61
    );
  Mmux_varindex0000_13_f5_0 : MUXF5
    port map (
      I0 => Mmux_varindex0000_151_78,
      I1 => Mmux_varindex0000_147_73,
      S => sampleCount(3),
      O => Mmux_varindex0000_13_f51
    );
  Mmux_varindex0000_151 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(38),
      I1 => sample1(34),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_151_78
    );
  Mmux_varindex0000_147 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(46),
      I1 => sample1(42),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_147_73
    );
  Mmux_varindex0000_12_f5_4 : MUXF5
    port map (
      I0 => Mmux_varindex0000_146_72,
      I1 => Mmux_varindex0000_1312_51,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f55
    );
  Mmux_varindex0000_146 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(54),
      I1 => sample1(50),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_146_72
    );
  Mmux_varindex0000_1312 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(62),
      I1 => sample1(58),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1312_51
    );
  Mmux_varindex0000_10_f6_2 : MUXF6
    port map (
      I0 => Mmux_varindex0000_12_f54,
      I1 => Mmux_varindex0000_11_f56,
      S => sampleCount(4),
      O => Mmux_varindex0000_10_f63
    );
  Mmux_varindex0000_12_f5_3 : MUXF5
    port map (
      I0 => Mmux_varindex0000_145_71,
      I1 => Mmux_varindex0000_1311_50,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f54
    );
  Mmux_varindex0000_145 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(39),
      I1 => sample1(35),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_145_71
    );
  Mmux_varindex0000_1311 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(47),
      I1 => sample1(43),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1311_50
    );
  Mmux_varindex0000_11_f5_5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_1310_49,
      I1 => Mmux_varindex0000_1210_30,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f56
    );
  Mmux_varindex0000_1310 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(55),
      I1 => sample1(51),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1310_49
    );
  Mmux_varindex0000_1210 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(63),
      I1 => sample1(59),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_1210_30
    );
  Mmux_varindex0000_7_f8 : MUXF8
    port map (
      I0 => Mmux_varindex0000_9_f7_97,
      I1 => Mmux_varindex0000_8_f71,
      S => sampleCount(1),
      O => Mmux_varindex0000_7_f8_86
    );
  Mmux_varindex0000_9_f7 : MUXF7
    port map (
      I0 => Mmux_varindex0000_11_f6_25,
      I1 => Mmux_varindex0000_10_f62,
      S => sampleCount(0),
      O => Mmux_varindex0000_9_f7_97
    );
  Mmux_varindex0000_11_f6 : MUXF6
    port map (
      I0 => Mmux_varindex0000_13_f5_61,
      I1 => Mmux_varindex0000_12_f53,
      S => sampleCount(4),
      O => Mmux_varindex0000_11_f6_25
    );
  Mmux_varindex0000_13_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_15_77,
      I1 => Mmux_varindex0000_144_70,
      S => sampleCount(3),
      O => Mmux_varindex0000_13_f5_61
    );
  Mmux_varindex0000_15 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(4),
      I1 => sample1(0),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_15_77
    );
  Mmux_varindex0000_144 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(12),
      I1 => sample1(8),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_144_70
    );
  Mmux_varindex0000_12_f5_2 : MUXF5
    port map (
      I0 => Mmux_varindex0000_143_69,
      I1 => Mmux_varindex0000_139_60,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f53
    );
  Mmux_varindex0000_143 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(20),
      I1 => sample1(16),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_143_69
    );
  Mmux_varindex0000_139 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(28),
      I1 => sample1(24),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_139_60
    );
  Mmux_varindex0000_10_f6_1 : MUXF6
    port map (
      I0 => Mmux_varindex0000_12_f52,
      I1 => Mmux_varindex0000_11_f55,
      S => sampleCount(4),
      O => Mmux_varindex0000_10_f62
    );
  Mmux_varindex0000_12_f5_1 : MUXF5
    port map (
      I0 => Mmux_varindex0000_142_68,
      I1 => Mmux_varindex0000_138_59,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f52
    );
  Mmux_varindex0000_142 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(5),
      I1 => sample1(1),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_142_68
    );
  Mmux_varindex0000_138 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(13),
      I1 => sample1(9),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_138_59
    );
  Mmux_varindex0000_11_f5_4 : MUXF5
    port map (
      I0 => Mmux_varindex0000_137_58,
      I1 => Mmux_varindex0000_129_38,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f55
    );
  Mmux_varindex0000_137 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(21),
      I1 => sample1(17),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_137_58
    );
  Mmux_varindex0000_129 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(29),
      I1 => sample1(25),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_129_38
    );
  Mmux_varindex0000_8_f7_0 : MUXF7
    port map (
      I0 => Mmux_varindex0000_10_f61,
      I1 => Mmux_varindex0000_9_f62,
      S => sampleCount(0),
      O => Mmux_varindex0000_8_f71
    );
  Mmux_varindex0000_10_f6_0 : MUXF6
    port map (
      I0 => Mmux_varindex0000_12_f51,
      I1 => Mmux_varindex0000_11_f54,
      S => sampleCount(4),
      O => Mmux_varindex0000_10_f61
    );
  Mmux_varindex0000_12_f5_0 : MUXF5
    port map (
      I0 => Mmux_varindex0000_141_66,
      I1 => Mmux_varindex0000_136_57,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f51
    );
  Mmux_varindex0000_141 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(6),
      I1 => sample1(2),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_141_66
    );
  Mmux_varindex0000_136 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(14),
      I1 => sample1(10),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_136_57
    );
  Mmux_varindex0000_11_f5_3 : MUXF5
    port map (
      I0 => Mmux_varindex0000_135_56,
      I1 => Mmux_varindex0000_128_37,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f54
    );
  Mmux_varindex0000_135 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(22),
      I1 => sample1(18),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_135_56
    );
  Mmux_varindex0000_128 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(30),
      I1 => sample1(26),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_128_37
    );
  Mmux_varindex0000_9_f6_1 : MUXF6
    port map (
      I0 => Mmux_varindex0000_11_f53,
      I1 => Mmux_varindex0000_10_f53,
      S => sampleCount(4),
      O => Mmux_varindex0000_9_f62
    );
  Mmux_varindex0000_11_f5_2 : MUXF5
    port map (
      I0 => Mmux_varindex0000_134_55,
      I1 => Mmux_varindex0000_127_36,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f53
    );
  Mmux_varindex0000_134 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(7),
      I1 => sample1(3),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_134_55
    );
  Mmux_varindex0000_127 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(15),
      I1 => sample1(11),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_127_36
    );
  Mmux_varindex0000_10_f5_2 : MUXF5
    port map (
      I0 => Mmux_varindex0000_126_35,
      I1 => Mmux_varindex0000_114_17,
      S => sampleCount(3),
      O => Mmux_varindex0000_10_f53
    );
  Mmux_varindex0000_126 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(23),
      I1 => sample1(19),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_126_35
    );
  Mmux_varindex0000_114 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(31),
      I1 => sample1(27),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_114_17
    );
  Mmux_varindex0000_7_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_9_92,
      I1 => Mmux_varindex0000_8_87,
      S => sampleCount(1),
      O => Mmux_varindex0000_7_f5_84
    );
  Mmux_varindex0000_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sample1(96),
      I2 => sample1(97),
      O => Mmux_varindex0000_9_92
    );
  Mmux_varindex0000_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sample1(98),
      I2 => sample1(99),
      O => Mmux_varindex0000_8_87
    );
  Mmux_varindex0000_6_f8 : MUXF8
    port map (
      I0 => Mmux_varindex0000_8_f7_89,
      I1 => Mmux_varindex0000_7_f7_85,
      S => sampleCount(1),
      O => Mmux_varindex0000_6_f8_83
    );
  Mmux_varindex0000_8_f7 : MUXF7
    port map (
      I0 => Mmux_varindex0000_10_f6_8,
      I1 => Mmux_varindex0000_9_f61,
      S => sampleCount(0),
      O => Mmux_varindex0000_8_f7_89
    );
  Mmux_varindex0000_10_f6 : MUXF6
    port map (
      I0 => Mmux_varindex0000_12_f5_39,
      I1 => Mmux_varindex0000_11_f52,
      S => sampleCount(4),
      O => Mmux_varindex0000_10_f6_8
    );
  Mmux_varindex0000_12_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_14_65,
      I1 => Mmux_varindex0000_133_54,
      S => sampleCount(3),
      O => Mmux_varindex0000_12_f5_39
    );
  Mmux_varindex0000_14 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(68),
      I1 => sample1(64),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_14_65
    );
  Mmux_varindex0000_133 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(76),
      I1 => sample1(72),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_133_54
    );
  Mmux_varindex0000_11_f5_1 : MUXF5
    port map (
      I0 => Mmux_varindex0000_132_53,
      I1 => Mmux_varindex0000_125_34,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f52
    );
  Mmux_varindex0000_132 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(84),
      I1 => sample1(80),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_132_53
    );
  Mmux_varindex0000_125 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(92),
      I1 => sample1(88),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_125_34
    );
  Mmux_varindex0000_9_f6_0 : MUXF6
    port map (
      I0 => Mmux_varindex0000_11_f51,
      I1 => Mmux_varindex0000_10_f52,
      S => sampleCount(4),
      O => Mmux_varindex0000_9_f61
    );
  Mmux_varindex0000_11_f5_0 : MUXF5
    port map (
      I0 => Mmux_varindex0000_131_48,
      I1 => Mmux_varindex0000_124_33,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f51
    );
  Mmux_varindex0000_131 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(69),
      I1 => sample1(65),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_131_48
    );
  Mmux_varindex0000_124 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(77),
      I1 => sample1(73),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_124_33
    );
  Mmux_varindex0000_10_f5_1 : MUXF5
    port map (
      I0 => Mmux_varindex0000_123_32,
      I1 => Mmux_varindex0000_113_16,
      S => sampleCount(3),
      O => Mmux_varindex0000_10_f52
    );
  Mmux_varindex0000_123 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(85),
      I1 => sample1(81),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_123_32
    );
  Mmux_varindex0000_113 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(93),
      I1 => sample1(89),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_113_16
    );
  Mmux_varindex0000_7_f7 : MUXF7
    port map (
      I0 => Mmux_varindex0000_9_f6_94,
      I1 => Mmux_varindex0000_8_f6_88,
      S => sampleCount(0),
      O => Mmux_varindex0000_7_f7_85
    );
  Mmux_varindex0000_9_f6 : MUXF6
    port map (
      I0 => Mmux_varindex0000_11_f5_18,
      I1 => Mmux_varindex0000_10_f51,
      S => sampleCount(4),
      O => Mmux_varindex0000_9_f6_94
    );
  Mmux_varindex0000_11_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_13_47,
      I1 => Mmux_varindex0000_122_31,
      S => sampleCount(3),
      O => Mmux_varindex0000_11_f5_18
    );
  Mmux_varindex0000_13 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(70),
      I1 => sample1(66),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_13_47
    );
  Mmux_varindex0000_122 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(78),
      I1 => sample1(74),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_122_31
    );
  Mmux_varindex0000_10_f5_0 : MUXF5
    port map (
      I0 => Mmux_varindex0000_121_29,
      I1 => Mmux_varindex0000_112_15,
      S => sampleCount(3),
      O => Mmux_varindex0000_10_f51
    );
  Mmux_varindex0000_121 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(86),
      I1 => sample1(82),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_121_29
    );
  Mmux_varindex0000_112 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(94),
      I1 => sample1(90),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_112_15
    );
  Mmux_varindex0000_8_f6 : MUXF6
    port map (
      I0 => Mmux_varindex0000_10_f5_4,
      I1 => Mmux_varindex0000_9_f5_93,
      S => sampleCount(4),
      O => Mmux_varindex0000_8_f6_88
    );
  Mmux_varindex0000_10_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_12_28,
      I1 => Mmux_varindex0000_111_14,
      S => sampleCount(3),
      O => Mmux_varindex0000_10_f5_4
    );
  Mmux_varindex0000_12 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(71),
      I1 => sample1(67),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_12_28
    );
  Mmux_varindex0000_111 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(79),
      I1 => sample1(75),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_111_14
    );
  Mmux_varindex0000_9_f5 : MUXF5
    port map (
      I0 => Mmux_varindex0000_11_13,
      I1 => Mmux_varindex0000_10_3,
      S => sampleCount(3),
      O => Mmux_varindex0000_9_f5_93
    );
  Mmux_varindex0000_11 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(87),
      I1 => sample1(83),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_11_13
    );
  Mmux_varindex0000_10 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => sample1(95),
      I1 => sample1(91),
      I2 => sampleCount(2),
      O => Mmux_varindex0000_10_3
    );
  mux_2_f5 : MUXF5
    port map (
      I0 => mux_4_358,
      I1 => mux_3_357,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(24)
    );
  mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(24),
      I2 => outputData(16),
      O => mux_4_358
    );
  mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(8),
      I2 => outputData(0),
      O => mux_3_357
    );
  mux1_2_f5 : MUXF5
    port map (
      I0 => mux1_4_344,
      I1 => mux1_3_343,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(25)
    );
  mux1_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(25),
      I2 => outputData(17),
      O => mux1_4_344
    );
  mux1_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(9),
      I2 => outputData(1),
      O => mux1_3_343
    );
  mux2_2_f5 : MUXF5
    port map (
      I0 => mux2_4_346,
      I1 => mux2_3_345,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(26)
    );
  mux2_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(26),
      I2 => outputData(18),
      O => mux2_4_346
    );
  mux2_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(10),
      I2 => outputData(2),
      O => mux2_3_345
    );
  mux3_2_f5 : MUXF5
    port map (
      I0 => mux3_4_348,
      I1 => mux3_3_347,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(27)
    );
  mux3_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(27),
      I2 => outputData(19),
      O => mux3_4_348
    );
  mux3_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(11),
      I2 => outputData(3),
      O => mux3_3_347
    );
  mux4_2_f5 : MUXF5
    port map (
      I0 => mux4_4_350,
      I1 => mux4_3_349,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(28)
    );
  mux4_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(28),
      I2 => outputData(20),
      O => mux4_4_350
    );
  mux4_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(12),
      I2 => outputData(4),
      O => mux4_3_349
    );
  mux5_2_f5 : MUXF5
    port map (
      I0 => mux5_4_352,
      I1 => mux5_3_351,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(29)
    );
  mux5_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(29),
      I2 => outputData(21),
      O => mux5_4_352
    );
  mux5_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(13),
      I2 => outputData(5),
      O => mux5_3_351
    );
  mux6_2_f5 : MUXF5
    port map (
      I0 => mux6_4_354,
      I1 => mux6_3_353,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(30)
    );
  mux6_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(30),
      I2 => outputData(22),
      O => mux6_4_354
    );
  mux6_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(14),
      I2 => outputData(6),
      O => mux6_3_353
    );
  mux7_2_f5 : MUXF5
    port map (
      I0 => mux7_4_356,
      I1 => mux7_3_355,
      S => selecto_1_IBUF_1386,
      O => leds_mux0003(31)
    );
  mux7_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(31),
      I2 => outputData(23),
      O => mux7_4_356
    );
  mux7_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => selecto_0_IBUF_1385,
      I1 => outputData(15),
      I2 => outputData(7),
      O => mux7_3_355
    );
  rss_state_FSM_FFd2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd3_855,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd2_854
    );
  rss_state_FSM_FFd3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd4_856,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd3_855
    );
  rss_state_FSM_FFd4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd5_857,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd4_856
    );
  rss_state_FSM_FFd5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd6_858,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd5_857
    );
  rss_state_FSM_FFd6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd7_859,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd6_858
    );
  rss_state_FSM_FFd7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd8_860,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd7_859
    );
  rss_state_FSM_FFd8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd9_861,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd8_860
    );
  rss_state_FSM_FFd9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd10_852,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd9_861
    );
  rss_state_FSM_FFd10 : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd10_In,
      S => rss_state_FSM_Scst_FSM_inv,
      Q => rss_state_FSM_FFd10_852
    );
  rss_Mcount_cntData_xor_12_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(11),
      LI => rss_Mcount_cntData_xor_12_rt_545,
      O => rss_Result_12_1
    );
  rss_Mcount_cntData_xor_11_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(10),
      LI => rss_Mcount_cntData_cy_11_rt_512,
      O => rss_Result_11_2
    );
  rss_Mcount_cntData_cy_11_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(10),
      DI => N0,
      S => rss_Mcount_cntData_cy_11_rt_512,
      O => rss_Mcount_cntData_cy(11)
    );
  rss_Mcount_cntData_xor_10_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(9),
      LI => rss_Mcount_cntData_cy_10_rt_510,
      O => rss_Result_10_2
    );
  rss_Mcount_cntData_cy_10_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(9),
      DI => N0,
      S => rss_Mcount_cntData_cy_10_rt_510,
      O => rss_Mcount_cntData_cy(10)
    );
  rss_Mcount_cntData_xor_9_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(8),
      LI => rss_Mcount_cntData_cy_9_rt_530,
      O => rss_Result_9_2
    );
  rss_Mcount_cntData_cy_9_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(8),
      DI => N0,
      S => rss_Mcount_cntData_cy_9_rt_530,
      O => rss_Mcount_cntData_cy(9)
    );
  rss_Mcount_cntData_xor_8_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(7),
      LI => rss_Mcount_cntData_cy_8_rt_528,
      O => rss_Result_8_2
    );
  rss_Mcount_cntData_cy_8_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(7),
      DI => N0,
      S => rss_Mcount_cntData_cy_8_rt_528,
      O => rss_Mcount_cntData_cy(8)
    );
  rss_Mcount_cntData_xor_7_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(6),
      LI => rss_Mcount_cntData_cy_7_rt_526,
      O => rss_Result_7_3
    );
  rss_Mcount_cntData_cy_7_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(6),
      DI => N0,
      S => rss_Mcount_cntData_cy_7_rt_526,
      O => rss_Mcount_cntData_cy(7)
    );
  rss_Mcount_cntData_xor_6_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(5),
      LI => rss_Mcount_cntData_cy_6_rt_524,
      O => rss_Result_6_3
    );
  rss_Mcount_cntData_cy_6_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(5),
      DI => N0,
      S => rss_Mcount_cntData_cy_6_rt_524,
      O => rss_Mcount_cntData_cy(6)
    );
  rss_Mcount_cntData_xor_5_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(4),
      LI => rss_Mcount_cntData_cy_5_rt_522,
      O => rss_Result_5_3
    );
  rss_Mcount_cntData_cy_5_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(4),
      DI => N0,
      S => rss_Mcount_cntData_cy_5_rt_522,
      O => rss_Mcount_cntData_cy(5)
    );
  rss_Mcount_cntData_xor_4_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(3),
      LI => rss_Mcount_cntData_cy_4_rt_520,
      O => rss_Result_4_4
    );
  rss_Mcount_cntData_cy_4_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(3),
      DI => N0,
      S => rss_Mcount_cntData_cy_4_rt_520,
      O => rss_Mcount_cntData_cy(4)
    );
  rss_Mcount_cntData_xor_3_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(2),
      LI => rss_Mcount_cntData_cy_3_rt_518,
      O => rss_Result_3_4
    );
  rss_Mcount_cntData_cy_3_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(2),
      DI => N0,
      S => rss_Mcount_cntData_cy_3_rt_518,
      O => rss_Mcount_cntData_cy(3)
    );
  rss_Mcount_cntData_xor_2_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(1),
      LI => rss_Mcount_cntData_cy_2_rt_516,
      O => rss_Result_2_4
    );
  rss_Mcount_cntData_cy_2_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(1),
      DI => N0,
      S => rss_Mcount_cntData_cy_2_rt_516,
      O => rss_Mcount_cntData_cy(2)
    );
  rss_Mcount_cntData_xor_1_Q : XORCY
    port map (
      CI => rss_Mcount_cntData_cy(0),
      LI => rss_Mcount_cntData_cy_1_rt_514,
      O => rss_Result_1_4
    );
  rss_Mcount_cntData_cy_1_Q : MUXCY
    port map (
      CI => rss_Mcount_cntData_cy(0),
      DI => N0,
      S => rss_Mcount_cntData_cy_1_rt_514,
      O => rss_Mcount_cntData_cy(1)
    );
  rss_Mcount_cntData_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Mcount_cntData_lut(0),
      O => rss_Result_0_4
    );
  rss_Mcount_cntData_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Mcount_cntData_lut(0),
      O => rss_Mcount_cntData_cy(0)
    );
  rss_Mcount_indData_xor_7_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(6),
      LI => rss_Mcount_indData_xor_7_rt_621,
      O => rss_Result_7_1
    );
  rss_Mcount_indData_xor_6_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(5),
      LI => rss_Mcount_indData_cy_6_rt_619,
      O => rss_Result_6_1
    );
  rss_Mcount_indData_cy_6_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(5),
      DI => N0,
      S => rss_Mcount_indData_cy_6_rt_619,
      O => rss_Mcount_indData_cy(6)
    );
  rss_Mcount_indData_xor_5_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(4),
      LI => rss_Mcount_indData_cy_5_rt_617,
      O => rss_Result_5_1
    );
  rss_Mcount_indData_cy_5_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(4),
      DI => N0,
      S => rss_Mcount_indData_cy_5_rt_617,
      O => rss_Mcount_indData_cy(5)
    );
  rss_Mcount_indData_xor_4_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(3),
      LI => rss_Mcount_indData_cy_4_rt_615,
      O => rss_Result_4_1
    );
  rss_Mcount_indData_cy_4_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(3),
      DI => N0,
      S => rss_Mcount_indData_cy_4_rt_615,
      O => rss_Mcount_indData_cy(4)
    );
  rss_Mcount_indData_xor_3_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(2),
      LI => rss_Mcount_indData_cy_3_rt_613,
      O => rss_Result_3_1
    );
  rss_Mcount_indData_cy_3_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(2),
      DI => N0,
      S => rss_Mcount_indData_cy_3_rt_613,
      O => rss_Mcount_indData_cy(3)
    );
  rss_Mcount_indData_xor_2_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(1),
      LI => rss_Mcount_indData_cy_2_rt_611,
      O => rss_Result_2_1
    );
  rss_Mcount_indData_cy_2_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(1),
      DI => N0,
      S => rss_Mcount_indData_cy_2_rt_611,
      O => rss_Mcount_indData_cy(2)
    );
  rss_Mcount_indData_xor_1_Q : XORCY
    port map (
      CI => rss_Mcount_indData_cy(0),
      LI => rss_Mcount_indData_cy_1_rt_609,
      O => rss_Result_1_1
    );
  rss_Mcount_indData_cy_1_Q : MUXCY
    port map (
      CI => rss_Mcount_indData_cy(0),
      DI => N0,
      S => rss_Mcount_indData_cy_1_rt_609,
      O => rss_Mcount_indData_cy(1)
    );
  rss_Mcount_indData_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Mcount_indData_lut(0),
      O => rss_Result_0_1
    );
  rss_Mcount_indData_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Mcount_indData_lut(0),
      O => rss_Mcount_indData_cy(0)
    );
  rss_Mcount_cntTest_xor_12_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(11),
      LI => rss_Mcount_cntTest_xor_12_rt_583,
      O => rss_Result(12)
    );
  rss_Mcount_cntTest_xor_11_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(10),
      LI => rss_Mcount_cntTest_cy_11_rt_550,
      O => rss_Result_11_1
    );
  rss_Mcount_cntTest_cy_11_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(10),
      DI => N0,
      S => rss_Mcount_cntTest_cy_11_rt_550,
      O => rss_Mcount_cntTest_cy(11)
    );
  rss_Mcount_cntTest_xor_10_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(9),
      LI => rss_Mcount_cntTest_cy_10_rt_548,
      O => rss_Result_10_1
    );
  rss_Mcount_cntTest_cy_10_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(9),
      DI => N0,
      S => rss_Mcount_cntTest_cy_10_rt_548,
      O => rss_Mcount_cntTest_cy(10)
    );
  rss_Mcount_cntTest_xor_9_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(8),
      LI => rss_Mcount_cntTest_cy_9_rt_568,
      O => rss_Result_9_1
    );
  rss_Mcount_cntTest_cy_9_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(8),
      DI => N0,
      S => rss_Mcount_cntTest_cy_9_rt_568,
      O => rss_Mcount_cntTest_cy(9)
    );
  rss_Mcount_cntTest_xor_8_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(7),
      LI => rss_Mcount_cntTest_cy_8_rt_566,
      O => rss_Result_8_1
    );
  rss_Mcount_cntTest_cy_8_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(7),
      DI => N0,
      S => rss_Mcount_cntTest_cy_8_rt_566,
      O => rss_Mcount_cntTest_cy(8)
    );
  rss_Mcount_cntTest_xor_7_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(6),
      LI => rss_Mcount_cntTest_cy_7_rt_564,
      O => rss_Result_7_2
    );
  rss_Mcount_cntTest_cy_7_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(6),
      DI => N0,
      S => rss_Mcount_cntTest_cy_7_rt_564,
      O => rss_Mcount_cntTest_cy(7)
    );
  rss_Mcount_cntTest_xor_6_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(5),
      LI => rss_Mcount_cntTest_cy_6_rt_562,
      O => rss_Result_6_2
    );
  rss_Mcount_cntTest_cy_6_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(5),
      DI => N0,
      S => rss_Mcount_cntTest_cy_6_rt_562,
      O => rss_Mcount_cntTest_cy(6)
    );
  rss_Mcount_cntTest_xor_5_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(4),
      LI => rss_Mcount_cntTest_cy_5_rt_560,
      O => rss_Result_5_2
    );
  rss_Mcount_cntTest_cy_5_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(4),
      DI => N0,
      S => rss_Mcount_cntTest_cy_5_rt_560,
      O => rss_Mcount_cntTest_cy(5)
    );
  rss_Mcount_cntTest_xor_4_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(3),
      LI => rss_Mcount_cntTest_cy_4_rt_558,
      O => rss_Result_4_3
    );
  rss_Mcount_cntTest_cy_4_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(3),
      DI => N0,
      S => rss_Mcount_cntTest_cy_4_rt_558,
      O => rss_Mcount_cntTest_cy(4)
    );
  rss_Mcount_cntTest_xor_3_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(2),
      LI => rss_Mcount_cntTest_cy_3_rt_556,
      O => rss_Result_3_3
    );
  rss_Mcount_cntTest_cy_3_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(2),
      DI => N0,
      S => rss_Mcount_cntTest_cy_3_rt_556,
      O => rss_Mcount_cntTest_cy(3)
    );
  rss_Mcount_cntTest_xor_2_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(1),
      LI => rss_Mcount_cntTest_cy_2_rt_554,
      O => rss_Result_2_3
    );
  rss_Mcount_cntTest_cy_2_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(1),
      DI => N0,
      S => rss_Mcount_cntTest_cy_2_rt_554,
      O => rss_Mcount_cntTest_cy(2)
    );
  rss_Mcount_cntTest_xor_1_Q : XORCY
    port map (
      CI => rss_Mcount_cntTest_cy(0),
      LI => rss_Mcount_cntTest_cy_1_rt_552,
      O => rss_Result_1_3
    );
  rss_Mcount_cntTest_cy_1_Q : MUXCY
    port map (
      CI => rss_Mcount_cntTest_cy(0),
      DI => N0,
      S => rss_Mcount_cntTest_cy_1_rt_552,
      O => rss_Mcount_cntTest_cy(1)
    );
  rss_Mcount_cntTest_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Mcount_cntTest_lut(0),
      O => rss_Result_0_3
    );
  rss_Mcount_cntTest_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Mcount_cntTest_lut(0),
      O => rss_Mcount_cntTest_cy(0)
    );
  rss_Madd_indData_add0000_xor_12_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(11),
      LI => rss_Madd_indData_add0000_xor_12_rt_482,
      O => rss_indData_add0000(12)
    );
  rss_Madd_indData_add0000_xor_11_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(10),
      LI => rss_Madd_indData_add0000_cy_11_rt_462,
      O => rss_indData_add0000(11)
    );
  rss_Madd_indData_add0000_cy_11_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(10),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_11_rt_462,
      O => rss_Madd_indData_add0000_cy(11)
    );
  rss_Madd_indData_add0000_xor_10_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(9),
      LI => rss_Madd_indData_add0000_cy_10_rt_460,
      O => rss_indData_add0000(10)
    );
  rss_Madd_indData_add0000_cy_10_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(9),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_10_rt_460,
      O => rss_Madd_indData_add0000_cy(10)
    );
  rss_Madd_indData_add0000_xor_9_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(8),
      LI => rss_Madd_indData_add0000_cy_9_rt_480,
      O => rss_indData_add0000(9)
    );
  rss_Madd_indData_add0000_cy_9_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(8),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_9_rt_480,
      O => rss_Madd_indData_add0000_cy(9)
    );
  rss_Madd_indData_add0000_xor_8_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(7),
      LI => rss_Madd_indData_add0000_cy_8_rt_478,
      O => rss_indData_add0000(8)
    );
  rss_Madd_indData_add0000_cy_8_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(7),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_8_rt_478,
      O => rss_Madd_indData_add0000_cy(8)
    );
  rss_Madd_indData_add0000_xor_7_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(6),
      LI => rss_Madd_indData_add0000_cy_7_rt_476,
      O => rss_indData_add0000(7)
    );
  rss_Madd_indData_add0000_cy_7_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(6),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_7_rt_476,
      O => rss_Madd_indData_add0000_cy(7)
    );
  rss_Madd_indData_add0000_xor_6_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(5),
      LI => rss_Madd_indData_add0000_cy_6_rt_474,
      O => rss_indData_add0000(6)
    );
  rss_Madd_indData_add0000_cy_6_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(5),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_6_rt_474,
      O => rss_Madd_indData_add0000_cy(6)
    );
  rss_Madd_indData_add0000_xor_5_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(4),
      LI => rss_Madd_indData_add0000_cy_5_rt_472,
      O => rss_indData_add0000(5)
    );
  rss_Madd_indData_add0000_cy_5_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(4),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_5_rt_472,
      O => rss_Madd_indData_add0000_cy(5)
    );
  rss_Madd_indData_add0000_xor_4_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(3),
      LI => rss_Madd_indData_add0000_cy_4_rt_470,
      O => rss_indData_add0000(4)
    );
  rss_Madd_indData_add0000_cy_4_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(3),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_4_rt_470,
      O => rss_Madd_indData_add0000_cy(4)
    );
  rss_Madd_indData_add0000_xor_3_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(2),
      LI => rss_Madd_indData_add0000_cy_3_rt_468,
      O => rss_indData_add0000(3)
    );
  rss_Madd_indData_add0000_cy_3_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(2),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_3_rt_468,
      O => rss_Madd_indData_add0000_cy(3)
    );
  rss_Madd_indData_add0000_xor_2_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(1),
      LI => rss_Madd_indData_add0000_cy_2_rt_466,
      O => rss_indData_add0000(2)
    );
  rss_Madd_indData_add0000_cy_2_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(1),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_2_rt_466,
      O => rss_Madd_indData_add0000_cy(2)
    );
  rss_Madd_indData_add0000_xor_1_Q : XORCY
    port map (
      CI => rss_Madd_indData_add0000_cy(0),
      LI => rss_Madd_indData_add0000_cy_1_rt_464,
      O => rss_indData_add0000(1)
    );
  rss_Madd_indData_add0000_cy_1_Q : MUXCY
    port map (
      CI => rss_Madd_indData_add0000_cy(0),
      DI => N0,
      S => rss_Madd_indData_add0000_cy_1_rt_464,
      O => rss_Madd_indData_add0000_cy(1)
    );
  rss_Madd_indData_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Madd_indData_add0000_lut(0),
      O => rss_indData_add0000(0)
    );
  rss_Madd_indData_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Madd_indData_add0000_lut(0),
      O => rss_Madd_indData_add0000_cy(0)
    );
  rss_Madd_indTest_add0000_xor_12_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(11),
      LI => rss_Madd_indTest_add0000_xor_12_rt_507,
      O => rss_indTest_add0000(12)
    );
  rss_Madd_indTest_add0000_xor_11_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(10),
      LI => rss_Madd_indTest_add0000_cy_11_rt_487,
      O => rss_indTest_add0000(11)
    );
  rss_Madd_indTest_add0000_cy_11_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(10),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_11_rt_487,
      O => rss_Madd_indTest_add0000_cy(11)
    );
  rss_Madd_indTest_add0000_xor_10_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(9),
      LI => rss_Madd_indTest_add0000_cy_10_rt_485,
      O => rss_indTest_add0000(10)
    );
  rss_Madd_indTest_add0000_cy_10_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(9),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_10_rt_485,
      O => rss_Madd_indTest_add0000_cy(10)
    );
  rss_Madd_indTest_add0000_xor_9_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(8),
      LI => rss_Madd_indTest_add0000_cy_9_rt_505,
      O => rss_indTest_add0000(9)
    );
  rss_Madd_indTest_add0000_cy_9_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(8),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_9_rt_505,
      O => rss_Madd_indTest_add0000_cy(9)
    );
  rss_Madd_indTest_add0000_xor_8_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(7),
      LI => rss_Madd_indTest_add0000_cy_8_rt_503,
      O => rss_indTest_add0000(8)
    );
  rss_Madd_indTest_add0000_cy_8_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(7),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_8_rt_503,
      O => rss_Madd_indTest_add0000_cy(8)
    );
  rss_Madd_indTest_add0000_xor_7_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(6),
      LI => rss_Madd_indTest_add0000_cy_7_rt_501,
      O => rss_indTest_add0000(7)
    );
  rss_Madd_indTest_add0000_cy_7_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(6),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_7_rt_501,
      O => rss_Madd_indTest_add0000_cy(7)
    );
  rss_Madd_indTest_add0000_xor_6_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(5),
      LI => rss_Madd_indTest_add0000_cy_6_rt_499,
      O => rss_indTest_add0000(6)
    );
  rss_Madd_indTest_add0000_cy_6_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(5),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_6_rt_499,
      O => rss_Madd_indTest_add0000_cy(6)
    );
  rss_Madd_indTest_add0000_xor_5_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(4),
      LI => rss_Madd_indTest_add0000_cy_5_rt_497,
      O => rss_indTest_add0000(5)
    );
  rss_Madd_indTest_add0000_cy_5_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(4),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_5_rt_497,
      O => rss_Madd_indTest_add0000_cy(5)
    );
  rss_Madd_indTest_add0000_xor_4_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(3),
      LI => rss_Madd_indTest_add0000_cy_4_rt_495,
      O => rss_indTest_add0000(4)
    );
  rss_Madd_indTest_add0000_cy_4_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(3),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_4_rt_495,
      O => rss_Madd_indTest_add0000_cy(4)
    );
  rss_Madd_indTest_add0000_xor_3_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(2),
      LI => rss_Madd_indTest_add0000_cy_3_rt_493,
      O => rss_indTest_add0000(3)
    );
  rss_Madd_indTest_add0000_cy_3_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(2),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_3_rt_493,
      O => rss_Madd_indTest_add0000_cy(3)
    );
  rss_Madd_indTest_add0000_xor_2_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(1),
      LI => rss_Madd_indTest_add0000_cy_2_rt_491,
      O => rss_indTest_add0000(2)
    );
  rss_Madd_indTest_add0000_cy_2_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(1),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_2_rt_491,
      O => rss_Madd_indTest_add0000_cy(2)
    );
  rss_Madd_indTest_add0000_xor_1_Q : XORCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(0),
      LI => rss_Madd_indTest_add0000_cy_1_rt_489,
      O => rss_indTest_add0000(1)
    );
  rss_Madd_indTest_add0000_cy_1_Q : MUXCY
    port map (
      CI => rss_Madd_indTest_add0000_cy(0),
      DI => N0,
      S => rss_Madd_indTest_add0000_cy_1_rt_489,
      O => rss_Madd_indTest_add0000_cy(1)
    );
  rss_Madd_indTest_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Madd_indTest_add0000_lut(0),
      O => rss_indTest_add0000(0)
    );
  rss_Madd_indTest_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Madd_indTest_add0000_lut(0),
      O => rss_Madd_indTest_add0000_cy(0)
    );
  rss_Mcount_count_xor_11_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(10),
      LI => rss_Mcount_count_xor_11_rt_606,
      O => rss_Result(11)
    );
  rss_Mcount_count_xor_10_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(9),
      LI => rss_Mcount_count_cy_10_rt_586,
      O => rss_Result(10)
    );
  rss_Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(9),
      DI => N0,
      S => rss_Mcount_count_cy_10_rt_586,
      O => rss_Mcount_count_cy(10)
    );
  rss_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(8),
      LI => rss_Mcount_count_cy_9_rt_604,
      O => rss_Result(9)
    );
  rss_Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(8),
      DI => N0,
      S => rss_Mcount_count_cy_9_rt_604,
      O => rss_Mcount_count_cy(9)
    );
  rss_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(7),
      LI => rss_Mcount_count_cy_8_rt_602,
      O => rss_Result(8)
    );
  rss_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(7),
      DI => N0,
      S => rss_Mcount_count_cy_8_rt_602,
      O => rss_Mcount_count_cy(8)
    );
  rss_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(6),
      LI => rss_Mcount_count_cy_7_rt_600,
      O => rss_Result(7)
    );
  rss_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(6),
      DI => N0,
      S => rss_Mcount_count_cy_7_rt_600,
      O => rss_Mcount_count_cy(7)
    );
  rss_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(5),
      LI => rss_Mcount_count_cy_6_rt_598,
      O => rss_Result(6)
    );
  rss_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(5),
      DI => N0,
      S => rss_Mcount_count_cy_6_rt_598,
      O => rss_Mcount_count_cy(6)
    );
  rss_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(4),
      LI => rss_Mcount_count_cy_5_rt_596,
      O => rss_Result(5)
    );
  rss_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(4),
      DI => N0,
      S => rss_Mcount_count_cy_5_rt_596,
      O => rss_Mcount_count_cy(5)
    );
  rss_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(3),
      LI => rss_Mcount_count_cy_4_rt_594,
      O => rss_Result(4)
    );
  rss_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(3),
      DI => N0,
      S => rss_Mcount_count_cy_4_rt_594,
      O => rss_Mcount_count_cy(4)
    );
  rss_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(2),
      LI => rss_Mcount_count_cy_3_rt_592,
      O => rss_Result(3)
    );
  rss_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(2),
      DI => N0,
      S => rss_Mcount_count_cy_3_rt_592,
      O => rss_Mcount_count_cy(3)
    );
  rss_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(1),
      LI => rss_Mcount_count_cy_2_rt_590,
      O => rss_Result(2)
    );
  rss_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(1),
      DI => N0,
      S => rss_Mcount_count_cy_2_rt_590,
      O => rss_Mcount_count_cy(2)
    );
  rss_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => rss_Mcount_count_cy(0),
      LI => rss_Mcount_count_cy_1_rt_588,
      O => rss_Result(1)
    );
  rss_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => rss_Mcount_count_cy(0),
      DI => N0,
      S => rss_Mcount_count_cy_1_rt_588,
      O => rss_Mcount_count_cy(1)
    );
  rss_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Mcount_count_lut(0),
      O => rss_Result(0)
    );
  rss_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Mcount_count_lut(0),
      O => rss_Mcount_count_cy(0)
    );
  rss_Madd_acc_add0000_xor_15_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(14),
      LI => rss_Madd_acc_add0000_cy_15_rt_438,
      O => rss_acc_add0000(15)
    );
  rss_Madd_acc_add0000_cy_15_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(14),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_15_rt_438,
      O => rss_Madd_acc_add0000_cy(15)
    );
  rss_Madd_acc_add0000_xor_14_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(13),
      LI => rss_Madd_acc_add0000_cy_14_rt_436,
      O => rss_acc_add0000(14)
    );
  rss_Madd_acc_add0000_cy_14_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(13),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_14_rt_436,
      O => rss_Madd_acc_add0000_cy(14)
    );
  rss_Madd_acc_add0000_xor_13_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(12),
      LI => rss_Madd_acc_add0000_cy_13_rt_434,
      O => rss_acc_add0000(13)
    );
  rss_Madd_acc_add0000_cy_13_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(12),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_13_rt_434,
      O => rss_Madd_acc_add0000_cy(13)
    );
  rss_Madd_acc_add0000_xor_12_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(11),
      LI => rss_Madd_acc_add0000_cy_12_rt_432,
      O => rss_acc_add0000(12)
    );
  rss_Madd_acc_add0000_cy_12_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(11),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_12_rt_432,
      O => rss_Madd_acc_add0000_cy(12)
    );
  rss_Madd_acc_add0000_xor_11_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(10),
      LI => rss_Madd_acc_add0000_cy_11_rt_430,
      O => rss_acc_add0000(11)
    );
  rss_Madd_acc_add0000_cy_11_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(10),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_11_rt_430,
      O => rss_Madd_acc_add0000_cy(11)
    );
  rss_Madd_acc_add0000_xor_10_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(9),
      LI => rss_Madd_acc_add0000_cy_10_rt_428,
      O => rss_acc_add0000(10)
    );
  rss_Madd_acc_add0000_cy_10_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(9),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_10_rt_428,
      O => rss_Madd_acc_add0000_cy(10)
    );
  rss_Madd_acc_add0000_xor_9_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(8),
      LI => rss_Madd_acc_add0000_cy_9_rt_452,
      O => rss_acc_add0000(9)
    );
  rss_Madd_acc_add0000_cy_9_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(8),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_9_rt_452,
      O => rss_Madd_acc_add0000_cy(9)
    );
  rss_Madd_acc_add0000_xor_8_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(7),
      LI => rss_Madd_acc_add0000_cy_8_rt_450,
      O => rss_acc_add0000(8)
    );
  rss_Madd_acc_add0000_cy_8_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(7),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_8_rt_450,
      O => rss_Madd_acc_add0000_cy(8)
    );
  rss_Madd_acc_add0000_xor_7_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(6),
      LI => rss_Madd_acc_add0000_lut_7_Q,
      O => rss_acc_add0000(7)
    );
  rss_Madd_acc_add0000_cy_7_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(6),
      DI => N1,
      S => rss_Madd_acc_add0000_lut_7_Q,
      O => rss_Madd_acc_add0000_cy(7)
    );
  rss_Madd_acc_add0000_xor_6_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(5),
      LI => rss_Madd_acc_add0000_cy_6_rt_447,
      O => rss_acc_add0000(6)
    );
  rss_Madd_acc_add0000_cy_6_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(5),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_6_rt_447,
      O => rss_Madd_acc_add0000_cy(6)
    );
  rss_Madd_acc_add0000_xor_5_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(4),
      LI => rss_Madd_acc_add0000_cy_5_rt_445,
      O => rss_acc_add0000(5)
    );
  rss_Madd_acc_add0000_cy_5_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(4),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_5_rt_445,
      O => rss_Madd_acc_add0000_cy(5)
    );
  rss_Madd_acc_add0000_xor_4_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(3),
      LI => rss_Madd_acc_add0000_lut_4_Q,
      O => rss_acc_add0000(4)
    );
  rss_Madd_acc_add0000_cy_4_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(3),
      DI => N1,
      S => rss_Madd_acc_add0000_lut_4_Q,
      O => rss_Madd_acc_add0000_cy(4)
    );
  rss_Madd_acc_add0000_xor_3_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(2),
      LI => rss_Madd_acc_add0000_cy_3_rt_442,
      O => rss_acc_add0000(3)
    );
  rss_Madd_acc_add0000_cy_3_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(2),
      DI => N0,
      S => rss_Madd_acc_add0000_cy_3_rt_442,
      O => rss_Madd_acc_add0000_cy(3)
    );
  rss_Madd_acc_add0000_xor_2_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(1),
      LI => rss_Madd_acc_add0000_lut_2_Q,
      O => rss_acc_add0000(2)
    );
  rss_Madd_acc_add0000_cy_2_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(1),
      DI => N1,
      S => rss_Madd_acc_add0000_lut_2_Q,
      O => rss_Madd_acc_add0000_cy(2)
    );
  rss_Madd_acc_add0000_xor_1_Q : XORCY
    port map (
      CI => rss_Madd_acc_add0000_cy(0),
      LI => rss_Madd_acc_add0000_lut_1_Q,
      O => rss_acc_add0000(1)
    );
  rss_Madd_acc_add0000_cy_1_Q : MUXCY
    port map (
      CI => rss_Madd_acc_add0000_cy(0),
      DI => N1,
      S => rss_Madd_acc_add0000_lut_1_Q,
      O => rss_Madd_acc_add0000_cy(1)
    );
  rss_Madd_acc_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => rss_Madd_acc_add0000_lut_0_Q,
      O => rss_acc_add0000(0)
    );
  rss_Madd_acc_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => rss_Madd_acc_add0000_lut_0_Q,
      O => rss_Madd_acc_add0000_cy(0)
    );
  rss_counter_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      CE => rss_state_FSM_FFd1_850,
      D => rss_Result_2_5,
      R => rss_counter_or0000,
      Q => rss_counter(2)
    );
  rss_counter_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      CE => rss_state_FSM_FFd1_850,
      D => rss_Result_1_5,
      R => rss_counter_or0000,
      Q => rss_counter(1)
    );
  rss_counter_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      CE => rss_state_FSM_FFd1_850,
      D => rss_Result_0_5,
      R => rss_counter_or0000,
      Q => rss_counter(0)
    );
  rss_cntData_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_12,
      R => rss_cntData_or0000,
      Q => rss_cntData(12)
    );
  rss_cntData_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_11,
      R => rss_cntData_or0000,
      Q => rss_cntData(11)
    );
  rss_cntData_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_10,
      R => rss_cntData_or0000,
      Q => rss_cntData(10)
    );
  rss_cntData_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_9,
      R => rss_cntData_or0000,
      Q => rss_cntData(9)
    );
  rss_cntData_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_8,
      R => rss_cntData_or0000,
      Q => rss_cntData(8)
    );
  rss_cntData_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_7,
      R => rss_cntData_or0000,
      Q => rss_cntData(7)
    );
  rss_cntData_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_6,
      R => rss_cntData_or0000,
      Q => rss_cntData(6)
    );
  rss_cntData_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_5,
      R => rss_cntData_or0000,
      Q => rss_cntData(5)
    );
  rss_cntData_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_4,
      R => rss_cntData_or0000,
      Q => rss_cntData(4)
    );
  rss_cntData_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_3,
      R => rss_cntData_or0000,
      Q => rss_cntData(3)
    );
  rss_cntData_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_2,
      R => rss_cntData_or0000,
      Q => rss_cntData(2)
    );
  rss_cntData_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_1,
      R => rss_cntData_or0000,
      Q => rss_cntData(1)
    );
  rss_cntData_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntData_not0003,
      D => rss_Mcount_cntData_eqn_0,
      R => rss_cntData_or0000,
      Q => rss_cntData(0)
    );
  rss_cntTest_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_12,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(12)
    );
  rss_cntTest_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_11,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(11)
    );
  rss_cntTest_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_10,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(10)
    );
  rss_cntTest_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_9,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(9)
    );
  rss_cntTest_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_8,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(8)
    );
  rss_cntTest_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_7,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(7)
    );
  rss_cntTest_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_6,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(6)
    );
  rss_cntTest_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_5,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(5)
    );
  rss_cntTest_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_4,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(4)
    );
  rss_cntTest_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_3,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(3)
    );
  rss_cntTest_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_2,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(2)
    );
  rss_cntTest_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_1,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(1)
    );
  rss_cntTest_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_cntTest_not0003_768,
      D => rss_Mcount_cntTest_eqn_0,
      R => rss_cntTest_or0000,
      Q => rss_cntTest(0)
    );
  rss_indTest_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indTest_not0001,
      D => rss_Result_4_2,
      R => rss_indTest_or0000_846,
      Q => rss_indTest(4)
    );
  rss_indTest_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indTest_not0001,
      D => rss_Result_3_2,
      R => rss_indTest_or0000_846,
      Q => rss_indTest(3)
    );
  rss_indTest_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indTest_not0001,
      D => rss_Result_2_2,
      R => rss_indTest_or0000_846,
      Q => rss_indTest(2)
    );
  rss_indTest_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indTest_not0001,
      D => rss_Result_1_2,
      R => rss_indTest_or0000_846,
      Q => rss_indTest(1)
    );
  rss_indTest_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indTest_not0001,
      D => rss_Result_0_2,
      R => rss_indTest_or0000_846,
      Q => rss_indTest(0)
    );
  rss_indData_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_7_1,
      R => rss_indData_or0000,
      Q => rss_indData(7)
    );
  rss_indData_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_6_1,
      R => rss_indData_or0000,
      Q => rss_indData(6)
    );
  rss_indData_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_5_1,
      R => rss_indData_or0000,
      Q => rss_indData(5)
    );
  rss_indData_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_4_1,
      R => rss_indData_or0000,
      Q => rss_indData(4)
    );
  rss_indData_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_3_1,
      R => rss_indData_or0000,
      Q => rss_indData(3)
    );
  rss_indData_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_2_1,
      R => rss_indData_or0000,
      Q => rss_indData(2)
    );
  rss_indData_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_1_1,
      R => rss_indData_or0000,
      Q => rss_indData(1)
    );
  rss_indData_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_indData_not0001,
      D => rss_Result_0_1,
      R => rss_indData_or0000,
      Q => rss_indData(0)
    );
  rss_count_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(11),
      R => rss_count_cmp_eq0000,
      Q => rss_count(11)
    );
  rss_count_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(10),
      R => rss_count_cmp_eq0000,
      Q => rss_count(10)
    );
  rss_count_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(9),
      R => rss_count_cmp_eq0000,
      Q => rss_count(9)
    );
  rss_count_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(8),
      R => rss_count_cmp_eq0000,
      Q => rss_count(8)
    );
  rss_count_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(7),
      R => rss_count_cmp_eq0000,
      Q => rss_count(7)
    );
  rss_count_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(6),
      R => rss_count_cmp_eq0000,
      Q => rss_count(6)
    );
  rss_count_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(5),
      R => rss_count_cmp_eq0000,
      Q => rss_count(5)
    );
  rss_count_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(4),
      R => rss_count_cmp_eq0000,
      Q => rss_count(4)
    );
  rss_count_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(3),
      R => rss_count_cmp_eq0000,
      Q => rss_count(3)
    );
  rss_count_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(2),
      R => rss_count_cmp_eq0000,
      Q => rss_count(2)
    );
  rss_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(1),
      R => rss_count_cmp_eq0000,
      Q => rss_count(1)
    );
  rss_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Result(0),
      R => rss_count_cmp_eq0000,
      Q => rss_count(0)
    );
  rss_tmp_txd : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => rss_acc(16),
      D => rss_tmp_txd_mux0002,
      S => rss_state_FSM_Scst_FSM_inv,
      Q => rss_tmp_txd_863
    );
  rss_mclk : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_count_cmp_eq0000,
      D => rss_mclk_not0001,
      Q => rss_mclk1
    );
  rss_buff_in_7 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(7),
      Q => rss_buff_in(7)
    );
  rss_buff_in_6 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(6),
      Q => rss_buff_in(6)
    );
  rss_buff_in_5 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(5),
      Q => rss_buff_in(5)
    );
  rss_buff_in_4 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(4),
      Q => rss_buff_in(4)
    );
  rss_buff_in_3 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(3),
      Q => rss_buff_in(3)
    );
  rss_buff_in_2 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(2),
      Q => rss_buff_in(2)
    );
  rss_buff_in_1 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(1),
      Q => rss_buff_in(1)
    );
  rss_buff_in_0 : FDE
    port map (
      C => clkk_265,
      CE => rss_buff_in_not0001_733,
      D => rss_buff_in_mux0000(0),
      Q => rss_buff_in(0)
    );
  rss_flag : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => rss_flag_not0001,
      D => rss_flag_mux0002,
      R => rss_state_FSM_Scst_FSM_inv,
      Q => rss_flag_794
    );
  aaddcc_clkdiv_count_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => aaddcc_Result(1),
      R => aaddcc_clkdiv_count_cmp_eq0000,
      Q => aaddcc_clkdiv_count(1)
    );
  aaddcc_clkdiv_count_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => aaddcc_Result(0),
      R => aaddcc_clkdiv_count_cmp_eq0000,
      Q => aaddcc_clkdiv_count(0)
    );
  aaddcc_clkdiv_ct : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      CE => aaddcc_clkdiv_count_cmp_eq0000,
      D => aaddcc_clkdiv_ct_not0001,
      Q => aaddcc_clkdiv_ct_228
    );
  aaddcc_sample_7 : FDE_1
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0002_inv,
      D => aaddcc_cosample(7),
      Q => aaddcc_sample(7)
    );
  aaddcc_cosample_7 : FDE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_cs_not0001,
      D => aaddcc_copysamp(11),
      Q => aaddcc_cosample(7)
    );
  aaddcc_copysamp_11 : FDE_1
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_copysamp_11_and0000,
      D => sdata_IBUF_1382,
      Q => aaddcc_copysamp(11)
    );
  aaddcc_countstate_4 : FDRE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0003,
      D => aaddcc_countstate_mux0000(4),
      R => aaddcc_countstate_not0002_inv,
      Q => aaddcc_countstate(4)
    );
  aaddcc_countstate_3 : FDRE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0003,
      D => aaddcc_countstate_mux0000(3),
      R => aaddcc_countstate_not0002_inv,
      Q => aaddcc_countstate(3)
    );
  aaddcc_countstate_2 : FDRE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0003,
      D => aaddcc_countstate_mux0000(2),
      R => aaddcc_countstate_not0002_inv,
      Q => aaddcc_countstate(2)
    );
  aaddcc_countstate_1 : FDRE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0003,
      D => aaddcc_countstate_mux0000(1),
      R => aaddcc_countstate_not0002_inv,
      Q => aaddcc_countstate(1)
    );
  aaddcc_countstate_0 : FDSE_1
    generic map(
      INIT => '0'
    )
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_countstate_not0003,
      D => aaddcc_countstate_mux0000(0),
      S => aaddcc_countstate_not0002_inv,
      Q => aaddcc_countstate(0)
    );
  aaddcc_cs : FDRE_1
    port map (
      C => aaddcc_clkdiv_ct_228,
      CE => aaddcc_cs_not0001,
      D => N1,
      R => aaddcc_countstate_not0002_inv,
      Q => aaddcc_cs_250
    );
  rss_buff_in_mux0000_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => data(0),
      I1 => test_mode_IBUF_1392,
      O => rss_buff_in_mux0000(0)
    );
  state_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => tx_start_IBUF_1394,
      I1 => receptionComplete(0),
      O => state_not0001
    );
  rss_Result_1_51 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rss_counter(1),
      I1 => rss_counter(0),
      O => rss_Result_1_5
    );
  aaddcc_clkdiv_Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => aaddcc_clkdiv_count(1),
      I1 => aaddcc_clkdiv_count(0),
      O => aaddcc_Result(1)
    );
  Mcount_sampleCount_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      O => Result(1)
    );
  Mcount_count_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => count(1),
      I1 => count(0),
      O => Result_1_3
    );
  Mcount_clkCount_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => clkCount(1),
      I1 => clkCount(0),
      O => Result_1_1
    );
  Mcount_bit_number_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => bit_number(1),
      I1 => bit_number(0),
      O => Result_1_2
    );
  rss_Result_2_51 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => rss_counter(2),
      I1 => rss_counter(1),
      I2 => rss_counter(0),
      O => rss_Result_2_5
    );
  rss_Mcount_indTest_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => rss_indTest(2),
      I1 => rss_indTest(1),
      I2 => rss_indTest(0),
      O => rss_Result_2_2
    );
  Mcount_count_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => count(2),
      I1 => count(1),
      I2 => count(0),
      O => Result_2_3
    );
  Mcount_clkCount_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => clkCount(2),
      I1 => clkCount(1),
      I2 => clkCount(0),
      O => Result_2_1
    );
  rss_Result_3_21 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(2),
      I2 => rss_indTest(1),
      I3 => rss_indTest(0),
      O => rss_Result_3_2
    );
  aaddcc_countstate_mux0000_0_1 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => aaddcc_countstate(0),
      I1 => aaddcc_countstate(3),
      I2 => aaddcc_countstate(2),
      I3 => aaddcc_countstate(4),
      O => aaddcc_countstate_mux0000(0)
    );
  Mcount_count_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      O => Result_3_3
    );
  Mcount_clkCount_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => clkCount(3),
      I1 => clkCount(1),
      I2 => clkCount(0),
      I3 => clkCount(2),
      O => Result_3_1
    );
  aaddcc_clkdiv_count_cmp_eq00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => aaddcc_clkdiv_count(0),
      I1 => aaddcc_clkdiv_count(1),
      O => aaddcc_clkdiv_count_cmp_eq0000
    );
  aaddcc_copysamp_5_and000031 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => aaddcc_countstate(0),
      I1 => aaddcc_countstate(1),
      O => aaddcc_copysamp_5_and0000_bdd2
    );
  Result_4_32 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => count(4),
      I1 => Result_4_3_bdd0,
      O => Result_4_3
    );
  Result_4_12 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => clkCount(4),
      I1 => Result_4_1_bdd0,
      O => Result_4_1
    );
  Result_5_21 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => count(5),
      I1 => Result_4_3_bdd0,
      I2 => count(4),
      O => Result_5_2
    );
  Result_5_11 : LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => clkCount(5),
      I1 => Result_4_1_bdd0,
      I2 => clkCount(4),
      O => Result_5_1
    );
  Result_4_311 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => count(1),
      I1 => count(0),
      I2 => count(3),
      I3 => count(2),
      O => Result_4_3_bdd0
    );
  Result_4_111 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => clkCount(1),
      I1 => clkCount(0),
      I2 => clkCount(3),
      I3 => clkCount(2),
      O => Result_4_1_bdd0
    );
  aaddcc_countstate_mux0000_4_11 : LUT4
    generic map(
      INIT => X"0580"
    )
    port map (
      I0 => aaddcc_countstate(2),
      I1 => aaddcc_copysamp_5_and0000_bdd2,
      I2 => aaddcc_countstate(3),
      I3 => aaddcc_countstate(4),
      O => aaddcc_countstate_mux0000(4)
    );
  aaddcc_countstate_mux0000_3_31 : LUT4
    generic map(
      INIT => X"1444"
    )
    port map (
      I0 => aaddcc_countstate(4),
      I1 => aaddcc_countstate(3),
      I2 => aaddcc_countstate(2),
      I3 => aaddcc_copysamp_5_and0000_bdd2,
      O => aaddcc_countstate_mux0000(3)
    );
  Result_6_21 : LUT4
    generic map(
      INIT => X"C6CC"
    )
    port map (
      I0 => count(4),
      I1 => count(6),
      I2 => Result_4_3_bdd0,
      I3 => count(5),
      O => Result_6_2
    );
  Result_6_11 : LUT4
    generic map(
      INIT => X"C6CC"
    )
    port map (
      I0 => clkCount(4),
      I1 => clkCount(6),
      I2 => Result_4_1_bdd0,
      I3 => clkCount(5),
      O => Result_6_1
    );
  Mcount_sampleCount_xor_4_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(2),
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sampleCount(3),
      O => Result(4)
    );
  Mcount_bit_number_xor_4_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => bit_number(4),
      I1 => bit_number(2),
      I2 => Mcount_bit_number_cy(1),
      I3 => bit_number(3),
      O => Result_4_2
    );
  aaddcc_countstate_mux0000_2_21 : LUT4
    generic map(
      INIT => X"0466"
    )
    port map (
      I0 => aaddcc_countstate(2),
      I1 => aaddcc_copysamp_5_and0000_bdd2,
      I2 => aaddcc_countstate(3),
      I3 => aaddcc_countstate(4),
      O => aaddcc_countstate_mux0000(2)
    );
  outputData_31_mux0000_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => count(3),
      I1 => count(1),
      I2 => count(0),
      I3 => count(2),
      O => N10
    );
  outputData_31_mux0000 : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => count(4),
      I1 => count(6),
      I2 => count(5),
      I3 => N10,
      O => outputData_31_mux0000_410
    );
  data_mux0003_31_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(31),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(23),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_31_4_312
    );
  data_mux0003_31_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_FSM_FFd4_1389,
      I1 => state_FSM_FFd3_1388,
      O => data_mux0003_26_12
    );
  data_mux0003_31_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(7),
      I2 => data_mux0003_26_12,
      I3 => outputData(15),
      O => data_mux0003_31_22_311
    );
  data_mux0003_31_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_31_4_312,
      I1 => data_mux0003_31_22_311,
      O => data_mux0003(31)
    );
  data_mux0003_30_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(30),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(22),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_30_4_309
    );
  data_mux0003_30_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(6),
      I2 => data_mux0003_26_12,
      I3 => outputData(14),
      O => data_mux0003_30_22_308
    );
  data_mux0003_30_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_30_4_309,
      I1 => data_mux0003_30_22_308,
      O => data_mux0003(30)
    );
  data_mux0003_29_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(29),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(21),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_29_4_306
    );
  data_mux0003_29_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(5),
      I2 => data_mux0003_26_12,
      I3 => outputData(13),
      O => data_mux0003_29_22_305
    );
  data_mux0003_29_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_29_4_306,
      I1 => data_mux0003_29_22_305,
      O => data_mux0003(29)
    );
  data_mux0003_28_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(28),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(20),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_28_4_303
    );
  data_mux0003_28_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(4),
      I2 => data_mux0003_26_12,
      I3 => outputData(12),
      O => data_mux0003_28_22_302
    );
  data_mux0003_28_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_28_4_303,
      I1 => data_mux0003_28_22_302,
      O => data_mux0003(28)
    );
  data_mux0003_27_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(27),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(19),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_27_4_300
    );
  data_mux0003_27_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(3),
      I2 => data_mux0003_26_12,
      I3 => outputData(11),
      O => data_mux0003_27_22_299
    );
  data_mux0003_27_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_27_4_300,
      I1 => data_mux0003_27_22_299,
      O => data_mux0003(27)
    );
  data_mux0003_26_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(26),
      I1 => state_FSM_FFd4_1389,
      I2 => outputData(18),
      I3 => state_FSM_FFd3_1388,
      O => data_mux0003_26_4_297
    );
  data_mux0003_26_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => outputData(2),
      I2 => data_mux0003_26_12,
      I3 => outputData(10),
      O => data_mux0003_26_22_296
    );
  data_mux0003_26_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_26_4_297,
      I1 => data_mux0003_26_22_296,
      O => data_mux0003(26)
    );
  data_mux0003_25_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(9),
      I1 => state_FSM_FFd2_1387,
      I2 => outputData(25),
      I3 => state_FSM_FFd4_1389,
      O => data_mux0003_25_4_293
    );
  data_mux0003_25_12 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => state_FSM_FFd2_1387,
      I1 => state_FSM_FFd4_1389,
      O => data_mux0003_24_12
    );
  data_mux0003_25_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd3_1388,
      I1 => outputData(1),
      I2 => data_mux0003_24_12,
      I3 => outputData(17),
      O => data_mux0003_25_22_292
    );
  data_mux0003_25_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_25_4_293,
      I1 => data_mux0003_25_22_292,
      O => data_mux0003(25)
    );
  data_mux0003_24_4 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => outputData(8),
      I1 => state_FSM_FFd2_1387,
      I2 => outputData(24),
      I3 => state_FSM_FFd4_1389,
      O => data_mux0003_24_4_290
    );
  data_mux0003_24_22 : LUT4
    generic map(
      INIT => X"EA40"
    )
    port map (
      I0 => state_FSM_FFd3_1388,
      I1 => outputData(0),
      I2 => data_mux0003_24_12,
      I3 => outputData(16),
      O => data_mux0003_24_22_289
    );
  data_mux0003_24_25 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => data_mux0003_24_4_290,
      I1 => data_mux0003_24_22_289,
      O => data_mux0003(24)
    );
  dclk_cmp_eq0000_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => clkCount(0),
      I1 => clkCount(1),
      I2 => clkCount(2),
      I3 => clkCount(6),
      O => N121
    );
  dclk_cmp_eq0000 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => clkCount(4),
      I1 => N121,
      I2 => clkCount(3),
      I3 => clkCount(5),
      O => dclk_cmp_eq0000_315
    );
  outputData_31_cmp_eq000021 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bit_number(0),
      I1 => bit_number(1),
      O => Mcount_bit_number_cy(1)
    );
  outputData_31_cmp_eq000011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      O => N20
    );
  outputData_20_and000011 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      O => N21
    );
  outputData_10_and000021 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      O => N22
    );
  outputData_0_and000021 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      O => N23
    );
  count_not000111 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => firstSample(0),
      I1 => receptionComplete(0),
      O => N14
    );
  sample2_66_and000011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(1),
      I1 => sampleCount(0),
      I2 => sampleCount(6),
      O => N19
    );
  sample1_10_and000121 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sampleCount(1),
      I1 => sampleCount(0),
      I2 => sampleCount(6),
      O => N18
    );
  sample2_48_and000011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(5),
      I2 => sampleCount(4),
      I3 => sampleCount(3),
      O => N54
    );
  sample1_4_and000111 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(4),
      I2 => sampleCount(5),
      I3 => sampleCount(3),
      O => N35
    );
  sample1_30_and000111 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(5),
      I2 => sampleCount(2),
      I3 => sampleCount(3),
      O => N39
    );
  sample1_24_and000111 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(3),
      I2 => sampleCount(4),
      I3 => sampleCount(5),
      O => N38
    );
  sample1_20_and000121 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(5),
      I1 => sampleCount(4),
      I2 => sampleCount(2),
      I3 => sampleCount(3),
      O => N37
    );
  sample1_16_and000121 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(2),
      I2 => sampleCount(5),
      I3 => sampleCount(3),
      O => N33
    );
  sample1_12_and000121 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(3),
      I2 => sampleCount(2),
      I3 => sampleCount(5),
      O => N36
    );
  sample1_10_and000131 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(2),
      I2 => sampleCount(4),
      I3 => sampleCount(5),
      O => N31
    );
  sample1_0_and000241 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(5),
      I2 => sampleCount(4),
      I3 => sampleCount(3),
      O => N34
    );
  aaddcc_cs_not000121 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => aaddcc_countstate(2),
      I1 => aaddcc_countstate(4),
      I2 => aaddcc_copysamp_4_and0000_bdd2,
      I3 => aaddcc_countstate(3),
      O => aaddcc_cs_not0001
    );
  aaddcc_countstate_not000311 : LUT4
    generic map(
      INIT => X"15FF"
    )
    port map (
      I0 => aaddcc_countstate(3),
      I1 => aaddcc_countstate(2),
      I2 => aaddcc_copysamp_4_and0000_bdd2,
      I3 => aaddcc_countstate(4),
      O => aaddcc_countstate_not0003
    );
  rss_buff_in_mux0000_2_SW0 : LUT4
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => rss_indTest(4),
      I1 => rss_indTest(2),
      I2 => rss_indTest(0),
      I3 => rss_indTest(3),
      O => N161
    );
  rss_buff_in_mux0000_2_Q : LUT4
    generic map(
      INIT => X"444E"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => data(2),
      I2 => rss_indTest(1),
      I3 => N161,
      O => rss_buff_in_mux0000(2)
    );
  rss_tmp_txd_mux00024 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rss_state_FSM_FFd8_860,
      I1 => rss_buff_in(1),
      I2 => rss_state_FSM_FFd9_861,
      I3 => rss_buff_in(0),
      O => rss_tmp_txd_mux00024_868
    );
  rss_tmp_txd_mux00029 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rss_state_FSM_FFd2_854,
      I1 => rss_buff_in(7),
      I2 => rss_state_FSM_FFd3_855,
      I3 => rss_buff_in(6),
      O => rss_tmp_txd_mux00029_872
    );
  rss_tmp_txd_mux000221 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rss_state_FSM_FFd4_856,
      I1 => rss_buff_in(5),
      I2 => rss_state_FSM_FFd5_857,
      I3 => rss_buff_in(4),
      O => rss_tmp_txd_mux000221_865
    );
  rss_tmp_txd_mux000226 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => rss_state_FSM_FFd6_858,
      I1 => rss_buff_in(3),
      I2 => rss_state_FSM_FFd7_859,
      I3 => rss_buff_in(2),
      O => rss_tmp_txd_mux000226_866
    );
  rss_tmp_txd_mux000236 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rss_tmp_txd_mux00024_868,
      I1 => rss_tmp_txd_mux00029_872,
      I2 => rss_tmp_txd_mux000221_865,
      I3 => rss_tmp_txd_mux000226_866,
      O => rss_tmp_txd_mux000236_867
    );
  rss_tmp_txd_mux000277 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_state_FSM_FFd3_855,
      I1 => rss_state_FSM_FFd4_856,
      I2 => rss_state_FSM_FFd5_857,
      I3 => rss_state_FSM_FFd6_858,
      O => rss_tmp_txd_mux000277_871
    );
  rss_counter_or00002 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => tx_start_IBUF_1394,
      I1 => rss_state_FSM_FFd10_In,
      O => rss_counter_or0000
    );
  aaddcc_copysamp_4_and000031 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => aaddcc_countstate(0),
      I1 => aaddcc_countstate(1),
      O => aaddcc_copysamp_4_and0000_bdd2
    );
  rss_counter_or000011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => rss_counter(0),
      I1 => rss_counter(1),
      I2 => rss_counter(2),
      I3 => rss_state_FSM_FFd1_850,
      O => rss_state_FSM_FFd10_In
    );
  aaddcc_countstate_not0002_inv1 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => aaddcc_countstate(4),
      I1 => aaddcc_countstate(2),
      I2 => aaddcc_copysamp_4_and0000_bdd2,
      I3 => aaddcc_countstate(3),
      O => aaddcc_countstate_not0002_inv
    );
  rss_indTest_or0000_SW0 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => rss_indTest(1),
      I1 => rss_indTest(3),
      I2 => rss_indTest(2),
      I3 => rss_indTest(0),
      O => N181
    );
  rss_indTest_or0000 : LUT4
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => tx_start_IBUF_1394,
      I1 => rss_indTest(4),
      I2 => N181,
      I3 => test_mode_IBUF_1392,
      O => rss_indTest_or0000_846
    );
  rss_count_cmp_eq00008 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => rss_count(9),
      I1 => rss_count(10),
      I2 => rss_count(11),
      I3 => rss_count(8),
      O => rss_count_cmp_eq00008_789
    );
  rss_count_cmp_eq000017 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => rss_count(7),
      I1 => rss_count(4),
      I2 => rss_count(5),
      I3 => rss_count(6),
      O => rss_count_cmp_eq000017_787
    );
  rss_count_cmp_eq000029 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => rss_count(2),
      I1 => rss_count(3),
      I2 => rss_count(1),
      I3 => rss_count(0),
      O => rss_count_cmp_eq000029_788
    );
  rss_count_cmp_eq000041 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => rss_count_cmp_eq00008_789,
      I1 => rss_count_cmp_eq000017_787,
      I2 => rss_count_cmp_eq000029_788,
      O => rss_count_cmp_eq0000
    );
  rss_Mcount_cntTest_eqn_01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rss_Result_0_3,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_0
    );
  rss_Mcount_cntData_eqn_01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rss_Result_0_4,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_0
    );
  rss_Mcount_indTest_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => rss_indTest(1),
      I1 => rss_indTest(0),
      O => rss_Result_1_2
    );
  Mcount_sampleCount_xor_5_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => sampleCount(5),
      I1 => N60,
      O => Result(5)
    );
  rss_flag_mux00021 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => rss_cntData_not0002_inv,
      I2 => rss_cntTest_not0002_inv,
      O => rss_flag_mux0002
    );
  Mcount_sampleCount_xor_6_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sampleCount(6),
      I1 => Mcount_sampleCount_cy_4_Q,
      I2 => sampleCount(5),
      O => Result(6)
    );
  sample1_13_and000111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      O => N16
    );
  sample1_0_and000221 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      O => N17
    );
  sample2_42_and000011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => N68,
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      O => N45
    );
  sample2_38_and000011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(1),
      I1 => sampleCount(0),
      I2 => N67,
      O => N24
    );
  sample2_62_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => sampleCount(3),
      I2 => sampleCount(4),
      I3 => N24,
      O => sample2_62_not0001
    );
  sample2_54_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N24,
      I1 => sampleCount(3),
      I2 => N14,
      I3 => sampleCount(4),
      O => sample2_54_not0001
    );
  sample2_46_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(4),
      I2 => N14,
      I3 => N24,
      O => sample2_46_not0001
    );
  sample2_38_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(3),
      I1 => N24,
      I2 => N14,
      I3 => sampleCount(4),
      O => sample2_38_not0001
    );
  rss_Mcount_cntTest_eqn_13 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_1_3,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_1
    );
  rss_Mcount_cntData_eqn_13 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_1_4,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_1
    );
  rss_Mcount_cntTest_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_2_3,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_2
    );
  rss_Mcount_cntData_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_2_4,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_2
    );
  rss_Mcount_cntTest_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_3_3,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_3
    );
  rss_Mcount_cntData_eqn_31 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_3_4,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_3
    );
  rss_Mcount_cntTest_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_4_3,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_4
    );
  rss_Mcount_cntData_eqn_41 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_4_4,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_4
    );
  sample1_99_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => N28,
      I1 => receptionComplete(0),
      I2 => N32,
      O => sample1_99_not0001
    );
  rss_Mcount_cntTest_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_5_2,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_5
    );
  rss_Mcount_cntData_eqn_51 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_5_3,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_5
    );
  rss_Mcount_cntTest_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_6_2,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_6
    );
  rss_Mcount_cntData_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_6_3,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_6
    );
  sample1_54_not0001 : LUT4
    generic map(
      INIT => X"02FF"
    )
    port map (
      I0 => N12,
      I1 => N201,
      I2 => sampleCount(3),
      I3 => sample2_99_or0000,
      O => sample1_54_not0001_1023
    );
  sample1_38_not0001 : LUT4
    generic map(
      INIT => X"02FF"
    )
    port map (
      I0 => N12,
      I1 => N221,
      I2 => sampleCount(3),
      I3 => sample2_99_or0000,
      O => sample1_38_not0001_969
    );
  rss_cntTest_not0003 : LUT4
    generic map(
      INIT => X"FFDF"
    )
    port map (
      I0 => rss_indTest(4),
      I1 => rss_indTest(3),
      I2 => rss_indTest(2),
      I3 => N241,
      O => rss_cntTest_not0003_768
    );
  sample1_62_not0001 : LUT4
    generic map(
      INIT => X"0F8F"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(3),
      I2 => sample2_99_or0000,
      I3 => N261,
      O => sample1_62_not0001_1050
    );
  sample1_46_not0001 : LUT4
    generic map(
      INIT => X"0F4F"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(3),
      I2 => sample2_99_or0000,
      I3 => N69,
      O => sample1_46_not0001_996
    );
  rss_flag_cmp_eq000125 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rss_flag_cmp_eq000111_796,
      I1 => N71,
      O => rss_flag_cmp_eq0001
    );
  rss_Mcount_cntTest_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_7_2,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_7
    );
  rss_Mcount_cntData_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_7_3,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_7
    );
  rss_Mcount_cntTest_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_8_1,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_8
    );
  rss_Mcount_cntData_eqn_81 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_8_2,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_8
    );
  rss_Mcount_cntTest_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_9_1,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_9
    );
  rss_Mcount_cntData_eqn_91 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_9_2,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_9
    );
  rss_Mcount_cntTest_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_10_1,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_10
    );
  rss_Mcount_cntData_eqn_101 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_10_2,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_10
    );
  rss_Mcount_cntTest_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_11_1,
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_11
    );
  rss_Mcount_cntData_eqn_111 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_11_2,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_11
    );
  rss_Mcount_cntTest_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result(12),
      I1 => rss_cntTest_not0002_inv,
      O => rss_Mcount_cntTest_eqn_12
    );
  rss_Mcount_cntData_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_Result_12_1,
      I1 => rss_cntData_not0002_inv,
      O => rss_Mcount_cntData_eqn_12
    );
  sample1_9_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_9_not0001
    );
  sample1_98_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_98_not0001
    );
  sample1_97_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_97_not0001
    );
  sample1_96_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_96_not0001
    );
  sample1_95_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_95_not0001
    );
  sample1_94_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_94_not0001
    );
  sample1_93_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_93_not0001
    );
  sample1_92_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_92_not0001
    );
  sample1_91_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_91_not0001
    );
  sample1_90_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_90_not0001
    );
  sample1_8_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_8_not0001
    );
  sample1_89_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_89_not0001
    );
  sample1_88_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_88_not0001
    );
  sample1_87_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_87_not0001
    );
  sample1_86_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_86_not0001
    );
  sample1_85_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_85_not0001
    );
  sample1_84_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_84_not0001
    );
  sample1_83_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_83_not0001
    );
  sample1_82_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_82_not0001
    );
  sample1_81_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_81_not0001
    );
  sample1_80_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_80_not0001
    );
  sample1_7_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_7_not0001
    );
  sample1_79_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_79_not0001
    );
  sample1_78_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_78_not0001
    );
  sample1_77_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_77_not0001
    );
  sample1_76_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_76_not0001
    );
  sample1_75_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_75_not0001
    );
  sample1_74_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_74_not0001
    );
  sample1_73_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_73_not0001
    );
  sample1_72_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_72_not0001
    );
  sample1_71_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_71_not0001
    );
  sample1_70_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_70_not0001
    );
  sample1_6_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_6_not0001
    );
  sample1_69_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_69_not0001
    );
  sample1_68_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_68_not0001
    );
  sample1_67_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N28,
      I3 => sample2_99_or0000,
      O => sample1_67_not0001
    );
  sample1_66_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N19,
      I3 => sample2_99_or0000,
      O => sample1_66_not0001
    );
  sample1_65_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N29,
      I3 => sample2_99_or0000,
      O => sample1_65_not0001
    );
  sample1_64_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N30,
      I3 => sample2_99_or0000,
      O => sample1_64_not0001
    );
  sample1_63_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N63,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_63_not0001
    );
  sample1_61_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N41,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_61_not0001
    );
  sample1_60_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N41,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_60_not0001
    );
  sample1_5_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_5_not0001
    );
  sample1_59_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N61,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_59_not0001
    );
  sample1_58_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N45,
      I1 => N12,
      I2 => sampleCount(4),
      I3 => sample2_99_or0000,
      O => sample1_58_not0001
    );
  sample1_57_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N57,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_57_not0001
    );
  sample1_56_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N57,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_56_not0001
    );
  sample1_55_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N64,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_55_not0001
    );
  sample1_53_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N43,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_53_not0001
    );
  sample1_52_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N43,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_52_not0001
    );
  sample1_51_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N54,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_51_not0001
    );
  sample1_50_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N54,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_50_not0001
    );
  sample1_4_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N35,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_4_not0001
    );
  sample1_49_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N54,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_49_not0001
    );
  sample1_48_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N54,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_48_not0001
    );
  sample1_47_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N65,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_47_not0001
    );
  sample1_45_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N42,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_45_not0001
    );
  sample1_44_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N42,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_44_not0001
    );
  sample1_43_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N62,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_43_not0001
    );
  sample1_42_not00011 : LUT4
    generic map(
      INIT => X"08FF"
    )
    port map (
      I0 => N59,
      I1 => N45,
      I2 => sampleCount(4),
      I3 => sample2_99_or0000,
      O => sample1_42_not0001
    );
  sample1_41_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N58,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_41_not0001
    );
  sample1_40_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N58,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_40_not0001
    );
  sample1_3_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_3_not0001
    );
  sample1_39_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N66,
      I1 => N12,
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sample2_99_or0000,
      O => sample1_39_not0001
    );
  sample1_37_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N44,
      I1 => N12,
      I2 => N16,
      I3 => sample2_99_or0000,
      O => sample1_37_not0001
    );
  sample1_36_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N44,
      I1 => N12,
      I2 => N17,
      I3 => sample2_99_or0000,
      O => sample1_36_not0001
    );
  sample1_35_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_35_not0001
    );
  sample1_34_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_34_not0001
    );
  sample1_33_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_33_not0001
    );
  sample1_32_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N32,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_32_not0001
    );
  sample1_31_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_31_not0001
    );
  sample1_30_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_30_not0001
    );
  sample1_2_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_2_not0001
    );
  sample1_29_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_29_not0001
    );
  sample1_28_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N39,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_28_not0001
    );
  sample1_27_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_27_not0001
    );
  sample1_26_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_26_not0001
    );
  sample1_25_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_25_not0001
    );
  sample1_24_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N38,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_24_not0001
    );
  sample1_23_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_23_not0001
    );
  sample1_22_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_22_not0001
    );
  sample1_21_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_21_not0001
    );
  sample1_20_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N37,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_20_not0001
    );
  sample1_1_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_1_not0001
    );
  sample1_19_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_19_not0001
    );
  sample1_18_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_18_not0001
    );
  sample1_17_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_17_not0001
    );
  sample1_16_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N33,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_16_not0001
    );
  sample1_15_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_15_not0001
    );
  sample1_14_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_14_not0001
    );
  sample1_13_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N26,
      I3 => sample2_99_or0000,
      O => sample1_13_not0001
    );
  sample1_12_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N36,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_12_not0001
    );
  sample1_11_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N25,
      I3 => sample2_99_or0000,
      O => sample1_11_not0001
    );
  sample1_10_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N31,
      I1 => N12,
      I2 => N18,
      I3 => sample2_99_or0000,
      O => sample1_10_not0001
    );
  sample1_0_not00011 : LUT4
    generic map(
      INIT => X"80FF"
    )
    port map (
      I0 => N34,
      I1 => N12,
      I2 => N27,
      I3 => sample2_99_or0000,
      O => sample1_0_not0001
    );
  outputData_7_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(4),
      I1 => Mcount_bit_number_cy(1),
      I2 => N21,
      I3 => sample2_99_or0000,
      O => outputData_7_and0000
    );
  outputData_3_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(4),
      I1 => Mcount_bit_number_cy(1),
      I2 => N23,
      I3 => sample2_99_or0000,
      O => outputData_3_and0000
    );
  outputData_31_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => bit_number(4),
      I1 => sample2_99_or0000,
      I2 => N20,
      I3 => Mcount_bit_number_cy(1),
      O => outputData_31_and0000
    );
  outputData_27_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => bit_number(4),
      I1 => sample2_99_or0000,
      I2 => N22,
      I3 => Mcount_bit_number_cy(1),
      O => outputData_27_and0000
    );
  outputData_23_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => bit_number(4),
      I1 => sample2_99_or0000,
      I2 => N21,
      I3 => Mcount_bit_number_cy(1),
      O => outputData_23_and0000
    );
  outputData_19_and00001 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => bit_number(4),
      I1 => sample2_99_or0000,
      I2 => N23,
      I3 => Mcount_bit_number_cy(1),
      O => outputData_19_and0000
    );
  outputData_15_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(4),
      I1 => Mcount_bit_number_cy(1),
      I2 => N20,
      I3 => sample2_99_or0000,
      O => outputData_15_and0000
    );
  outputData_11_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(4),
      I1 => Mcount_bit_number_cy(1),
      I2 => N22,
      I3 => sample2_99_or0000,
      O => outputData_11_and0000
    );
  sample2_99_or00001 : LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => receptionComplete(0),
      I1 => firstSample(0),
      I2 => N72,
      I3 => N28,
      O => sample2_99_or0000
    );
  rss_flag_cmp_eq000312 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_cntData(1),
      I1 => rss_cntData(12),
      I2 => rss_cntData(2),
      I3 => rss_cntData(3),
      O => rss_flag_cmp_eq000312_800
    );
  rss_flag_cmp_eq000325 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_cntData(4),
      I1 => rss_cntData(5),
      I2 => rss_cntData(6),
      I3 => rss_cntData(7),
      O => rss_flag_cmp_eq000325_801
    );
  rss_flag_cmp_eq000212 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_cntTest(1),
      I1 => rss_cntTest(12),
      I2 => rss_cntTest(2),
      I3 => rss_cntTest(3),
      O => rss_flag_cmp_eq000212_798
    );
  rss_flag_cmp_eq000225 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_cntTest(4),
      I1 => rss_cntTest(5),
      I2 => rss_cntTest(6),
      I3 => rss_cntTest(7),
      O => rss_flag_cmp_eq000225_799
    );
  rss_cntTest_or0000117 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => rss_indTest_add0000(6),
      I1 => rss_indTest_add0000(7),
      I2 => rss_indTest_add0000(8),
      I3 => rss_indTest_add0000(9),
      O => rss_cntTest_or0000117_770
    );
  rss_cntTest_or0000132 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rss_indTest_add0000(3),
      I1 => rss_indTest_add0000(2),
      I2 => rss_indTest_add0000(11),
      O => rss_cntTest_or0000132_771
    );
  rss_cntTest_or0000148 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_indTest_add0000(0),
      I1 => rss_indTest_add0000(1),
      I2 => N83,
      I3 => rss_indTest_add0000(10),
      O => rss_cntTest_or0000148_772
    );
  rss_cntTest_or0000161 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => rss_cntTest_or0000117_770,
      I1 => rss_cntTest_or0000148_772,
      I2 => rss_cntTest_or0000132_771,
      I3 => N80,
      O => rss_indTest_not0001
    );
  rss_cntData_or0000117 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => rss_indData_add0000(6),
      I1 => rss_indData_add0000(7),
      I2 => rss_indData_add0000(8),
      I3 => rss_indData_add0000(9),
      O => rss_cntData_or0000117_750
    );
  rss_cntData_or0000132 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rss_indData_add0000(3),
      I1 => rss_indData_add0000(2),
      I2 => rss_indData_add0000(11),
      O => rss_cntData_or0000132_751
    );
  rss_cntData_or0000148 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_indData_add0000(0),
      I1 => rss_indData_add0000(1),
      I2 => N82,
      I3 => rss_indData_add0000(10),
      O => rss_cntData_or0000148_752
    );
  rss_cntData_or0000161 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => rss_cntData_or0000117_750,
      I1 => rss_cntData_or0000148_752,
      I2 => rss_cntData_or0000132_751,
      I3 => N81,
      O => rss_indData_not0001
    );
  test_mode_IBUF : IBUF
    port map (
      I => test_mode,
      O => test_mode_IBUF_1392
    );
  tx_start_IBUF : IBUF
    port map (
      I => tx_start,
      O => tx_start_IBUF_1394
    );
  sdata_IBUF : IBUF
    port map (
      I => sdata,
      O => sdata_IBUF_1382
    );
  selecto_1_IBUF : IBUF
    port map (
      I => selecto(1),
      O => selecto_1_IBUF_1386
    );
  selecto_0_IBUF : IBUF
    port map (
      I => selecto(0),
      O => selecto_0_IBUF_1385
    );
  cs_OBUF : OBUF
    port map (
      I => aaddcc_cs_250,
      O => cs
    );
  txd_OBUF : OBUF
    port map (
      I => rss_tmp_txd_863,
      O => txd
    );
  sclk200Khz_OBUF : OBUF
    port map (
      I => aaddcc_clkdiv_ct_228,
      O => sclk200Khz
    );
  leds_7_OBUF : OBUF
    port map (
      I => leds_7_334,
      O => leds(7)
    );
  leds_6_OBUF : OBUF
    port map (
      I => leds_6_333,
      O => leds(6)
    );
  leds_5_OBUF : OBUF
    port map (
      I => leds_5_332,
      O => leds(5)
    );
  leds_4_OBUF : OBUF
    port map (
      I => leds_4_331,
      O => leds(4)
    );
  leds_3_OBUF : OBUF
    port map (
      I => leds_3_330,
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => leds_2_329,
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => leds_1_328,
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => leds_0_327,
      O => leds(0)
    );
  clkk : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clock_BUFGP_268,
      D => N1,
      R => clkk1,
      Q => clkk1
    );
  rss_acc_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_Madd_acc_add0000_cy(15),
      R => rss_flag_794,
      Q => rss_acc(16)
    );
  rss_acc_15 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(15),
      Q => rss_acc(15)
    );
  rss_acc_14 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(14),
      Q => rss_acc(14)
    );
  rss_acc_13 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(13),
      Q => rss_acc(13)
    );
  rss_acc_12 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(12),
      Q => rss_acc(12)
    );
  rss_acc_11 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_acc_add0000(11),
      R => rss_flag_794,
      Q => rss_acc(11)
    );
  rss_acc_10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(10),
      Q => rss_acc(10)
    );
  rss_acc_9 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(9),
      Q => rss_acc(9)
    );
  rss_acc_8 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(8),
      Q => rss_acc(8)
    );
  rss_acc_7 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(7),
      Q => rss_acc(7)
    );
  rss_acc_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_acc_add0000(6),
      R => rss_flag_794,
      Q => rss_acc(6)
    );
  rss_acc_5 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(5),
      Q => rss_acc(5)
    );
  rss_acc_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(4),
      Q => rss_acc(4)
    );
  rss_acc_3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(3),
      Q => rss_acc(3)
    );
  rss_acc_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_flag_794,
      S => rss_acc_add0000(2),
      Q => rss_acc(2)
    );
  rss_acc_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_acc_add0000(1),
      R => rss_flag_794,
      Q => rss_acc(1)
    );
  rss_acc_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => clkk_265,
      D => rss_acc_add0000(0),
      R => rss_flag_794,
      Q => rss_acc(0)
    );
  rss_state_FSM_FFd1 : FDRS
    generic map(
      INIT => '0'
    )
    port map (
      C => rss_acc(16),
      D => rss_state_FSM_FFd1_In1_851,
      R => rss_state_FSM_Scst_FSM_inv,
      S => rss_state_FSM_FFd2_854,
      Q => rss_state_FSM_FFd1_850
    );
  rss_Mcount_cntData_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(11),
      O => rss_Mcount_cntData_cy_11_rt_512
    );
  rss_Mcount_cntData_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(10),
      O => rss_Mcount_cntData_cy_10_rt_510
    );
  rss_Mcount_cntData_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(9),
      O => rss_Mcount_cntData_cy_9_rt_530
    );
  rss_Mcount_cntData_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(8),
      O => rss_Mcount_cntData_cy_8_rt_528
    );
  rss_Mcount_cntData_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(7),
      O => rss_Mcount_cntData_cy_7_rt_526
    );
  rss_Mcount_cntData_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(6),
      O => rss_Mcount_cntData_cy_6_rt_524
    );
  rss_Mcount_cntData_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(5),
      O => rss_Mcount_cntData_cy_5_rt_522
    );
  rss_Mcount_cntData_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(4),
      O => rss_Mcount_cntData_cy_4_rt_520
    );
  rss_Mcount_cntData_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(3),
      O => rss_Mcount_cntData_cy_3_rt_518
    );
  rss_Mcount_cntData_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(2),
      O => rss_Mcount_cntData_cy_2_rt_516
    );
  rss_Mcount_cntData_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(1),
      O => rss_Mcount_cntData_cy_1_rt_514
    );
  rss_Mcount_indData_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(6),
      O => rss_Mcount_indData_cy_6_rt_619
    );
  rss_Mcount_indData_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(5),
      O => rss_Mcount_indData_cy_5_rt_617
    );
  rss_Mcount_indData_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(4),
      O => rss_Mcount_indData_cy_4_rt_615
    );
  rss_Mcount_indData_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(3),
      O => rss_Mcount_indData_cy_3_rt_613
    );
  rss_Mcount_indData_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(2),
      O => rss_Mcount_indData_cy_2_rt_611
    );
  rss_Mcount_indData_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(1),
      O => rss_Mcount_indData_cy_1_rt_609
    );
  rss_Mcount_cntTest_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(11),
      O => rss_Mcount_cntTest_cy_11_rt_550
    );
  rss_Mcount_cntTest_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(10),
      O => rss_Mcount_cntTest_cy_10_rt_548
    );
  rss_Mcount_cntTest_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(9),
      O => rss_Mcount_cntTest_cy_9_rt_568
    );
  rss_Mcount_cntTest_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(8),
      O => rss_Mcount_cntTest_cy_8_rt_566
    );
  rss_Mcount_cntTest_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(7),
      O => rss_Mcount_cntTest_cy_7_rt_564
    );
  rss_Mcount_cntTest_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(6),
      O => rss_Mcount_cntTest_cy_6_rt_562
    );
  rss_Mcount_cntTest_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(5),
      O => rss_Mcount_cntTest_cy_5_rt_560
    );
  rss_Mcount_cntTest_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(4),
      O => rss_Mcount_cntTest_cy_4_rt_558
    );
  rss_Mcount_cntTest_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(3),
      O => rss_Mcount_cntTest_cy_3_rt_556
    );
  rss_Mcount_cntTest_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(2),
      O => rss_Mcount_cntTest_cy_2_rt_554
    );
  rss_Mcount_cntTest_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(1),
      O => rss_Mcount_cntTest_cy_1_rt_552
    );
  rss_Madd_indData_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(11),
      O => rss_Madd_indData_add0000_cy_11_rt_462
    );
  rss_Madd_indData_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(10),
      O => rss_Madd_indData_add0000_cy_10_rt_460
    );
  rss_Madd_indData_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(9),
      O => rss_Madd_indData_add0000_cy_9_rt_480
    );
  rss_Madd_indData_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(8),
      O => rss_Madd_indData_add0000_cy_8_rt_478
    );
  rss_Madd_indData_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(7),
      O => rss_Madd_indData_add0000_cy_7_rt_476
    );
  rss_Madd_indData_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(6),
      O => rss_Madd_indData_add0000_cy_6_rt_474
    );
  rss_Madd_indData_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(5),
      O => rss_Madd_indData_add0000_cy_5_rt_472
    );
  rss_Madd_indData_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(4),
      O => rss_Madd_indData_add0000_cy_4_rt_470
    );
  rss_Madd_indData_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(3),
      O => rss_Madd_indData_add0000_cy_3_rt_468
    );
  rss_Madd_indData_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(2),
      O => rss_Madd_indData_add0000_cy_2_rt_466
    );
  rss_Madd_indData_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(1),
      O => rss_Madd_indData_add0000_cy_1_rt_464
    );
  rss_Madd_indTest_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(11),
      O => rss_Madd_indTest_add0000_cy_11_rt_487
    );
  rss_Madd_indTest_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(10),
      O => rss_Madd_indTest_add0000_cy_10_rt_485
    );
  rss_Madd_indTest_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(9),
      O => rss_Madd_indTest_add0000_cy_9_rt_505
    );
  rss_Madd_indTest_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(8),
      O => rss_Madd_indTest_add0000_cy_8_rt_503
    );
  rss_Madd_indTest_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(7),
      O => rss_Madd_indTest_add0000_cy_7_rt_501
    );
  rss_Madd_indTest_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(6),
      O => rss_Madd_indTest_add0000_cy_6_rt_499
    );
  rss_Madd_indTest_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(5),
      O => rss_Madd_indTest_add0000_cy_5_rt_497
    );
  rss_Madd_indTest_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(4),
      O => rss_Madd_indTest_add0000_cy_4_rt_495
    );
  rss_Madd_indTest_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(3),
      O => rss_Madd_indTest_add0000_cy_3_rt_493
    );
  rss_Madd_indTest_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(2),
      O => rss_Madd_indTest_add0000_cy_2_rt_491
    );
  rss_Madd_indTest_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(1),
      O => rss_Madd_indTest_add0000_cy_1_rt_489
    );
  rss_Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(10),
      O => rss_Mcount_count_cy_10_rt_586
    );
  rss_Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(9),
      O => rss_Mcount_count_cy_9_rt_604
    );
  rss_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(8),
      O => rss_Mcount_count_cy_8_rt_602
    );
  rss_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(7),
      O => rss_Mcount_count_cy_7_rt_600
    );
  rss_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(6),
      O => rss_Mcount_count_cy_6_rt_598
    );
  rss_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(5),
      O => rss_Mcount_count_cy_5_rt_596
    );
  rss_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(4),
      O => rss_Mcount_count_cy_4_rt_594
    );
  rss_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(3),
      O => rss_Mcount_count_cy_3_rt_592
    );
  rss_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(2),
      O => rss_Mcount_count_cy_2_rt_590
    );
  rss_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(1),
      O => rss_Mcount_count_cy_1_rt_588
    );
  rss_Madd_acc_add0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(15),
      O => rss_Madd_acc_add0000_cy_15_rt_438
    );
  rss_Madd_acc_add0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(14),
      O => rss_Madd_acc_add0000_cy_14_rt_436
    );
  rss_Madd_acc_add0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(13),
      O => rss_Madd_acc_add0000_cy_13_rt_434
    );
  rss_Madd_acc_add0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(12),
      O => rss_Madd_acc_add0000_cy_12_rt_432
    );
  rss_Madd_acc_add0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(11),
      O => rss_Madd_acc_add0000_cy_11_rt_430
    );
  rss_Madd_acc_add0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(10),
      O => rss_Madd_acc_add0000_cy_10_rt_428
    );
  rss_Madd_acc_add0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(9),
      O => rss_Madd_acc_add0000_cy_9_rt_452
    );
  rss_Madd_acc_add0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(8),
      O => rss_Madd_acc_add0000_cy_8_rt_450
    );
  rss_Madd_acc_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(6),
      O => rss_Madd_acc_add0000_cy_6_rt_447
    );
  rss_Madd_acc_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(5),
      O => rss_Madd_acc_add0000_cy_5_rt_445
    );
  rss_Madd_acc_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_acc(3),
      O => rss_Madd_acc_add0000_cy_3_rt_442
    );
  rss_Mcount_cntData_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(12),
      O => rss_Mcount_cntData_xor_12_rt_545
    );
  rss_Mcount_indData_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_indData(7),
      O => rss_Mcount_indData_xor_7_rt_621
    );
  rss_Mcount_cntTest_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(12),
      O => rss_Mcount_cntTest_xor_12_rt_583
    );
  rss_Madd_indData_add0000_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntData(12),
      O => rss_Madd_indData_add0000_xor_12_rt_482
    );
  rss_Madd_indTest_add0000_xor_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_cntTest(12),
      O => rss_Madd_indTest_add0000_xor_12_rt_507
    );
  rss_Mcount_count_xor_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rss_count(11),
      O => rss_Mcount_count_xor_11_rt_606
    );
  rss_cntTest_or00002 : LUT4
    generic map(
      INIT => X"F777"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => tx_start_IBUF_1394,
      I2 => rss_cntTest_or000015_773,
      I3 => N331,
      O => rss_cntTest_or0000
    );
  rss_cntData_or00002 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => tx_start_IBUF_1394,
      I1 => test_mode_IBUF_1392,
      I2 => rss_cntData_or000015_753,
      I3 => N351,
      O => rss_cntData_or0000
    );
  rss_cntTest_or0000132_SW0 : LUT3
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => rss_indTest_add0000(2),
      I1 => rss_indTest_add0000(3),
      I2 => rss_cntTest_not0003_768,
      O => N371
    );
  rss_flag_cmp_eq000359_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rss_cntData(8),
      I1 => rss_cntData(9),
      I2 => rss_cntData(11),
      I3 => rss_cntData(10),
      O => N411
    );
  rss_flag_cmp_eq000259_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rss_cntTest(8),
      I1 => rss_cntTest(9),
      I2 => rss_cntTest(11),
      I3 => rss_cntTest(10),
      O => N431
    );
  count_not00011 : LUT4
    generic map(
      INIT => X"0201"
    )
    port map (
      I0 => aaddcc_sample(7),
      I1 => receptionComplete(0),
      I2 => firstSample(0),
      I3 => Q_varindex0000,
      O => count_not0001
    );
  outputData_9_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N77,
      O => outputData_9_and0000
    );
  outputData_8_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N79,
      O => outputData_8_and0000
    );
  outputData_6_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N78,
      O => outputData_6_and0000
    );
  outputData_5_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N51,
      O => outputData_5_and0000
    );
  outputData_4_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N52,
      O => outputData_4_and0000
    );
  outputData_30_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N74,
      O => outputData_30_and0000
    );
  outputData_29_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N75,
      O => outputData_29_and0000
    );
  outputData_28_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N76,
      O => outputData_28_and0000
    );
  outputData_26_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N47,
      O => outputData_26_and0000
    );
  outputData_25_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N48,
      O => outputData_25_and0000
    );
  outputData_24_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N49,
      O => outputData_24_and0000
    );
  outputData_22_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N47,
      O => outputData_22_and0000
    );
  outputData_21_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N48,
      O => outputData_21_and0000
    );
  outputData_20_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N49,
      O => outputData_20_and0000
    );
  outputData_14_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N50,
      O => outputData_14_and0000
    );
  outputData_13_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N51,
      O => outputData_13_and0000
    );
  outputData_12_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(3),
      I2 => N52,
      O => outputData_12_and0000
    );
  outputData_10_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N50,
      O => outputData_10_and0000
    );
  Mmux_varindex0000_2_f5 : MUXF5
    port map (
      I0 => N451,
      I1 => N46,
      S => sampleCount(6),
      O => Q_varindex0000
    );
  Mmux_varindex0000_2_f5_F : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => sampleCount(5),
      I1 => Mmux_varindex0000_7_f8_86,
      I2 => Mmux_varindex0000_8_f8_91,
      O => N451
    );
  Mmux_varindex0000_2_f5_G : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => sampleCount(5),
      I1 => Mmux_varindex0000_7_f5_84,
      I2 => Mmux_varindex0000_6_f8_83,
      O => N46
    );
  rss_tmp_txd_mux000291 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => rss_tmp_txd_mux000236_867,
      I1 => rss_tmp_txd_mux000262,
      I2 => rss_tmp_txd_mux000277_871,
      O => rss_tmp_txd_mux0002
    );
  rss_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"A2AA"
    )
    port map (
      I0 => rss_state_FSM_FFd1_850,
      I1 => rss_counter(2),
      I2 => rss_counter(1),
      I3 => rss_counter(0),
      O => rss_state_FSM_FFd1_In1_851
    );
  rss_buff_in_mux0000_6_92 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => data(6),
      I2 => rss_buff_in_mux0000_6_59_730,
      O => rss_buff_in_mux0000(6)
    );
  rss_buff_in_mux0000_4_103 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => data(4),
      I2 => rss_buff_in_mux0000_4_69_726,
      O => rss_buff_in_mux0000(4)
    );
  rss_buff_in_mux0000_5_121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => data(5),
      I2 => rss_buff_in_mux0000_5_90_728,
      O => rss_buff_in_mux0000(5)
    );
  rss_indData_or00001 : LUT4
    generic map(
      INIT => X"EAFF"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => rss_flag_cmp_eq000124_797,
      I2 => rss_flag_cmp_eq000111_796,
      I3 => tx_start_IBUF_1394,
      O => rss_indData_or0000
    );
  count_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N32,
      I2 => N84,
      I3 => receptionComplete(0),
      O => count_and0000
    );
  rss_cntData_not00031 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => rss_flag_cmp_eq000111_796,
      I1 => rss_flag_cmp_eq000124_797,
      O => rss_cntData_not0003
    );
  sample2_65_and000011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => sampleCount(6),
      O => N29
    );
  sample2_64_and000011 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sampleCount(6),
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      O => N30
    );
  sample1_13_and000121 : LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => sampleCount(6),
      O => N26
    );
  sample1_11_and000121 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(1),
      I1 => sampleCount(6),
      I2 => sampleCount(0),
      O => N25
    );
  sample1_0_and000231 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => sampleCount(6),
      O => N27
    );
  sample2_59_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => Mcount_sampleCount_cy_1_Q,
      I2 => sampleCount(4),
      I3 => N6,
      O => sample2_59_not0001
    );
  sample2_57_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => N16,
      I2 => sampleCount(4),
      I3 => N6,
      O => sample2_57_not0001
    );
  sample2_56_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => N17,
      I2 => sampleCount(4),
      I3 => N6,
      O => sample2_56_not0001
    );
  sample2_43_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N73,
      I1 => sampleCount(4),
      I2 => N6,
      I3 => N14,
      O => sample2_43_not0001
    );
  sample2_41_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N16,
      I1 => sampleCount(4),
      I2 => N6,
      I3 => N14,
      O => sample2_41_not0001
    );
  sample2_40_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => N17,
      I1 => sampleCount(4),
      I2 => N6,
      I3 => N14,
      O => sample2_40_not0001
    );
  sample1_9_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(9),
      I2 => aaddcc_sample(7),
      O => sample1_9_mux0000
    );
  sample1_99_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(99),
      I2 => aaddcc_sample(7),
      O => sample1_99_mux0000
    );
  sample1_98_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(98),
      I2 => aaddcc_sample(7),
      O => sample1_98_mux0000
    );
  sample1_97_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(97),
      I2 => aaddcc_sample(7),
      O => sample1_97_mux0000
    );
  sample1_96_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(96),
      I2 => aaddcc_sample(7),
      O => sample1_96_mux0000
    );
  sample1_95_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(95),
      I2 => aaddcc_sample(7),
      O => sample1_95_mux0000
    );
  sample1_94_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(94),
      I2 => aaddcc_sample(7),
      O => sample1_94_mux0000
    );
  sample1_93_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(93),
      I2 => aaddcc_sample(7),
      O => sample1_93_mux0000
    );
  sample1_92_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(92),
      I2 => aaddcc_sample(7),
      O => sample1_92_mux0000
    );
  sample1_91_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(91),
      I2 => aaddcc_sample(7),
      O => sample1_91_mux0000
    );
  sample1_90_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(90),
      I2 => aaddcc_sample(7),
      O => sample1_90_mux0000
    );
  sample1_8_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(8),
      I2 => aaddcc_sample(7),
      O => sample1_8_mux0000
    );
  sample1_89_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(89),
      I2 => aaddcc_sample(7),
      O => sample1_89_mux0000
    );
  sample1_88_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(88),
      I2 => aaddcc_sample(7),
      O => sample1_88_mux0000
    );
  sample1_87_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(87),
      I2 => aaddcc_sample(7),
      O => sample1_87_mux0000
    );
  sample1_86_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(86),
      I2 => aaddcc_sample(7),
      O => sample1_86_mux0000
    );
  sample1_85_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(85),
      I2 => aaddcc_sample(7),
      O => sample1_85_mux0000
    );
  sample1_84_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(84),
      I2 => aaddcc_sample(7),
      O => sample1_84_mux0000
    );
  sample1_83_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(83),
      I2 => aaddcc_sample(7),
      O => sample1_83_mux0000
    );
  sample1_82_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(82),
      I2 => aaddcc_sample(7),
      O => sample1_82_mux0000
    );
  sample1_81_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(81),
      I2 => aaddcc_sample(7),
      O => sample1_81_mux0000
    );
  sample1_80_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(80),
      I2 => aaddcc_sample(7),
      O => sample1_80_mux0000
    );
  sample1_7_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(7),
      I2 => aaddcc_sample(7),
      O => sample1_7_mux0000
    );
  sample1_79_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(79),
      I2 => aaddcc_sample(7),
      O => sample1_79_mux0000
    );
  sample1_78_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(78),
      I2 => aaddcc_sample(7),
      O => sample1_78_mux0000
    );
  sample1_77_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(77),
      I2 => aaddcc_sample(7),
      O => sample1_77_mux0000
    );
  sample1_76_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(76),
      I2 => aaddcc_sample(7),
      O => sample1_76_mux0000
    );
  sample1_75_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(75),
      I2 => aaddcc_sample(7),
      O => sample1_75_mux0000
    );
  sample1_74_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(74),
      I2 => aaddcc_sample(7),
      O => sample1_74_mux0000
    );
  sample1_73_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(73),
      I2 => aaddcc_sample(7),
      O => sample1_73_mux0000
    );
  sample1_72_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(72),
      I2 => aaddcc_sample(7),
      O => sample1_72_mux0000
    );
  sample1_71_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(71),
      I2 => aaddcc_sample(7),
      O => sample1_71_mux0000
    );
  sample1_70_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(70),
      I2 => aaddcc_sample(7),
      O => sample1_70_mux0000
    );
  sample1_6_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(6),
      I2 => aaddcc_sample(7),
      O => sample1_6_mux0000
    );
  sample1_69_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(69),
      I2 => aaddcc_sample(7),
      O => sample1_69_mux0000
    );
  sample1_68_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(68),
      I2 => aaddcc_sample(7),
      O => sample1_68_mux0000
    );
  sample1_67_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(67),
      I2 => aaddcc_sample(7),
      O => sample1_67_mux0000
    );
  sample1_66_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(66),
      I2 => aaddcc_sample(7),
      O => sample1_66_mux0000
    );
  sample1_65_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(65),
      I2 => aaddcc_sample(7),
      O => sample1_65_mux0000
    );
  sample1_64_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(64),
      I2 => aaddcc_sample(7),
      O => sample1_64_mux0000
    );
  sample1_63_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(63),
      I2 => aaddcc_sample(7),
      O => sample1_63_mux0000
    );
  sample1_62_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(62),
      I2 => aaddcc_sample(7),
      O => sample1_62_mux0000
    );
  sample1_61_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(61),
      I2 => aaddcc_sample(7),
      O => sample1_61_mux0000
    );
  sample1_60_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(60),
      I2 => aaddcc_sample(7),
      O => sample1_60_mux0000
    );
  sample1_5_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(5),
      I2 => aaddcc_sample(7),
      O => sample1_5_mux0000
    );
  sample1_59_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(59),
      I2 => aaddcc_sample(7),
      O => sample1_59_mux0000
    );
  sample1_58_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(58),
      I2 => aaddcc_sample(7),
      O => sample1_58_mux0000
    );
  sample1_57_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(57),
      I2 => aaddcc_sample(7),
      O => sample1_57_mux0000
    );
  sample1_56_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(56),
      I2 => aaddcc_sample(7),
      O => sample1_56_mux0000
    );
  sample1_55_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(55),
      I2 => aaddcc_sample(7),
      O => sample1_55_mux0000
    );
  sample1_54_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(54),
      I2 => aaddcc_sample(7),
      O => sample1_54_mux0000
    );
  sample1_53_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(53),
      I2 => aaddcc_sample(7),
      O => sample1_53_mux0000
    );
  sample1_52_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(52),
      I2 => aaddcc_sample(7),
      O => sample1_52_mux0000
    );
  sample1_51_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(51),
      I2 => aaddcc_sample(7),
      O => sample1_51_mux0000
    );
  sample1_50_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(50),
      I2 => aaddcc_sample(7),
      O => sample1_50_mux0000
    );
  sample1_4_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(4),
      I2 => aaddcc_sample(7),
      O => sample1_4_mux0000
    );
  sample1_49_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(49),
      I2 => aaddcc_sample(7),
      O => sample1_49_mux0000
    );
  sample1_48_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(48),
      I2 => aaddcc_sample(7),
      O => sample1_48_mux0000
    );
  sample1_47_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(47),
      I2 => aaddcc_sample(7),
      O => sample1_47_mux0000
    );
  sample1_46_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(46),
      I2 => aaddcc_sample(7),
      O => sample1_46_mux0000
    );
  sample1_45_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(45),
      I2 => aaddcc_sample(7),
      O => sample1_45_mux0000
    );
  sample1_44_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(44),
      I2 => aaddcc_sample(7),
      O => sample1_44_mux0000
    );
  sample1_43_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(43),
      I2 => aaddcc_sample(7),
      O => sample1_43_mux0000
    );
  sample1_42_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(42),
      I2 => aaddcc_sample(7),
      O => sample1_42_mux0000
    );
  sample1_41_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(41),
      I2 => aaddcc_sample(7),
      O => sample1_41_mux0000
    );
  sample1_40_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(40),
      I2 => aaddcc_sample(7),
      O => sample1_40_mux0000
    );
  sample1_3_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(3),
      I2 => aaddcc_sample(7),
      O => sample1_3_mux0000
    );
  sample1_39_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(39),
      I2 => aaddcc_sample(7),
      O => sample1_39_mux0000
    );
  sample1_38_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(38),
      I2 => aaddcc_sample(7),
      O => sample1_38_mux0000
    );
  sample1_37_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(37),
      I2 => aaddcc_sample(7),
      O => sample1_37_mux0000
    );
  sample1_36_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(36),
      I2 => aaddcc_sample(7),
      O => sample1_36_mux0000
    );
  sample1_35_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(35),
      I2 => aaddcc_sample(7),
      O => sample1_35_mux0000
    );
  sample1_34_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(34),
      I2 => aaddcc_sample(7),
      O => sample1_34_mux0000
    );
  sample1_33_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(33),
      I2 => aaddcc_sample(7),
      O => sample1_33_mux0000
    );
  sample1_32_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(32),
      I2 => aaddcc_sample(7),
      O => sample1_32_mux0000
    );
  sample1_31_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(31),
      I2 => aaddcc_sample(7),
      O => sample1_31_mux0000
    );
  sample1_30_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(30),
      I2 => aaddcc_sample(7),
      O => sample1_30_mux0000
    );
  sample1_2_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(2),
      I2 => aaddcc_sample(7),
      O => sample1_2_mux0000
    );
  sample1_29_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(29),
      I2 => aaddcc_sample(7),
      O => sample1_29_mux0000
    );
  sample1_28_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(28),
      I2 => aaddcc_sample(7),
      O => sample1_28_mux0000
    );
  sample1_27_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(27),
      I2 => aaddcc_sample(7),
      O => sample1_27_mux0000
    );
  sample1_26_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(26),
      I2 => aaddcc_sample(7),
      O => sample1_26_mux0000
    );
  sample1_25_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(25),
      I2 => aaddcc_sample(7),
      O => sample1_25_mux0000
    );
  sample1_24_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(24),
      I2 => aaddcc_sample(7),
      O => sample1_24_mux0000
    );
  sample1_23_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(23),
      I2 => aaddcc_sample(7),
      O => sample1_23_mux0000
    );
  sample1_22_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(22),
      I2 => aaddcc_sample(7),
      O => sample1_22_mux0000
    );
  sample1_21_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(21),
      I2 => aaddcc_sample(7),
      O => sample1_21_mux0000
    );
  sample1_20_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(20),
      I2 => aaddcc_sample(7),
      O => sample1_20_mux0000
    );
  sample1_1_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(1),
      I2 => aaddcc_sample(7),
      O => sample1_1_mux0000
    );
  sample1_19_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(19),
      I2 => aaddcc_sample(7),
      O => sample1_19_mux0000
    );
  sample1_18_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(18),
      I2 => aaddcc_sample(7),
      O => sample1_18_mux0000
    );
  sample1_17_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(17),
      I2 => aaddcc_sample(7),
      O => sample1_17_mux0000
    );
  sample1_16_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(16),
      I2 => aaddcc_sample(7),
      O => sample1_16_mux0000
    );
  sample1_15_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(15),
      I2 => aaddcc_sample(7),
      O => sample1_15_mux0000
    );
  sample1_14_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(14),
      I2 => aaddcc_sample(7),
      O => sample1_14_mux0000
    );
  sample1_13_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(13),
      I2 => aaddcc_sample(7),
      O => sample1_13_mux0000
    );
  sample1_12_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(12),
      I2 => aaddcc_sample(7),
      O => sample1_12_mux0000
    );
  sample1_11_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(11),
      I2 => aaddcc_sample(7),
      O => sample1_11_mux0000
    );
  sample1_10_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(10),
      I2 => aaddcc_sample(7),
      O => sample1_10_mux0000
    );
  sample1_0_mux00001 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => firstSample(0),
      I1 => sample2(0),
      I2 => aaddcc_sample(7),
      O => sample1_0_mux0000
    );
  Mcount_sampleCount_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      O => Result(2)
    );
  Mcount_bit_number_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => bit_number(2),
      I1 => bit_number(0),
      I2 => bit_number(1),
      O => Result_2_2
    );
  Mcount_sampleCount_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(2),
      I2 => sampleCount(0),
      I3 => sampleCount(1),
      O => Result(3)
    );
  Mcount_bit_number_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => bit_number(0),
      I3 => bit_number(1),
      O => Result_3_2
    );
  rss_flag_not00011 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => test_mode_IBUF_1392,
      I1 => rss_flag_cmp_eq000111_796,
      I2 => rss_flag_cmp_eq000124_797,
      I3 => rss_cntTest_not0003_768,
      O => rss_flag_not0001
    );
  sample2_63_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      I3 => N41,
      O => sample2_63_not0001
    );
  sample2_61_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => N14,
      I3 => N41,
      O => sample2_61_not0001
    );
  sample2_55_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      I3 => N43,
      O => sample2_55_not0001
    );
  sample2_53_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => N14,
      I3 => N43,
      O => sample2_53_not0001
    );
  sample2_47_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      I3 => N42,
      O => sample2_47_not0001
    );
  sample2_45_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => N14,
      I3 => N42,
      O => sample2_45_not0001
    );
  sample2_39_not00011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => N14,
      I1 => sampleCount(0),
      I2 => sampleCount(1),
      I3 => N44,
      O => sample2_39_not0001
    );
  sample2_37_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      I2 => N14,
      I3 => N44,
      O => sample2_37_not0001
    );
  sample2_65_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N29,
      I3 => receptionComplete(0),
      O => sample2_65_not0001
    );
  sample2_64_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N30,
      I3 => receptionComplete(0),
      O => sample2_64_not0001
    );
  sample2_5_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N35,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_5_not0001
    );
  sample2_51_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N54,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_51_not0001
    );
  sample2_4_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N35,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_4_not0001
    );
  sample2_49_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N54,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_49_not0001
    );
  sample2_48_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N54,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_48_not0001
    );
  sample2_3_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_3_not0001
    );
  sample2_35_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N32,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_35_not0001
    );
  sample2_33_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N32,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_33_not0001
    );
  sample2_32_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N32,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_32_not0001
    );
  sample2_31_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N39,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_31_not0001
    );
  sample2_29_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N39,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_29_not0001
    );
  sample2_28_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N39,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_28_not0001
    );
  sample2_27_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N38,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_27_not0001
    );
  sample2_25_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N38,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_25_not0001
    );
  sample2_24_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N38,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_24_not0001
    );
  sample2_23_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N37,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_23_not0001
    );
  sample2_21_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N37,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_21_not0001
    );
  sample2_20_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N37,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_20_not0001
    );
  sample2_1_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_1_not0001
    );
  sample2_19_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N33,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_19_not0001
    );
  sample2_17_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N33,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_17_not0001
    );
  sample2_16_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N33,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_16_not0001
    );
  sample2_15_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N36,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_15_not0001
    );
  sample2_13_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N36,
      I2 => N26,
      I3 => receptionComplete(0),
      O => sample2_13_not0001
    );
  sample2_12_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N36,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_12_not0001
    );
  sample2_11_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N31,
      I2 => N25,
      I3 => receptionComplete(0),
      O => sample2_11_not0001
    );
  sample2_0_or0000_inv1 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N27,
      I3 => receptionComplete(0),
      O => sample2_0_or0000_inv
    );
  firstSample_0_not00011 : LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => firstSample(0),
      I1 => receptionComplete(0),
      I2 => N28,
      I3 => N32,
      O => firstSample_0_not0001
    );
  sample2_9_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N26,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_9_not0001
    );
  sample2_97_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N32,
      I3 => receptionComplete(0),
      O => sample2_97_not0001
    );
  sample2_96_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N32,
      I3 => receptionComplete(0),
      O => sample2_96_not0001
    );
  sample2_93_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N39,
      I3 => receptionComplete(0),
      O => sample2_93_not0001
    );
  sample2_92_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N39,
      I3 => receptionComplete(0),
      O => sample2_92_not0001
    );
  sample2_8_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N27,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_8_not0001
    );
  sample2_89_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N38,
      I3 => receptionComplete(0),
      O => sample2_89_not0001
    );
  sample2_88_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N38,
      I3 => receptionComplete(0),
      O => sample2_88_not0001
    );
  sample2_85_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N37,
      I3 => receptionComplete(0),
      O => sample2_85_not0001
    );
  sample2_84_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N37,
      I3 => receptionComplete(0),
      O => sample2_84_not0001
    );
  sample2_81_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N33,
      I3 => receptionComplete(0),
      O => sample2_81_not0001
    );
  sample2_80_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N33,
      I3 => receptionComplete(0),
      O => sample2_80_not0001
    );
  sample2_7_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N25,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_7_not0001
    );
  sample2_77_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N36,
      I3 => receptionComplete(0),
      O => sample2_77_not0001
    );
  sample2_76_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N36,
      I3 => receptionComplete(0),
      O => sample2_76_not0001
    );
  sample2_73_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_73_not0001
    );
  sample2_72_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_72_not0001
    );
  sample2_69_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N29,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_69_not0001
    );
  sample2_68_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N30,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_68_not0001
    );
  sample2_60_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N41,
      I2 => N17,
      I3 => receptionComplete(0),
      O => sample2_60_not0001
    );
  sample2_58_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N45,
      I2 => sampleCount(4),
      I3 => receptionComplete(0),
      O => sample2_58_not0001
    );
  sample2_52_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N43,
      I2 => N17,
      I3 => receptionComplete(0),
      O => sample2_52_not0001
    );
  sample2_44_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N42,
      I2 => N17,
      I3 => receptionComplete(0),
      O => sample2_44_not0001
    );
  sample2_36_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N44,
      I2 => N17,
      I3 => receptionComplete(0),
      O => sample2_36_not0001
    );
  sample2_98_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N32,
      I3 => receptionComplete(0),
      O => sample2_98_not0001
    );
  sample2_94_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N39,
      I3 => receptionComplete(0),
      O => sample2_94_not0001
    );
  sample2_90_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N38,
      I3 => receptionComplete(0),
      O => sample2_90_not0001
    );
  sample2_86_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N37,
      I3 => receptionComplete(0),
      O => sample2_86_not0001
    );
  sample2_82_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N33,
      I3 => receptionComplete(0),
      O => sample2_82_not0001
    );
  sample2_78_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N36,
      I3 => receptionComplete(0),
      O => sample2_78_not0001
    );
  sample2_74_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_74_not0001
    );
  sample2_70_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_70_not0001
    );
  sample2_6_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_6_not0001
    );
  sample2_66_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N19,
      I2 => N34,
      I3 => receptionComplete(0),
      O => sample2_66_not0001
    );
  sample2_50_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N54,
      I3 => receptionComplete(0),
      O => sample2_50_not0001
    );
  sample2_34_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N32,
      I3 => receptionComplete(0),
      O => sample2_34_not0001
    );
  sample2_30_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N39,
      I3 => receptionComplete(0),
      O => sample2_30_not0001
    );
  sample2_2_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N34,
      I3 => receptionComplete(0),
      O => sample2_2_not0001
    );
  sample2_26_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N38,
      I3 => receptionComplete(0),
      O => sample2_26_not0001
    );
  sample2_22_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N37,
      I3 => receptionComplete(0),
      O => sample2_22_not0001
    );
  sample2_18_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N33,
      I3 => receptionComplete(0),
      O => sample2_18_not0001
    );
  sample2_14_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N36,
      I3 => receptionComplete(0),
      O => sample2_14_not0001
    );
  sample2_10_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N18,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_10_not0001
    );
  sample2_95_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N39,
      I3 => receptionComplete(0),
      O => sample2_95_not0001
    );
  sample2_91_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N38,
      I3 => receptionComplete(0),
      O => sample2_91_not0001
    );
  sample2_87_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N37,
      I3 => receptionComplete(0),
      O => sample2_87_not0001
    );
  sample2_83_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N33,
      I3 => receptionComplete(0),
      O => sample2_83_not0001
    );
  sample2_79_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N36,
      I3 => receptionComplete(0),
      O => sample2_79_not0001
    );
  sample2_75_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N31,
      I3 => receptionComplete(0),
      O => sample2_75_not0001
    );
  sample2_71_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N28,
      I2 => N35,
      I3 => receptionComplete(0),
      O => sample2_71_not0001
    );
  sample2_67_not00011 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => firstSample(0),
      I1 => N34,
      I2 => N28,
      I3 => receptionComplete(0),
      O => sample2_67_not0001
    );
  outputData_2_and00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N50,
      O => outputData_2_and0000
    );
  outputData_1_and00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N51,
      O => outputData_1_and0000
    );
  outputData_18_and00002 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N47,
      O => outputData_18_and0000
    );
  outputData_17_and00002 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N48,
      O => outputData_17_and0000
    );
  outputData_16_and00002 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N49,
      O => outputData_16_and0000
    );
  outputData_0_and00001 : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => bit_number(3),
      I1 => bit_number(2),
      I2 => N52,
      O => outputData_0_and0000
    );
  sample2_42_not00011 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => N45,
      I1 => firstSample(0),
      I2 => receptionComplete(0),
      I3 => sampleCount(4),
      O => sample2_42_not0001
    );
  rss_cntData_or0000132_SW0 : LUT4
    generic map(
      INIT => X"F8FF"
    )
    port map (
      I0 => N70,
      I1 => rss_flag_cmp_eq000124_797,
      I2 => rss_indData_add0000(2),
      I3 => rss_indData_add0000(3),
      O => N391
    );
  dclk_BUFG : BUFG
    port map (
      I => dclk1,
      O => dclk_313
    );
  clkk_BUFG : BUFG
    port map (
      I => clkk1,
      O => clkk_265
    );
  rss_mclk_BUFG : BUFG
    port map (
      I => rss_mclk1,
      O => rss_mclk_847
    );
  clock_BUFGP : BUFGP
    port map (
      I => clock,
      O => clock_BUFGP_268
    );
  rss_Mcount_cntData_lut_0_INV_0 : INV
    port map (
      I => rss_cntData(0),
      O => rss_Mcount_cntData_lut(0)
    );
  rss_Mcount_indData_lut_0_INV_0 : INV
    port map (
      I => rss_indData(0),
      O => rss_Mcount_indData_lut(0)
    );
  rss_Mcount_cntTest_lut_0_INV_0 : INV
    port map (
      I => rss_cntTest(0),
      O => rss_Mcount_cntTest_lut(0)
    );
  rss_Madd_indData_add0000_lut_0_INV_0 : INV
    port map (
      I => rss_cntData(0),
      O => rss_Madd_indData_add0000_lut(0)
    );
  rss_Madd_indTest_add0000_lut_0_INV_0 : INV
    port map (
      I => rss_cntTest(0),
      O => rss_Madd_indTest_add0000_lut(0)
    );
  rss_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => rss_count(0),
      O => rss_Mcount_count_lut(0)
    );
  rss_Madd_acc_add0000_lut_7_INV_0 : INV
    port map (
      I => rss_acc(7),
      O => rss_Madd_acc_add0000_lut_7_Q
    );
  rss_Madd_acc_add0000_lut_4_INV_0 : INV
    port map (
      I => rss_acc(4),
      O => rss_Madd_acc_add0000_lut_4_Q
    );
  rss_Madd_acc_add0000_lut_2_INV_0 : INV
    port map (
      I => rss_acc(2),
      O => rss_Madd_acc_add0000_lut_2_Q
    );
  rss_Madd_acc_add0000_lut_1_INV_0 : INV
    port map (
      I => rss_acc(1),
      O => rss_Madd_acc_add0000_lut_1_Q
    );
  rss_Madd_acc_add0000_lut_0_INV_0 : INV
    port map (
      I => rss_acc(0),
      O => rss_Madd_acc_add0000_lut_0_Q
    );
  rss_mclk_not00011_INV_0 : INV
    port map (
      I => rss_mclk1,
      O => rss_mclk_not0001
    );
  rss_Mcount_indTest_xor_0_11_INV_0 : INV
    port map (
      I => rss_indTest(0),
      O => rss_Result_0_2
    );
  rss_Mcount_counter_xor_0_11_INV_0 : INV
    port map (
      I => rss_counter(0),
      O => rss_Result_0_5
    );
  dclk_not00011_INV_0 : INV
    port map (
      I => dclk1,
      O => dclk_not0001
    );
  aaddcc_clkdiv_ct_not00011_INV_0 : INV
    port map (
      I => aaddcc_clkdiv_ct_228,
      O => aaddcc_clkdiv_ct_not0001
    );
  aaddcc_clkdiv_Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => aaddcc_clkdiv_count(0),
      O => aaddcc_Result(0)
    );
  Mcount_sampleCount_xor_0_11_INV_0 : INV
    port map (
      I => sampleCount(0),
      O => Result(0)
    );
  Mcount_count_xor_0_11_INV_0 : INV
    port map (
      I => count(0),
      O => Result_0_3
    );
  Mcount_clkCount_xor_0_11_INV_0 : INV
    port map (
      I => clkCount(0),
      O => Result_0_1
    );
  Mcount_bit_number_xor_0_11_INV_0 : INV
    port map (
      I => bit_number(0),
      O => Result_0_2
    );
  rss_state_FSM_Scst_FSM_inv1_INV_0 : INV
    port map (
      I => tx_start_IBUF_1394,
      O => rss_state_FSM_Scst_FSM_inv
    );
  receptionComplete_inv1_INV_0 : INV
    port map (
      I => receptionComplete(0),
      O => receptionComplete_inv
    );
  rss_buff_in_mux0000_6_59 : MUXF5
    port map (
      I0 => N511,
      I1 => N521,
      S => rss_indTest(4),
      O => rss_buff_in_mux0000_6_59_730
    );
  rss_buff_in_mux0000_6_59_F : LUT3
    generic map(
      INIT => X"46"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(2),
      I2 => rss_indTest(1),
      O => N511
    );
  rss_buff_in_mux0000_6_59_G : LUT4
    generic map(
      INIT => X"1114"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(2),
      I2 => rss_indTest(1),
      I3 => rss_indTest(0),
      O => N521
    );
  rss_buff_in_mux0000_5_90 : MUXF5
    port map (
      I0 => N53,
      I1 => N541,
      S => rss_indTest(0),
      O => rss_buff_in_mux0000_5_90_728
    );
  rss_buff_in_mux0000_5_90_F : LUT4
    generic map(
      INIT => X"4126"
    )
    port map (
      I0 => rss_indTest(4),
      I1 => rss_indTest(1),
      I2 => rss_indTest(2),
      I3 => rss_indTest(3),
      O => N53
    );
  rss_buff_in_mux0000_5_90_G : LUT4
    generic map(
      INIT => X"4151"
    )
    port map (
      I0 => rss_indTest(4),
      I1 => rss_indTest(2),
      I2 => rss_indTest(1),
      I3 => rss_indTest(3),
      O => N541
    );
  rss_buff_in_not0001 : MUXF5
    port map (
      I0 => N55,
      I1 => N56,
      S => test_mode_IBUF_1392,
      O => rss_buff_in_not0001_733
    );
  rss_buff_in_not0001_F : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => tx_start_IBUF_1394,
      I1 => rss_flag_cmp_eq0001,
      I2 => rss_cntData_not0002_inv,
      O => N55
    );
  rss_buff_in_not0001_G : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => rss_cntTest_not0002_inv,
      I1 => tx_start_IBUF_1394,
      I2 => rss_cntTest_not0003_768,
      O => N56
    );
  rss_buff_in_mux0000_4_69 : MUXF5
    port map (
      I0 => N571,
      I1 => N581,
      S => rss_indTest(1),
      O => rss_buff_in_mux0000_4_69_726
    );
  rss_buff_in_mux0000_4_69_F : LUT4
    generic map(
      INIT => X"0A19"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(0),
      I2 => rss_indTest(4),
      I3 => rss_indTest(2),
      O => N571
    );
  rss_buff_in_mux0000_4_69_G : LUT4
    generic map(
      INIT => X"1195"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(2),
      I2 => rss_indTest(0),
      I3 => rss_indTest(4),
      O => N581
    );
  aaddcc_countstate_mux0000_1_1 : LUT4
    generic map(
      INIT => X"0006"
    )
    port map (
      I0 => aaddcc_countstate(1),
      I1 => aaddcc_countstate(0),
      I2 => aaddcc_countstate(3),
      I3 => aaddcc_countstate(2),
      O => aaddcc_countstate_mux0000_1_1_243
    );
  aaddcc_countstate_mux0000_1_2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => aaddcc_countstate(1),
      I1 => aaddcc_countstate(0),
      O => aaddcc_countstate_mux0000_1_2_244
    );
  aaddcc_countstate_mux0000_1_f5 : MUXF5
    port map (
      I0 => aaddcc_countstate_mux0000_1_2_244,
      I1 => aaddcc_countstate_mux0000_1_1_243,
      S => aaddcc_countstate(4),
      O => aaddcc_countstate_mux0000(1)
    );
  aaddcc_copysamp_11_and00001 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => aaddcc_countstate(1),
      I1 => aaddcc_countstate(2),
      I2 => aaddcc_countstate(0),
      I3 => aaddcc_countstate(3),
      O => aaddcc_copysamp_11_and00001_232
    );
  aaddcc_copysamp_11_and0000_f5 : MUXF5
    port map (
      I0 => aaddcc_copysamp_11_and00001_232,
      I1 => N0,
      S => aaddcc_countstate(4),
      O => aaddcc_copysamp_11_and0000
    );
  rss_buff_in_mux0000_7_1 : LUT4
    generic map(
      INIT => X"0155"
    )
    port map (
      I0 => rss_indTest(4),
      I1 => rss_indTest(1),
      I2 => rss_indTest(2),
      I3 => rss_indTest(3),
      O => rss_buff_in_mux0000_7_1_732
    );
  rss_buff_in_mux0000_7_f5 : MUXF5
    port map (
      I0 => data(7),
      I1 => rss_buff_in_mux0000_7_1_732,
      S => test_mode_IBUF_1392,
      O => rss_buff_in_mux0000(7)
    );
  rss_buff_in_mux0000_1_1 : LUT4
    generic map(
      INIT => X"222A"
    )
    port map (
      I0 => rss_indTest(0),
      I1 => rss_indTest(4),
      I2 => rss_indTest(3),
      I3 => rss_indTest(2),
      O => rss_buff_in_mux0000_1_1_721
    );
  rss_buff_in_mux0000_1_f5 : MUXF5
    port map (
      I0 => data(1),
      I1 => rss_buff_in_mux0000_1_1_721,
      S => test_mode_IBUF_1392,
      O => rss_buff_in_mux0000(1)
    );
  rss_Result_4_21 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => rss_indTest(3),
      I1 => rss_indTest(2),
      I2 => rss_indTest(1),
      I3 => rss_indTest(0),
      O => rss_Result_4_21_656
    );
  rss_Result_4_22 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => rss_indTest(2),
      I1 => rss_indTest(1),
      I2 => rss_indTest(0),
      I3 => rss_indTest(3),
      O => rss_Result_4_22_657
    );
  rss_Result_4_2_f5 : MUXF5
    port map (
      I0 => rss_Result_4_22_657,
      I1 => rss_Result_4_21_656,
      S => rss_indTest(4),
      O => rss_Result_4_2
    );
  rss_tmp_txd_mux0002621 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_state_FSM_FFd2_854,
      I1 => rss_state_FSM_FFd7_859,
      I2 => rss_state_FSM_FFd8_860,
      I3 => rss_state_FSM_FFd10_852,
      O => rss_tmp_txd_mux0002621_870
    );
  rss_tmp_txd_mux000262_f5 : MUXF5
    port map (
      I0 => rss_tmp_txd_mux0002621_870,
      I1 => N0,
      S => rss_state_FSM_FFd9_861,
      O => rss_tmp_txd_mux000262
    );
  rss_buff_in_mux0000_3_4711 : LUT4
    generic map(
      INIT => X"0199"
    )
    port map (
      I0 => rss_indTest(2),
      I1 => rss_Result_1_2,
      I2 => rss_indTest(3),
      I3 => rss_indTest(4),
      O => rss_buff_in_mux0000_3_471
    );
  rss_buff_in_mux0000_3_471_f5 : MUXF5
    port map (
      I0 => data(3),
      I1 => rss_buff_in_mux0000_3_471,
      S => test_mode_IBUF_1392,
      O => rss_buff_in_mux0000(3)
    );
  sample1_0_not000111 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => firstSample(0),
      I1 => receptionComplete(0),
      LO => N59,
      O => N12
    );
  Mcount_sampleCount_cy_4_11 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(4),
      I2 => Mcount_sampleCount_cy_1_Q,
      I3 => sampleCount(2),
      LO => N60,
      O => Mcount_sampleCount_cy_4_Q
    );
  sample2_56_and000011 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sampleCount(4),
      I1 => N6,
      LO => N61,
      O => N57
    );
  sample2_40_and000021 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N6,
      I1 => sampleCount(4),
      LO => N62,
      O => N58
    );
  sample2_60_and000011 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(4),
      I2 => N2,
      LO => N63,
      O => N41
    );
  sample2_52_and000011 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => N2,
      I1 => sampleCount(3),
      I2 => sampleCount(4),
      LO => N64,
      O => N43
    );
  sample2_44_and000011 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(3),
      I1 => sampleCount(4),
      I2 => N2,
      LO => N65,
      O => N42
    );
  sample2_36_and000021 : LUT3_D
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => N2,
      I1 => sampleCount(3),
      I2 => sampleCount(4),
      LO => N66,
      O => N44
    );
  sample2_36_and000011 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => sampleCount(5),
      I1 => sampleCount(6),
      I2 => sampleCount(2),
      LO => N67,
      O => N2
    );
  sample2_40_and000011 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => sampleCount(2),
      I1 => sampleCount(3),
      I2 => sampleCount(5),
      I3 => sampleCount(6),
      LO => N68,
      O => N6
    );
  rss_cntTest_not0003_SW0 : LUT2_L
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => rss_indTest(0),
      I1 => rss_indTest(1),
      LO => N241
    );
  sample1_62_not0001_SW0 : LUT3_D
    generic map(
      INIT => X"BF"
    )
    port map (
      I0 => receptionComplete(0),
      I1 => firstSample(0),
      I2 => N24,
      LO => N69,
      O => N261
    );
  rss_flag_cmp_eq000111 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => rss_indData(7),
      I1 => rss_indData(6),
      I2 => rss_indData(4),
      I3 => rss_indData(5),
      LO => N70,
      O => rss_flag_cmp_eq000111_796
    );
  rss_flag_cmp_eq000124 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rss_indData(0),
      I1 => rss_indData(1),
      I2 => rss_indData(2),
      I3 => rss_indData(3),
      LO => N71,
      O => rss_flag_cmp_eq000124_797
    );
  sample2_32_and000011 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => sampleCount(5),
      I1 => sampleCount(2),
      I2 => sampleCount(3),
      I3 => sampleCount(4),
      LO => N72,
      O => N32
    );
  sample1_11_and000111 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(1),
      LO => N73,
      O => Mcount_sampleCount_cy_1_Q
    );
  outputData_18_and000011 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(0),
      I1 => bit_number(4),
      I2 => bit_number(1),
      I3 => sample2_99_or0000,
      LO => N74,
      O => N47
    );
  outputData_17_and000011 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => bit_number(1),
      I1 => bit_number(0),
      I2 => bit_number(4),
      I3 => sample2_99_or0000,
      LO => N75,
      O => N48
    );
  outputData_16_and000011 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => bit_number(4),
      I1 => bit_number(0),
      I2 => bit_number(1),
      I3 => sample2_99_or0000,
      LO => N76,
      O => N49
    );
  outputData_13_and000021 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => bit_number(0),
      I1 => bit_number(4),
      I2 => bit_number(1),
      I3 => sample2_99_or0000,
      LO => N77,
      O => N51
    );
  outputData_10_and000031 : LUT4_D
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => bit_number(1),
      I1 => bit_number(4),
      I2 => bit_number(0),
      I3 => sample2_99_or0000,
      LO => N78,
      O => N50
    );
  outputData_0_and000031 : LUT4_D
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => bit_number(4),
      I1 => bit_number(0),
      I2 => bit_number(1),
      I3 => sample2_99_or0000,
      LO => N79,
      O => N52
    );
  rss_cntTest_or000015 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rss_indTest_add0000(5),
      I1 => rss_indTest_add0000(4),
      I2 => rss_indTest_add0000(12),
      LO => N80,
      O => rss_cntTest_or000015_773
    );
  rss_cntData_or000015 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => rss_indData_add0000(5),
      I1 => rss_indData_add0000(4),
      I2 => rss_indData_add0000(12),
      LO => N81,
      O => rss_cntData_or000015_753
    );
  rss_cntTest_or0000161_SW0 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => rss_indTest_add0000(11),
      I1 => rss_cntTest_or0000117_770,
      I2 => rss_cntTest_or0000148_772,
      I3 => N371,
      LO => N331
    );
  rss_cntData_or0000161_SW0 : LUT4_L
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => rss_indData_add0000(11),
      I1 => N391,
      I2 => rss_cntData_or0000117_750,
      I3 => rss_cntData_or0000148_752,
      LO => N351
    );
  rss_flag_cmp_eq000359 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => rss_cntData(0),
      I1 => rss_flag_cmp_eq000312_800,
      I2 => rss_flag_cmp_eq000325_801,
      I3 => N411,
      LO => N82,
      O => rss_cntData_not0002_inv
    );
  rss_flag_cmp_eq000259 : LUT4_D
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => rss_cntTest(0),
      I1 => rss_flag_cmp_eq000212_798,
      I2 => rss_flag_cmp_eq000225_799,
      I3 => N431,
      LO => N83,
      O => rss_cntTest_not0002_inv
    );
  sample2_67_and000011 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => sampleCount(6),
      I1 => sampleCount(1),
      I2 => sampleCount(0),
      LO => N84,
      O => N28
    );
  sample1_54_not0001_SW0 : LUT4_L
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => sampleCount(4),
      I1 => sampleCount(0),
      I2 => N2,
      I3 => sampleCount(1),
      LO => N201
    );
  sample1_38_not0001_SW0 : LUT4_L
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => sampleCount(0),
      I1 => sampleCount(4),
      I2 => N2,
      I3 => sampleCount(1),
      LO => N221
    );
  Mshreg_state_FSM_FFd4 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => N0,
      A1 => N0,
      A2 => N0,
      A3 => N0,
      CE => state_not0001,
      CLK => rss_mclk_847,
      D => state_FSM_FFd2_1387,
      Q => Mshreg_state_FSM_FFd4_99
    );
  state_FSM_FFd4 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => rss_mclk_847,
      CE => state_not0001,
      D => Mshreg_state_FSM_FFd4_99,
      Q => state_FSM_FFd4_1389
    );

end Structure;

