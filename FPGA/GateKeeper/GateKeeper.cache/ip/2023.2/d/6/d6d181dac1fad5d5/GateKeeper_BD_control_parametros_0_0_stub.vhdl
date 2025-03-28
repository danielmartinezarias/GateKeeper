-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Fri Mar 28 12:07:47 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_control_parametros_0_0_stub.vhdl
-- Design      : GateKeeper_BD_control_parametros_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    readyRx : in STD_LOGIC;
    bufferRx : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 7 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 7 downto 0 );
    window : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enableGateKeeper : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,readyRx,bufferRx[7:0],SW[7:0],LED[7:0],window[15:0],pulseShaper_width[7:0],enableGateKeeper";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "control_parametros,Vivado 2023.2";
begin
end;
