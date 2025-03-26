-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 26 11:18:50 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_GateKeeper_2_0/GateKeeper_BD_GateKeeper_2_0_stub.vhdl
-- Design      : GateKeeper_BD_GateKeeper_2_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GateKeeper_BD_GateKeeper_2_0 is
  Port ( 
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    window : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width : in STD_LOGIC_VECTOR ( 7 downto 0 );
    det_in : in STD_LOGIC;
    det_out : out STD_LOGIC
  );

end GateKeeper_BD_GateKeeper_2_0;

architecture stub of GateKeeper_BD_GateKeeper_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,enable,window[15:0],pulseShaper_width[7:0],det_in,det_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "GateKeeper,Vivado 2023.2";
begin
end;
