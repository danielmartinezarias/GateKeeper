-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr  3 16:19:27 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top GateKeeper_BD_control_parametros_0_1 -prefix
--               GateKeeper_BD_control_parametros_0_1_ GateKeeper_BD_control_parametros_0_1_stub.vhdl
-- Design      : GateKeeper_BD_control_parametros_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GateKeeper_BD_control_parametros_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    readyRx : in STD_LOGIC;
    bufferRx : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    window0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    window1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    window2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulseShaper_width1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulseShaper_width2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enableGateKeeper0 : out STD_LOGIC;
    enableGateKeeper1 : out STD_LOGIC;
    enableGateKeeper2 : out STD_LOGIC
  );

end GateKeeper_BD_control_parametros_0_1;

architecture stub of GateKeeper_BD_control_parametros_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,readyRx,bufferRx[7:0],SW[7:0],LED[7:0],window0[15:0],window1[15:0],window2[15:0],pulseShaper_width0[7:0],pulseShaper_width1[7:0],pulseShaper_width2[7:0],enableGateKeeper0,enableGateKeeper1,enableGateKeeper2";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "control_parametros,Vivado 2023.2";
begin
end;
