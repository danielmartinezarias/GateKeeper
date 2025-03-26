-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 26 11:18:48 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_tick_generator_0_0/GateKeeper_BD_tick_generator_0_0_sim_netlist.vhdl
-- Design      : GateKeeper_BD_tick_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_tick_generator_0_0_tick_generator is
  port (
    tick : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GateKeeper_BD_tick_generator_0_0_tick_generator : entity is "tick_generator";
end GateKeeper_BD_tick_generator_0_0_tick_generator;

architecture STRUCTURE of GateKeeper_BD_tick_generator_0_0_tick_generator is
  signal \reg_counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg_counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \reg_counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \reg_counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \reg_counter[4]_i_1_n_0\ : STD_LOGIC;
  signal reg_counter_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^tick\ : STD_LOGIC;
  signal tick0_n_0 : STD_LOGIC;
  signal tick_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \reg_counter[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_counter[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \reg_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \reg_counter[4]_i_1\ : label is "soft_lutpair0";
begin
  tick <= \^tick\;
\reg_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reg_counter_reg(0),
      O => \reg_counter[0]_i_1_n_0\
    );
\reg_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg_counter_reg(0),
      I1 => reg_counter_reg(1),
      O => \reg_counter[1]_i_1_n_0\
    );
\reg_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => reg_counter_reg(0),
      I1 => reg_counter_reg(1),
      I2 => reg_counter_reg(2),
      O => \reg_counter[2]_i_1_n_0\
    );
\reg_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => reg_counter_reg(1),
      I1 => reg_counter_reg(0),
      I2 => reg_counter_reg(2),
      I3 => reg_counter_reg(3),
      O => \reg_counter[3]_i_1_n_0\
    );
\reg_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => reg_counter_reg(2),
      I1 => reg_counter_reg(0),
      I2 => reg_counter_reg(1),
      I3 => reg_counter_reg(3),
      I4 => reg_counter_reg(4),
      O => \reg_counter[4]_i_1_n_0\
    );
\reg_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_counter[0]_i_1_n_0\,
      Q => reg_counter_reg(0),
      R => tick0_n_0
    );
\reg_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_counter[1]_i_1_n_0\,
      Q => reg_counter_reg(1),
      R => tick0_n_0
    );
\reg_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_counter[2]_i_1_n_0\,
      Q => reg_counter_reg(2),
      R => tick0_n_0
    );
\reg_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_counter[3]_i_1_n_0\,
      Q => reg_counter_reg(3),
      R => tick0_n_0
    );
\reg_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \reg_counter[4]_i_1_n_0\,
      Q => reg_counter_reg(4),
      R => tick0_n_0
    );
tick0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8880000"
    )
        port map (
      I0 => reg_counter_reg(3),
      I1 => reg_counter_reg(2),
      I2 => reg_counter_reg(0),
      I3 => reg_counter_reg(1),
      I4 => reg_counter_reg(4),
      O => tick0_n_0
    );
tick_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"557FFFFFAA800000"
    )
        port map (
      I0 => reg_counter_reg(4),
      I1 => reg_counter_reg(1),
      I2 => reg_counter_reg(0),
      I3 => reg_counter_reg(2),
      I4 => reg_counter_reg(3),
      I5 => \^tick\,
      O => tick_i_1_n_0
    );
tick_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tick_i_1_n_0,
      Q => \^tick\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_tick_generator_0_0 is
  port (
    clk : in STD_LOGIC;
    tick : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GateKeeper_BD_tick_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GateKeeper_BD_tick_generator_0_0 : entity is "GateKeeper_BD_tick_generator_0_0,tick_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of GateKeeper_BD_tick_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of GateKeeper_BD_tick_generator_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of GateKeeper_BD_tick_generator_0_0 : entity is "tick_generator,Vivado 2023.2";
end GateKeeper_BD_tick_generator_0_0;

architecture STRUCTURE of GateKeeper_BD_tick_generator_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.GateKeeper_BD_tick_generator_0_0_tick_generator
     port map (
      clk => clk,
      tick => tick
    );
end STRUCTURE;
