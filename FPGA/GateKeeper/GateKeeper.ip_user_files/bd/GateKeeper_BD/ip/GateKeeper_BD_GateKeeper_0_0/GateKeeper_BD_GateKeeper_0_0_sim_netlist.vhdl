-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr  3 16:27:09 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_GateKeeper_0_0/GateKeeper_BD_GateKeeper_0_0_sim_netlist.vhdl
-- Design      : GateKeeper_BD_GateKeeper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_GateKeeper_0_0_GateKeeper is
  port (
    det_out : out STD_LOGIC;
    GateKeeper : out STD_LOGIC;
    enable : in STD_LOGIC;
    det_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    window : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GateKeeper_BD_GateKeeper_0_0_GateKeeper : entity is "GateKeeper";
end GateKeeper_BD_GateKeeper_0_0_GateKeeper;

architecture STRUCTURE of GateKeeper_BD_GateKeeper_0_0_GateKeeper is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \^gatekeeper\ : STD_LOGIC;
  signal GateKeeper_i_1_n_0 : STD_LOGIC;
  signal GateKeeper_i_2_n_0 : STD_LOGIC;
  signal c : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \c1__7_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \c1__7_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \c1__7_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \c1__7_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \c1__7_carry__0_n_1\ : STD_LOGIC;
  signal \c1__7_carry__0_n_2\ : STD_LOGIC;
  signal \c1__7_carry__0_n_3\ : STD_LOGIC;
  signal \c1__7_carry_i_1_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_2_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_3_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_4_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_5_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_6_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_7_n_0\ : STD_LOGIC;
  signal \c1__7_carry_i_8_n_0\ : STD_LOGIC;
  signal \c1__7_carry_n_0\ : STD_LOGIC;
  signal \c1__7_carry_n_1\ : STD_LOGIC;
  signal \c1__7_carry_n_2\ : STD_LOGIC;
  signal \c1__7_carry_n_3\ : STD_LOGIC;
  signal \c1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \c1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \c1_carry__0_n_0\ : STD_LOGIC;
  signal \c1_carry__0_n_1\ : STD_LOGIC;
  signal \c1_carry__0_n_2\ : STD_LOGIC;
  signal \c1_carry__0_n_3\ : STD_LOGIC;
  signal c1_carry_i_1_n_0 : STD_LOGIC;
  signal c1_carry_i_2_n_0 : STD_LOGIC;
  signal c1_carry_i_3_n_0 : STD_LOGIC;
  signal c1_carry_i_4_n_0 : STD_LOGIC;
  signal c1_carry_i_5_n_0 : STD_LOGIC;
  signal c1_carry_i_6_n_0 : STD_LOGIC;
  signal c1_carry_i_7_n_0 : STD_LOGIC;
  signal c1_carry_i_8_n_0 : STD_LOGIC;
  signal c1_carry_n_0 : STD_LOGIC;
  signal c1_carry_n_1 : STD_LOGIC;
  signal c1_carry_n_2 : STD_LOGIC;
  signal c1_carry_n_3 : STD_LOGIC;
  signal \c[15]_i_1_n_0\ : STD_LOGIC;
  signal \c_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \c_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \c_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \c_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \c_reg[15]_i_3_n_2\ : STD_LOGIC;
  signal \c_reg[15]_i_3_n_3\ : STD_LOGIC;
  signal \c_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \c_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \c_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \c_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \c_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \c_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \c_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \c_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \c_reg_n_0_[0]\ : STD_LOGIC;
  signal \c_reg_n_0_[10]\ : STD_LOGIC;
  signal \c_reg_n_0_[11]\ : STD_LOGIC;
  signal \c_reg_n_0_[12]\ : STD_LOGIC;
  signal \c_reg_n_0_[13]\ : STD_LOGIC;
  signal \c_reg_n_0_[14]\ : STD_LOGIC;
  signal \c_reg_n_0_[15]\ : STD_LOGIC;
  signal \c_reg_n_0_[1]\ : STD_LOGIC;
  signal \c_reg_n_0_[2]\ : STD_LOGIC;
  signal \c_reg_n_0_[3]\ : STD_LOGIC;
  signal \c_reg_n_0_[4]\ : STD_LOGIC;
  signal \c_reg_n_0_[5]\ : STD_LOGIC;
  signal \c_reg_n_0_[6]\ : STD_LOGIC;
  signal \c_reg_n_0_[7]\ : STD_LOGIC;
  signal \c_reg_n_0_[8]\ : STD_LOGIC;
  signal \c_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_c1__7_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c1__7_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_c1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_c_reg[15]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_c_reg[15]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "iSTATE:01,iSTATE0:10,iSTATE1:00,iSTATE2:11";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of \c1__7_carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \c1__7_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of c1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \c1_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \c_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \c_reg[15]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \c_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \c_reg[8]_i_2\ : label is 35;
begin
  GateKeeper <= \^gatekeeper\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F522F5AAF500F500"
    )
        port map (
      I0 => enable,
      I1 => \c1_carry__0_n_0\,
      I2 => p_0_in,
      I3 => state(0),
      I4 => state(1),
      I5 => det_in,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5FF0A00F5DD0A00"
    )
        port map (
      I0 => enable,
      I1 => \c1_carry__0_n_0\,
      I2 => p_0_in,
      I3 => state(0),
      I4 => state(1),
      I5 => det_in,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
GateKeeper_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => GateKeeper_i_2_n_0,
      I1 => enable,
      O => GateKeeper_i_1_n_0
    );
GateKeeper_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCFF5CF30003500"
    )
        port map (
      I0 => det_in,
      I1 => p_0_in,
      I2 => state(0),
      I3 => state(1),
      I4 => \c1_carry__0_n_0\,
      I5 => \^gatekeeper\,
      O => GateKeeper_i_2_n_0
    );
GateKeeper_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => GateKeeper_i_1_n_0,
      Q => \^gatekeeper\,
      R => '0'
    );
\c1__7_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c1__7_carry_n_0\,
      CO(2) => \c1__7_carry_n_1\,
      CO(1) => \c1__7_carry_n_2\,
      CO(0) => \c1__7_carry_n_3\,
      CYINIT => '0',
      DI(3) => \c1__7_carry_i_1_n_0\,
      DI(2) => \c1__7_carry_i_2_n_0\,
      DI(1) => \c1__7_carry_i_3_n_0\,
      DI(0) => \c1__7_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_c1__7_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \c1__7_carry_i_5_n_0\,
      S(2) => \c1__7_carry_i_6_n_0\,
      S(1) => \c1__7_carry_i_7_n_0\,
      S(0) => \c1__7_carry_i_8_n_0\
    );
\c1__7_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \c1__7_carry_n_0\,
      CO(3) => p_0_in,
      CO(2) => \c1__7_carry__0_n_1\,
      CO(1) => \c1__7_carry__0_n_2\,
      CO(0) => \c1__7_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_c1__7_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \c1__7_carry__0_i_1_n_0\,
      S(2) => \c1__7_carry__0_i_2_n_0\,
      S(1) => \c1__7_carry__0_i_3_n_0\,
      S(0) => \c1__7_carry__0_i_4_n_0\
    );
\c1__7_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[14]\,
      I1 => \c_reg_n_0_[15]\,
      O => \c1__7_carry__0_i_1_n_0\
    );
\c1__7_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[12]\,
      I1 => \c_reg_n_0_[13]\,
      O => \c1__7_carry__0_i_2_n_0\
    );
\c1__7_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[10]\,
      I1 => \c_reg_n_0_[11]\,
      O => \c1__7_carry__0_i_3_n_0\
    );
\c1__7_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \c_reg_n_0_[8]\,
      I1 => \c_reg_n_0_[9]\,
      O => \c1__7_carry__0_i_4_n_0\
    );
\c1__7_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pulseShaper_width(6),
      I1 => \c_reg_n_0_[6]\,
      I2 => \c_reg_n_0_[7]\,
      I3 => pulseShaper_width(7),
      O => \c1__7_carry_i_1_n_0\
    );
\c1__7_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pulseShaper_width(4),
      I1 => \c_reg_n_0_[4]\,
      I2 => \c_reg_n_0_[5]\,
      I3 => pulseShaper_width(5),
      O => \c1__7_carry_i_2_n_0\
    );
\c1__7_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pulseShaper_width(2),
      I1 => \c_reg_n_0_[2]\,
      I2 => \c_reg_n_0_[3]\,
      I3 => pulseShaper_width(3),
      O => \c1__7_carry_i_3_n_0\
    );
\c1__7_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => pulseShaper_width(0),
      I1 => \c_reg_n_0_[0]\,
      I2 => \c_reg_n_0_[1]\,
      I3 => pulseShaper_width(1),
      O => \c1__7_carry_i_4_n_0\
    );
\c1__7_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulseShaper_width(6),
      I1 => \c_reg_n_0_[6]\,
      I2 => pulseShaper_width(7),
      I3 => \c_reg_n_0_[7]\,
      O => \c1__7_carry_i_5_n_0\
    );
\c1__7_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulseShaper_width(4),
      I1 => \c_reg_n_0_[4]\,
      I2 => pulseShaper_width(5),
      I3 => \c_reg_n_0_[5]\,
      O => \c1__7_carry_i_6_n_0\
    );
\c1__7_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulseShaper_width(2),
      I1 => \c_reg_n_0_[2]\,
      I2 => pulseShaper_width(3),
      I3 => \c_reg_n_0_[3]\,
      O => \c1__7_carry_i_7_n_0\
    );
\c1__7_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => pulseShaper_width(0),
      I1 => \c_reg_n_0_[0]\,
      I2 => pulseShaper_width(1),
      I3 => \c_reg_n_0_[1]\,
      O => \c1__7_carry_i_8_n_0\
    );
c1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => c1_carry_n_0,
      CO(2) => c1_carry_n_1,
      CO(1) => c1_carry_n_2,
      CO(0) => c1_carry_n_3,
      CYINIT => '0',
      DI(3) => c1_carry_i_1_n_0,
      DI(2) => c1_carry_i_2_n_0,
      DI(1) => c1_carry_i_3_n_0,
      DI(0) => c1_carry_i_4_n_0,
      O(3 downto 0) => NLW_c1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => c1_carry_i_5_n_0,
      S(2) => c1_carry_i_6_n_0,
      S(1) => c1_carry_i_7_n_0,
      S(0) => c1_carry_i_8_n_0
    );
\c1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => c1_carry_n_0,
      CO(3) => \c1_carry__0_n_0\,
      CO(2) => \c1_carry__0_n_1\,
      CO(1) => \c1_carry__0_n_2\,
      CO(0) => \c1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \c1_carry__0_i_1_n_0\,
      DI(2) => \c1_carry__0_i_2_n_0\,
      DI(1) => \c1_carry__0_i_3_n_0\,
      DI(0) => \c1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_c1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \c1_carry__0_i_5_n_0\,
      S(2) => \c1_carry__0_i_6_n_0\,
      S(1) => \c1_carry__0_i_7_n_0\,
      S(0) => \c1_carry__0_i_8_n_0\
    );
\c1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(14),
      I1 => \c_reg_n_0_[14]\,
      I2 => \c_reg_n_0_[15]\,
      I3 => window(15),
      O => \c1_carry__0_i_1_n_0\
    );
\c1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(12),
      I1 => \c_reg_n_0_[12]\,
      I2 => \c_reg_n_0_[13]\,
      I3 => window(13),
      O => \c1_carry__0_i_2_n_0\
    );
\c1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(10),
      I1 => \c_reg_n_0_[10]\,
      I2 => \c_reg_n_0_[11]\,
      I3 => window(11),
      O => \c1_carry__0_i_3_n_0\
    );
\c1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(8),
      I1 => \c_reg_n_0_[8]\,
      I2 => \c_reg_n_0_[9]\,
      I3 => window(9),
      O => \c1_carry__0_i_4_n_0\
    );
\c1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(14),
      I1 => \c_reg_n_0_[14]\,
      I2 => window(15),
      I3 => \c_reg_n_0_[15]\,
      O => \c1_carry__0_i_5_n_0\
    );
\c1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(12),
      I1 => \c_reg_n_0_[12]\,
      I2 => window(13),
      I3 => \c_reg_n_0_[13]\,
      O => \c1_carry__0_i_6_n_0\
    );
\c1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(10),
      I1 => \c_reg_n_0_[10]\,
      I2 => window(11),
      I3 => \c_reg_n_0_[11]\,
      O => \c1_carry__0_i_7_n_0\
    );
\c1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(8),
      I1 => \c_reg_n_0_[8]\,
      I2 => window(9),
      I3 => \c_reg_n_0_[9]\,
      O => \c1_carry__0_i_8_n_0\
    );
c1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(6),
      I1 => \c_reg_n_0_[6]\,
      I2 => \c_reg_n_0_[7]\,
      I3 => window(7),
      O => c1_carry_i_1_n_0
    );
c1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(4),
      I1 => \c_reg_n_0_[4]\,
      I2 => \c_reg_n_0_[5]\,
      I3 => window(5),
      O => c1_carry_i_2_n_0
    );
c1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(2),
      I1 => \c_reg_n_0_[2]\,
      I2 => \c_reg_n_0_[3]\,
      I3 => window(3),
      O => c1_carry_i_3_n_0
    );
c1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => window(0),
      I1 => \c_reg_n_0_[0]\,
      I2 => \c_reg_n_0_[1]\,
      I3 => window(1),
      O => c1_carry_i_4_n_0
    );
c1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(6),
      I1 => \c_reg_n_0_[6]\,
      I2 => window(7),
      I3 => \c_reg_n_0_[7]\,
      O => c1_carry_i_5_n_0
    );
c1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(4),
      I1 => \c_reg_n_0_[4]\,
      I2 => window(5),
      I3 => \c_reg_n_0_[5]\,
      O => c1_carry_i_6_n_0
    );
c1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(2),
      I1 => \c_reg_n_0_[2]\,
      I2 => window(3),
      I3 => \c_reg_n_0_[3]\,
      O => c1_carry_i_7_n_0
    );
c1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window(0),
      I1 => \c_reg_n_0_[0]\,
      I2 => window(1),
      I3 => \c_reg_n_0_[1]\,
      O => c1_carry_i_8_n_0
    );
\c[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"33337F7555557F75"
    )
        port map (
      I0 => state(1),
      I1 => \c_reg_n_0_[0]\,
      I2 => \c1_carry__0_n_0\,
      I3 => det_in,
      I4 => state(0),
      I5 => p_0_in,
      O => c(0)
    );
\c[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(10),
      I4 => \c1_carry__0_n_0\,
      O => c(10)
    );
\c[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(11),
      I4 => \c1_carry__0_n_0\,
      O => c(11)
    );
\c[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(12),
      I4 => \c1_carry__0_n_0\,
      O => c(12)
    );
\c[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(13),
      I4 => \c1_carry__0_n_0\,
      O => c(13)
    );
\c[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(14),
      I4 => \c1_carry__0_n_0\,
      O => c(14)
    );
\c[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => enable,
      I1 => det_in,
      I2 => state(0),
      I3 => state(1),
      O => \c[15]_i_1_n_0\
    );
\c[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(15),
      I4 => \c1_carry__0_n_0\,
      O => c(15)
    );
\c[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(1),
      I4 => \c1_carry__0_n_0\,
      O => c(1)
    );
\c[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(2),
      I4 => \c1_carry__0_n_0\,
      O => c(2)
    );
\c[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(3),
      I4 => \c1_carry__0_n_0\,
      O => c(3)
    );
\c[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(4),
      I4 => \c1_carry__0_n_0\,
      O => c(4)
    );
\c[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(5),
      I4 => \c1_carry__0_n_0\,
      O => c(5)
    );
\c[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(6),
      I4 => \c1_carry__0_n_0\,
      O => c(6)
    );
\c[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(7),
      I4 => \c1_carry__0_n_0\,
      O => c(7)
    );
\c[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(8),
      I4 => \c1_carry__0_n_0\,
      O => c(8)
    );
\c[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8008800"
    )
        port map (
      I0 => p_0_in,
      I1 => state(0),
      I2 => state(1),
      I3 => p_1_in(9),
      I4 => \c1_carry__0_n_0\,
      O => c(9)
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(0),
      Q => \c_reg_n_0_[0]\,
      R => '0'
    );
\c_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(10),
      Q => \c_reg_n_0_[10]\,
      R => '0'
    );
\c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(11),
      Q => \c_reg_n_0_[11]\,
      R => '0'
    );
\c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(12),
      Q => \c_reg_n_0_[12]\,
      R => '0'
    );
\c_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[8]_i_2_n_0\,
      CO(3) => \c_reg[12]_i_2_n_0\,
      CO(2) => \c_reg[12]_i_2_n_1\,
      CO(1) => \c_reg[12]_i_2_n_2\,
      CO(0) => \c_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(12 downto 9),
      S(3) => \c_reg_n_0_[12]\,
      S(2) => \c_reg_n_0_[11]\,
      S(1) => \c_reg_n_0_[10]\,
      S(0) => \c_reg_n_0_[9]\
    );
\c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(13),
      Q => \c_reg_n_0_[13]\,
      R => '0'
    );
\c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(14),
      Q => \c_reg_n_0_[14]\,
      R => '0'
    );
\c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(15),
      Q => \c_reg_n_0_[15]\,
      R => '0'
    );
\c_reg[15]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[12]_i_2_n_0\,
      CO(3 downto 2) => \NLW_c_reg[15]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \c_reg[15]_i_3_n_2\,
      CO(0) => \c_reg[15]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_c_reg[15]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(15 downto 13),
      S(3) => '0',
      S(2) => \c_reg_n_0_[15]\,
      S(1) => \c_reg_n_0_[14]\,
      S(0) => \c_reg_n_0_[13]\
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(1),
      Q => \c_reg_n_0_[1]\,
      R => '0'
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(2),
      Q => \c_reg_n_0_[2]\,
      R => '0'
    );
\c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(3),
      Q => \c_reg_n_0_[3]\,
      R => '0'
    );
\c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(4),
      Q => \c_reg_n_0_[4]\,
      R => '0'
    );
\c_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c_reg[4]_i_2_n_0\,
      CO(2) => \c_reg[4]_i_2_n_1\,
      CO(1) => \c_reg[4]_i_2_n_2\,
      CO(0) => \c_reg[4]_i_2_n_3\,
      CYINIT => \c_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(4 downto 1),
      S(3) => \c_reg_n_0_[4]\,
      S(2) => \c_reg_n_0_[3]\,
      S(1) => \c_reg_n_0_[2]\,
      S(0) => \c_reg_n_0_[1]\
    );
\c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(5),
      Q => \c_reg_n_0_[5]\,
      R => '0'
    );
\c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(6),
      Q => \c_reg_n_0_[6]\,
      R => '0'
    );
\c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(7),
      Q => \c_reg_n_0_[7]\,
      R => '0'
    );
\c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(8),
      Q => \c_reg_n_0_[8]\,
      R => '0'
    );
\c_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[4]_i_2_n_0\,
      CO(3) => \c_reg[8]_i_2_n_0\,
      CO(2) => \c_reg[8]_i_2_n_1\,
      CO(1) => \c_reg[8]_i_2_n_2\,
      CO(0) => \c_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_1_in(8 downto 5),
      S(3) => \c_reg_n_0_[8]\,
      S(2) => \c_reg_n_0_[7]\,
      S(1) => \c_reg_n_0_[6]\,
      S(0) => \c_reg_n_0_[5]\
    );
\c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[15]_i_1_n_0\,
      D => c(9),
      Q => \c_reg_n_0_[9]\,
      R => '0'
    );
det_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^gatekeeper\,
      I1 => det_in,
      O => det_out
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_GateKeeper_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    window : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width : in STD_LOGIC_VECTOR ( 7 downto 0 );
    det_in : in STD_LOGIC;
    det_out : out STD_LOGIC;
    GateKeeper : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GateKeeper_BD_GateKeeper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GateKeeper_BD_GateKeeper_0_0 : entity is "GateKeeper_BD_GateKeeper_0_0,GateKeeper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of GateKeeper_BD_GateKeeper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of GateKeeper_BD_GateKeeper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of GateKeeper_BD_GateKeeper_0_0 : entity is "GateKeeper,Vivado 2023.2";
end GateKeeper_BD_GateKeeper_0_0;

architecture STRUCTURE of GateKeeper_BD_GateKeeper_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 400000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.GateKeeper_BD_GateKeeper_0_0_GateKeeper
     port map (
      GateKeeper => GateKeeper,
      clk => clk,
      det_in => det_in,
      det_out => det_out,
      enable => enable,
      pulseShaper_width(7 downto 0) => pulseShaper_width(7 downto 0),
      window(15 downto 0) => window(15 downto 0)
    );
end STRUCTURE;
