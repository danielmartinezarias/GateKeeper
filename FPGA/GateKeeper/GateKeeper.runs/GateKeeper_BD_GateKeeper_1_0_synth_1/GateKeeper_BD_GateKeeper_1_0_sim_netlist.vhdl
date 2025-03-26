-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 26 11:18:49 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ GateKeeper_BD_GateKeeper_1_0_sim_netlist.vhdl
-- Design      : GateKeeper_BD_GateKeeper_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper is
  port (
    det_out : out STD_LOGIC;
    pulseShaper_width : in STD_LOGIC_VECTOR ( 7 downto 0 );
    det_in : in STD_LOGIC;
    enable : in STD_LOGIC;
    clk : in STD_LOGIC;
    window : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper is
  signal \c2[0]_i_1_n_0\ : STD_LOGIC;
  signal \c2[7]_i_1_n_0\ : STD_LOGIC;
  signal \c2[7]_i_2_n_0\ : STD_LOGIC;
  signal \c2[7]_i_4_n_0\ : STD_LOGIC;
  signal c2_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \c[0]_i_1_n_0\ : STD_LOGIC;
  signal \c[0]_i_3_n_0\ : STD_LOGIC;
  signal \c[0]_i_4_n_0\ : STD_LOGIC;
  signal \c[0]_i_5_n_0\ : STD_LOGIC;
  signal \c[0]_i_6_n_0\ : STD_LOGIC;
  signal \c[0]_i_7_n_0\ : STD_LOGIC;
  signal \c[12]_i_2_n_0\ : STD_LOGIC;
  signal \c[12]_i_3_n_0\ : STD_LOGIC;
  signal \c[12]_i_4_n_0\ : STD_LOGIC;
  signal \c[12]_i_5_n_0\ : STD_LOGIC;
  signal \c[4]_i_2_n_0\ : STD_LOGIC;
  signal \c[4]_i_3_n_0\ : STD_LOGIC;
  signal \c[4]_i_4_n_0\ : STD_LOGIC;
  signal \c[4]_i_5_n_0\ : STD_LOGIC;
  signal \c[8]_i_2_n_0\ : STD_LOGIC;
  signal \c[8]_i_3_n_0\ : STD_LOGIC;
  signal \c[8]_i_4_n_0\ : STD_LOGIC;
  signal \c[8]_i_5_n_0\ : STD_LOGIC;
  signal c_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \c_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \c_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \c_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \c_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \c_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \^det_out\ : STD_LOGIC;
  signal det_out0 : STD_LOGIC;
  signal \det_out0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \det_out0_carry__0_n_1\ : STD_LOGIC;
  signal \det_out0_carry__0_n_2\ : STD_LOGIC;
  signal \det_out0_carry__0_n_3\ : STD_LOGIC;
  signal det_out0_carry_i_1_n_0 : STD_LOGIC;
  signal det_out0_carry_i_2_n_0 : STD_LOGIC;
  signal det_out0_carry_i_3_n_0 : STD_LOGIC;
  signal det_out0_carry_i_4_n_0 : STD_LOGIC;
  signal det_out0_carry_i_5_n_0 : STD_LOGIC;
  signal det_out0_carry_i_6_n_0 : STD_LOGIC;
  signal det_out0_carry_i_7_n_0 : STD_LOGIC;
  signal det_out0_carry_i_8_n_0 : STD_LOGIC;
  signal det_out0_carry_n_0 : STD_LOGIC;
  signal det_out0_carry_n_1 : STD_LOGIC;
  signal det_out0_carry_n_2 : STD_LOGIC;
  signal det_out0_carry_n_3 : STD_LOGIC;
  signal det_out1 : STD_LOGIC;
  signal \det_out1__3_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_1\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_2\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_3\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_4\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_5\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_6\ : STD_LOGIC;
  signal \det_out1__3_carry__0_n_7\ : STD_LOGIC;
  signal \det_out1__3_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_1\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_2\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_3\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_4\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_5\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_6\ : STD_LOGIC;
  signal \det_out1__3_carry__1_n_7\ : STD_LOGIC;
  signal \det_out1__3_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry__2_n_2\ : STD_LOGIC;
  signal \det_out1__3_carry__2_n_3\ : STD_LOGIC;
  signal \det_out1__3_carry__2_n_5\ : STD_LOGIC;
  signal \det_out1__3_carry__2_n_6\ : STD_LOGIC;
  signal \det_out1__3_carry__2_n_7\ : STD_LOGIC;
  signal \det_out1__3_carry_i_1_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry_i_2_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry_i_3_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry_i_4_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry_n_0\ : STD_LOGIC;
  signal \det_out1__3_carry_n_1\ : STD_LOGIC;
  signal \det_out1__3_carry_n_2\ : STD_LOGIC;
  signal \det_out1__3_carry_n_3\ : STD_LOGIC;
  signal \det_out1__3_carry_n_4\ : STD_LOGIC;
  signal \det_out1__3_carry_n_5\ : STD_LOGIC;
  signal \det_out1__3_carry_n_6\ : STD_LOGIC;
  signal \det_out1__3_carry_n_7\ : STD_LOGIC;
  signal \det_out1_carry__0_n_7\ : STD_LOGIC;
  signal det_out1_carry_i_10_n_0 : STD_LOGIC;
  signal det_out1_carry_i_1_n_0 : STD_LOGIC;
  signal det_out1_carry_i_2_n_0 : STD_LOGIC;
  signal det_out1_carry_i_3_n_0 : STD_LOGIC;
  signal det_out1_carry_i_4_n_0 : STD_LOGIC;
  signal det_out1_carry_i_5_n_0 : STD_LOGIC;
  signal det_out1_carry_i_6_n_0 : STD_LOGIC;
  signal det_out1_carry_i_7_n_0 : STD_LOGIC;
  signal det_out1_carry_i_8_n_0 : STD_LOGIC;
  signal det_out1_carry_i_9_n_0 : STD_LOGIC;
  signal det_out1_carry_n_1 : STD_LOGIC;
  signal det_out1_carry_n_2 : STD_LOGIC;
  signal det_out1_carry_n_3 : STD_LOGIC;
  signal det_out_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal state_i_1_n_0 : STD_LOGIC;
  signal state_reg_n_0 : STD_LOGIC;
  signal \NLW_c_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_det_out0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_det_out0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_det_out1__3_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_det_out1__3_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_det_out1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_det_out1_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_det_out1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \c2[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \c2[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \c2[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c2[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \c2[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \c2[7]_i_3\ : label is "soft_lutpair1";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \c_reg[0]_i_2\ : label is 11;
  attribute ADDER_THRESHOLD of \c_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \c_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \c_reg[8]_i_1\ : label is 11;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of det_out0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \det_out0_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD of \det_out1__3_carry\ : label is 35;
  attribute ADDER_THRESHOLD of \det_out1__3_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \det_out1__3_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \det_out1__3_carry__2\ : label is 35;
begin
  det_out <= \^det_out\;
\c2[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => c2_reg(0),
      O => \c2[0]_i_1_n_0\
    );
\c2[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => c2_reg(0),
      I1 => c2_reg(1),
      O => p_0_in(1)
    );
\c2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => c2_reg(0),
      I1 => c2_reg(1),
      I2 => c2_reg(2),
      O => p_0_in(2)
    );
\c2[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => c2_reg(1),
      I1 => c2_reg(0),
      I2 => c2_reg(2),
      I3 => c2_reg(3),
      O => p_0_in(3)
    );
\c2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => c2_reg(2),
      I1 => c2_reg(0),
      I2 => c2_reg(1),
      I3 => c2_reg(3),
      I4 => c2_reg(4),
      O => p_0_in(4)
    );
\c2[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => c2_reg(3),
      I1 => c2_reg(1),
      I2 => c2_reg(0),
      I3 => c2_reg(2),
      I4 => c2_reg(4),
      I5 => c2_reg(5),
      O => p_0_in(5)
    );
\c2[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \c2[7]_i_4_n_0\,
      I1 => c2_reg(6),
      O => p_0_in(6)
    );
\c2[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => enable,
      I1 => \det_out1_carry__0_n_7\,
      I2 => state_reg_n_0,
      O => \c2[7]_i_1_n_0\
    );
\c2[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => state_reg_n_0,
      I1 => enable,
      O => \c2[7]_i_2_n_0\
    );
\c2[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \c2[7]_i_4_n_0\,
      I1 => c2_reg(6),
      I2 => c2_reg(7),
      O => p_0_in(7)
    );
\c2[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => c2_reg(5),
      I1 => c2_reg(3),
      I2 => c2_reg(1),
      I3 => c2_reg(0),
      I4 => c2_reg(2),
      I5 => c2_reg(4),
      O => \c2[7]_i_4_n_0\
    );
\c2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => \c2[0]_i_1_n_0\,
      Q => c2_reg(0),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => c2_reg(1),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => c2_reg(2),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(3),
      Q => c2_reg(3),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => c2_reg(4),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => c2_reg(5),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(6),
      Q => c2_reg(6),
      R => \c2[7]_i_1_n_0\
    );
\c2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c2[7]_i_2_n_0\,
      D => p_0_in(7),
      Q => c2_reg(7),
      R => \c2[7]_i_1_n_0\
    );
\c[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => enable,
      I1 => state_reg_n_0,
      O => \c[0]_i_1_n_0\
    );
\c[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(0),
      I1 => det_in,
      I2 => c_reg(0),
      O => \c[0]_i_3_n_0\
    );
\c[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(3),
      I1 => det_in,
      I2 => c_reg(3),
      O => \c[0]_i_4_n_0\
    );
\c[0]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(2),
      I1 => det_in,
      I2 => c_reg(2),
      O => \c[0]_i_5_n_0\
    );
\c[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(1),
      I1 => det_in,
      I2 => c_reg(1),
      O => \c[0]_i_6_n_0\
    );
\c[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => c_reg(0),
      I1 => pulseShaper_width(0),
      I2 => det_in,
      O => \c[0]_i_7_n_0\
    );
\c[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(15),
      I1 => det_in,
      O => \c[12]_i_2_n_0\
    );
\c[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(14),
      I1 => det_in,
      O => \c[12]_i_3_n_0\
    );
\c[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(13),
      I1 => det_in,
      O => \c[12]_i_4_n_0\
    );
\c[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(12),
      I1 => det_in,
      O => \c[12]_i_5_n_0\
    );
\c[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(7),
      I1 => det_in,
      I2 => c_reg(7),
      O => \c[4]_i_2_n_0\
    );
\c[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(6),
      I1 => det_in,
      I2 => c_reg(6),
      O => \c[4]_i_3_n_0\
    );
\c[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(5),
      I1 => det_in,
      I2 => c_reg(5),
      O => \c[4]_i_4_n_0\
    );
\c[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => pulseShaper_width(4),
      I1 => det_in,
      I2 => c_reg(4),
      O => \c[4]_i_5_n_0\
    );
\c[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(11),
      I1 => det_in,
      O => \c[8]_i_2_n_0\
    );
\c[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(10),
      I1 => det_in,
      O => \c[8]_i_3_n_0\
    );
\c[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(9),
      I1 => det_in,
      O => \c[8]_i_4_n_0\
    );
\c[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => c_reg(8),
      I1 => det_in,
      O => \c[8]_i_5_n_0\
    );
\c_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[0]_i_2_n_7\,
      Q => c_reg(0),
      R => '0'
    );
\c_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \c_reg[0]_i_2_n_0\,
      CO(2) => \c_reg[0]_i_2_n_1\,
      CO(1) => \c_reg[0]_i_2_n_2\,
      CO(0) => \c_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \c[0]_i_3_n_0\,
      O(3) => \c_reg[0]_i_2_n_4\,
      O(2) => \c_reg[0]_i_2_n_5\,
      O(1) => \c_reg[0]_i_2_n_6\,
      O(0) => \c_reg[0]_i_2_n_7\,
      S(3) => \c[0]_i_4_n_0\,
      S(2) => \c[0]_i_5_n_0\,
      S(1) => \c[0]_i_6_n_0\,
      S(0) => \c[0]_i_7_n_0\
    );
\c_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[8]_i_1_n_5\,
      Q => c_reg(10),
      R => '0'
    );
\c_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[8]_i_1_n_4\,
      Q => c_reg(11),
      R => '0'
    );
\c_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[12]_i_1_n_7\,
      Q => c_reg(12),
      R => '0'
    );
\c_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[8]_i_1_n_0\,
      CO(3) => \NLW_c_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \c_reg[12]_i_1_n_1\,
      CO(1) => \c_reg[12]_i_1_n_2\,
      CO(0) => \c_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_reg[12]_i_1_n_4\,
      O(2) => \c_reg[12]_i_1_n_5\,
      O(1) => \c_reg[12]_i_1_n_6\,
      O(0) => \c_reg[12]_i_1_n_7\,
      S(3) => \c[12]_i_2_n_0\,
      S(2) => \c[12]_i_3_n_0\,
      S(1) => \c[12]_i_4_n_0\,
      S(0) => \c[12]_i_5_n_0\
    );
\c_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[12]_i_1_n_6\,
      Q => c_reg(13),
      R => '0'
    );
\c_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[12]_i_1_n_5\,
      Q => c_reg(14),
      R => '0'
    );
\c_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[12]_i_1_n_4\,
      Q => c_reg(15),
      R => '0'
    );
\c_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[0]_i_2_n_6\,
      Q => c_reg(1),
      R => '0'
    );
\c_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[0]_i_2_n_5\,
      Q => c_reg(2),
      R => '0'
    );
\c_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[0]_i_2_n_4\,
      Q => c_reg(3),
      R => '0'
    );
\c_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[4]_i_1_n_7\,
      Q => c_reg(4),
      R => '0'
    );
\c_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[0]_i_2_n_0\,
      CO(3) => \c_reg[4]_i_1_n_0\,
      CO(2) => \c_reg[4]_i_1_n_1\,
      CO(1) => \c_reg[4]_i_1_n_2\,
      CO(0) => \c_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_reg[4]_i_1_n_4\,
      O(2) => \c_reg[4]_i_1_n_5\,
      O(1) => \c_reg[4]_i_1_n_6\,
      O(0) => \c_reg[4]_i_1_n_7\,
      S(3) => \c[4]_i_2_n_0\,
      S(2) => \c[4]_i_3_n_0\,
      S(1) => \c[4]_i_4_n_0\,
      S(0) => \c[4]_i_5_n_0\
    );
\c_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[4]_i_1_n_6\,
      Q => c_reg(5),
      R => '0'
    );
\c_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[4]_i_1_n_5\,
      Q => c_reg(6),
      R => '0'
    );
\c_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[4]_i_1_n_4\,
      Q => c_reg(7),
      R => '0'
    );
\c_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[8]_i_1_n_7\,
      Q => c_reg(8),
      R => '0'
    );
\c_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \c_reg[4]_i_1_n_0\,
      CO(3) => \c_reg[8]_i_1_n_0\,
      CO(2) => \c_reg[8]_i_1_n_1\,
      CO(1) => \c_reg[8]_i_1_n_2\,
      CO(0) => \c_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \c_reg[8]_i_1_n_4\,
      O(2) => \c_reg[8]_i_1_n_5\,
      O(1) => \c_reg[8]_i_1_n_6\,
      O(0) => \c_reg[8]_i_1_n_7\,
      S(3) => \c[8]_i_2_n_0\,
      S(2) => \c[8]_i_3_n_0\,
      S(1) => \c[8]_i_4_n_0\,
      S(0) => \c[8]_i_5_n_0\
    );
\c_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \c[0]_i_1_n_0\,
      D => \c_reg[8]_i_1_n_6\,
      Q => c_reg(9),
      R => '0'
    );
det_out0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => det_out0_carry_n_0,
      CO(2) => det_out0_carry_n_1,
      CO(1) => det_out0_carry_n_2,
      CO(0) => det_out0_carry_n_3,
      CYINIT => '1',
      DI(3) => det_out0_carry_i_1_n_0,
      DI(2) => det_out0_carry_i_2_n_0,
      DI(1) => det_out0_carry_i_3_n_0,
      DI(0) => det_out0_carry_i_4_n_0,
      O(3 downto 0) => NLW_det_out0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => det_out0_carry_i_5_n_0,
      S(2) => det_out0_carry_i_6_n_0,
      S(1) => det_out0_carry_i_7_n_0,
      S(0) => det_out0_carry_i_8_n_0
    );
\det_out0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => det_out0_carry_n_0,
      CO(3) => det_out0,
      CO(2) => \det_out0_carry__0_n_1\,
      CO(1) => \det_out0_carry__0_n_2\,
      CO(0) => \det_out0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \det_out0_carry__0_i_1_n_0\,
      DI(2) => \det_out0_carry__0_i_2_n_0\,
      DI(1) => \det_out0_carry__0_i_3_n_0\,
      DI(0) => \det_out0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_det_out0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \det_out0_carry__0_i_5_n_0\,
      S(2) => \det_out0_carry__0_i_6_n_0\,
      S(1) => \det_out0_carry__0_i_7_n_0\,
      S(0) => \det_out0_carry__0_i_8_n_0\
    );
\det_out0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(14),
      I1 => \det_out1__3_carry__2_n_6\,
      I2 => \det_out1__3_carry__2_n_5\,
      I3 => c_reg(15),
      O => \det_out0_carry__0_i_1_n_0\
    );
\det_out0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(12),
      I1 => \det_out1__3_carry__1_n_4\,
      I2 => \det_out1__3_carry__2_n_7\,
      I3 => c_reg(13),
      O => \det_out0_carry__0_i_2_n_0\
    );
\det_out0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(10),
      I1 => \det_out1__3_carry__1_n_6\,
      I2 => \det_out1__3_carry__1_n_5\,
      I3 => c_reg(11),
      O => \det_out0_carry__0_i_3_n_0\
    );
\det_out0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(8),
      I1 => \det_out1__3_carry__0_n_4\,
      I2 => \det_out1__3_carry__1_n_7\,
      I3 => c_reg(9),
      O => \det_out0_carry__0_i_4_n_0\
    );
\det_out0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(14),
      I1 => \det_out1__3_carry__2_n_6\,
      I2 => c_reg(15),
      I3 => \det_out1__3_carry__2_n_5\,
      O => \det_out0_carry__0_i_5_n_0\
    );
\det_out0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(12),
      I1 => \det_out1__3_carry__1_n_4\,
      I2 => c_reg(13),
      I3 => \det_out1__3_carry__2_n_7\,
      O => \det_out0_carry__0_i_6_n_0\
    );
\det_out0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(10),
      I1 => \det_out1__3_carry__1_n_6\,
      I2 => c_reg(11),
      I3 => \det_out1__3_carry__1_n_5\,
      O => \det_out0_carry__0_i_7_n_0\
    );
\det_out0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(8),
      I1 => \det_out1__3_carry__0_n_4\,
      I2 => c_reg(9),
      I3 => \det_out1__3_carry__1_n_7\,
      O => \det_out0_carry__0_i_8_n_0\
    );
det_out0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(6),
      I1 => \det_out1__3_carry__0_n_6\,
      I2 => \det_out1__3_carry__0_n_5\,
      I3 => c_reg(7),
      O => det_out0_carry_i_1_n_0
    );
det_out0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(4),
      I1 => \det_out1__3_carry_n_4\,
      I2 => \det_out1__3_carry__0_n_7\,
      I3 => c_reg(5),
      O => det_out0_carry_i_2_n_0
    );
det_out0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => c_reg(2),
      I1 => \det_out1__3_carry_n_6\,
      I2 => \det_out1__3_carry_n_5\,
      I3 => c_reg(3),
      O => det_out0_carry_i_3_n_0
    );
det_out0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F08"
    )
        port map (
      I0 => window(0),
      I1 => c_reg(0),
      I2 => \det_out1__3_carry_n_7\,
      I3 => c_reg(1),
      O => det_out0_carry_i_4_n_0
    );
det_out0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(6),
      I1 => \det_out1__3_carry__0_n_6\,
      I2 => c_reg(7),
      I3 => \det_out1__3_carry__0_n_5\,
      O => det_out0_carry_i_5_n_0
    );
det_out0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(4),
      I1 => \det_out1__3_carry_n_4\,
      I2 => c_reg(5),
      I3 => \det_out1__3_carry__0_n_7\,
      O => det_out0_carry_i_6_n_0
    );
det_out0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => c_reg(2),
      I1 => \det_out1__3_carry_n_6\,
      I2 => c_reg(3),
      I3 => \det_out1__3_carry_n_5\,
      O => det_out0_carry_i_7_n_0
    );
det_out0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => c_reg(0),
      I1 => window(0),
      I2 => c_reg(1),
      I3 => \det_out1__3_carry_n_7\,
      O => det_out0_carry_i_8_n_0
    );
\det_out1__3_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \det_out1__3_carry_n_0\,
      CO(2) => \det_out1__3_carry_n_1\,
      CO(1) => \det_out1__3_carry_n_2\,
      CO(0) => \det_out1__3_carry_n_3\,
      CYINIT => window(0),
      DI(3 downto 0) => window(4 downto 1),
      O(3) => \det_out1__3_carry_n_4\,
      O(2) => \det_out1__3_carry_n_5\,
      O(1) => \det_out1__3_carry_n_6\,
      O(0) => \det_out1__3_carry_n_7\,
      S(3) => \det_out1__3_carry_i_1_n_0\,
      S(2) => \det_out1__3_carry_i_2_n_0\,
      S(1) => \det_out1__3_carry_i_3_n_0\,
      S(0) => \det_out1__3_carry_i_4_n_0\
    );
\det_out1__3_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \det_out1__3_carry_n_0\,
      CO(3) => \det_out1__3_carry__0_n_0\,
      CO(2) => \det_out1__3_carry__0_n_1\,
      CO(1) => \det_out1__3_carry__0_n_2\,
      CO(0) => \det_out1__3_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => window(8 downto 5),
      O(3) => \det_out1__3_carry__0_n_4\,
      O(2) => \det_out1__3_carry__0_n_5\,
      O(1) => \det_out1__3_carry__0_n_6\,
      O(0) => \det_out1__3_carry__0_n_7\,
      S(3) => \det_out1__3_carry__0_i_1_n_0\,
      S(2) => \det_out1__3_carry__0_i_2_n_0\,
      S(1) => \det_out1__3_carry__0_i_3_n_0\,
      S(0) => \det_out1__3_carry__0_i_4_n_0\
    );
\det_out1__3_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(8),
      O => \det_out1__3_carry__0_i_1_n_0\
    );
\det_out1__3_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(7),
      O => \det_out1__3_carry__0_i_2_n_0\
    );
\det_out1__3_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(6),
      O => \det_out1__3_carry__0_i_3_n_0\
    );
\det_out1__3_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(5),
      O => \det_out1__3_carry__0_i_4_n_0\
    );
\det_out1__3_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \det_out1__3_carry__0_n_0\,
      CO(3) => \det_out1__3_carry__1_n_0\,
      CO(2) => \det_out1__3_carry__1_n_1\,
      CO(1) => \det_out1__3_carry__1_n_2\,
      CO(0) => \det_out1__3_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => window(12 downto 9),
      O(3) => \det_out1__3_carry__1_n_4\,
      O(2) => \det_out1__3_carry__1_n_5\,
      O(1) => \det_out1__3_carry__1_n_6\,
      O(0) => \det_out1__3_carry__1_n_7\,
      S(3) => \det_out1__3_carry__1_i_1_n_0\,
      S(2) => \det_out1__3_carry__1_i_2_n_0\,
      S(1) => \det_out1__3_carry__1_i_3_n_0\,
      S(0) => \det_out1__3_carry__1_i_4_n_0\
    );
\det_out1__3_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(12),
      O => \det_out1__3_carry__1_i_1_n_0\
    );
\det_out1__3_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(11),
      O => \det_out1__3_carry__1_i_2_n_0\
    );
\det_out1__3_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(10),
      O => \det_out1__3_carry__1_i_3_n_0\
    );
\det_out1__3_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(9),
      O => \det_out1__3_carry__1_i_4_n_0\
    );
\det_out1__3_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \det_out1__3_carry__1_n_0\,
      CO(3 downto 2) => \NLW_det_out1__3_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \det_out1__3_carry__2_n_2\,
      CO(0) => \det_out1__3_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => window(14 downto 13),
      O(3) => \NLW_det_out1__3_carry__2_O_UNCONNECTED\(3),
      O(2) => \det_out1__3_carry__2_n_5\,
      O(1) => \det_out1__3_carry__2_n_6\,
      O(0) => \det_out1__3_carry__2_n_7\,
      S(3) => '0',
      S(2) => \det_out1__3_carry__2_i_1_n_0\,
      S(1) => \det_out1__3_carry__2_i_2_n_0\,
      S(0) => \det_out1__3_carry__2_i_3_n_0\
    );
\det_out1__3_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(15),
      O => \det_out1__3_carry__2_i_1_n_0\
    );
\det_out1__3_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(14),
      O => \det_out1__3_carry__2_i_2_n_0\
    );
\det_out1__3_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(13),
      O => \det_out1__3_carry__2_i_3_n_0\
    );
\det_out1__3_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(4),
      O => \det_out1__3_carry_i_1_n_0\
    );
\det_out1__3_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(3),
      O => \det_out1__3_carry_i_2_n_0\
    );
\det_out1__3_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(2),
      O => \det_out1__3_carry_i_3_n_0\
    );
\det_out1__3_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => window(1),
      O => \det_out1__3_carry_i_4_n_0\
    );
det_out1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => det_out1,
      CO(2) => det_out1_carry_n_1,
      CO(1) => det_out1_carry_n_2,
      CO(0) => det_out1_carry_n_3,
      CYINIT => '0',
      DI(3) => det_out1_carry_i_1_n_0,
      DI(2) => det_out1_carry_i_2_n_0,
      DI(1) => det_out1_carry_i_3_n_0,
      DI(0) => det_out1_carry_i_4_n_0,
      O(3 downto 0) => NLW_det_out1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => det_out1_carry_i_5_n_0,
      S(2) => det_out1_carry_i_6_n_0,
      S(1) => det_out1_carry_i_7_n_0,
      S(0) => det_out1_carry_i_8_n_0
    );
\det_out1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => det_out1,
      CO(3 downto 0) => \NLW_det_out1_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_det_out1_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \det_out1_carry__0_n_7\,
      S(3 downto 0) => B"0001"
    );
det_out1_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4001FD43"
    )
        port map (
      I0 => c2_reg(6),
      I1 => pulseShaper_width(6),
      I2 => det_out1_carry_i_9_n_0,
      I3 => pulseShaper_width(7),
      I4 => c2_reg(7),
      O => det_out1_carry_i_1_n_0
    );
det_out1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => pulseShaper_width(2),
      I1 => pulseShaper_width(0),
      I2 => pulseShaper_width(1),
      I3 => pulseShaper_width(3),
      O => det_out1_carry_i_10_n_0
    );
det_out1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4001FD43"
    )
        port map (
      I0 => c2_reg(4),
      I1 => pulseShaper_width(4),
      I2 => det_out1_carry_i_10_n_0,
      I3 => pulseShaper_width(5),
      I4 => c2_reg(5),
      O => det_out1_carry_i_2_n_0
    );
det_out1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44400001FFFD4443"
    )
        port map (
      I0 => c2_reg(2),
      I1 => pulseShaper_width(2),
      I2 => pulseShaper_width(0),
      I3 => pulseShaper_width(1),
      I4 => pulseShaper_width(3),
      I5 => c2_reg(3),
      O => det_out1_carry_i_3_n_0
    );
det_out1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01D3"
    )
        port map (
      I0 => c2_reg(0),
      I1 => pulseShaper_width(0),
      I2 => pulseShaper_width(1),
      I3 => c2_reg(1),
      O => det_out1_carry_i_4_n_0
    );
det_out1_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => c2_reg(6),
      I1 => pulseShaper_width(6),
      I2 => det_out1_carry_i_9_n_0,
      I3 => pulseShaper_width(7),
      I4 => c2_reg(7),
      O => det_out1_carry_i_5_n_0
    );
det_out1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"94020294"
    )
        port map (
      I0 => c2_reg(4),
      I1 => pulseShaper_width(4),
      I2 => det_out1_carry_i_10_n_0,
      I3 => pulseShaper_width(5),
      I4 => c2_reg(5),
      O => det_out1_carry_i_6_n_0
    );
det_out1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9994000200029994"
    )
        port map (
      I0 => c2_reg(2),
      I1 => pulseShaper_width(2),
      I2 => pulseShaper_width(0),
      I3 => pulseShaper_width(1),
      I4 => pulseShaper_width(3),
      I5 => c2_reg(3),
      O => det_out1_carry_i_7_n_0
    );
det_out1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => c2_reg(0),
      I1 => pulseShaper_width(0),
      I2 => pulseShaper_width(1),
      I3 => c2_reg(1),
      O => det_out1_carry_i_8_n_0
    );
det_out1_carry_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => pulseShaper_width(4),
      I1 => pulseShaper_width(2),
      I2 => pulseShaper_width(0),
      I3 => pulseShaper_width(1),
      I4 => pulseShaper_width(3),
      I5 => pulseShaper_width(5),
      O => det_out1_carry_i_9_n_0
    );
det_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0ACC0A00FFFF0000"
    )
        port map (
      I0 => \^det_out\,
      I1 => det_out0,
      I2 => \det_out1_carry__0_n_7\,
      I3 => state_reg_n_0,
      I4 => det_in,
      I5 => enable,
      O => det_out_i_1_n_0
    );
det_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => det_out_i_1_n_0,
      Q => \^det_out\,
      R => '0'
    );
state_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5580FF80"
    )
        port map (
      I0 => enable,
      I1 => det_out0,
      I2 => det_in,
      I3 => state_reg_n_0,
      I4 => \det_out1_carry__0_n_7\,
      O => state_i_1_n_0
    );
state_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => state_i_1_n_0,
      Q => state_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    window : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width : in STD_LOGIC_VECTOR ( 7 downto 0 );
    det_in : in STD_LOGIC;
    det_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "GateKeeper_BD_GateKeeper_1_0,GateKeeper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "GateKeeper,Vivado 2023.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_GateKeeper
     port map (
      clk => clk,
      det_in => det_in,
      det_out => det_out,
      enable => enable,
      pulseShaper_width(7 downto 0) => pulseShaper_width(7 downto 0),
      window(15 downto 0) => window(15 downto 0)
    );
end STRUCTURE;
