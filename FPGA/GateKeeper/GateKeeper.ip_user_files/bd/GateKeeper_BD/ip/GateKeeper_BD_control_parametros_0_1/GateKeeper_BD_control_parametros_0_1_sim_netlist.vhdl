-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Thu Apr  3 16:19:27 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top GateKeeper_BD_control_parametros_0_1 -prefix
--               GateKeeper_BD_control_parametros_0_1_ GateKeeper_BD_control_parametros_0_1_sim_netlist.vhdl
-- Design      : GateKeeper_BD_control_parametros_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_control_parametros_0_1_OneShot is
  port (
    \ctrl_reg[2]\ : out STD_LOGIC;
    \ctrl_reg[4]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ctrl_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \ctrl_reg[4]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \ctrl_reg[15]\ : in STD_LOGIC;
    \orden_reg[3]\ : in STD_LOGIC;
    \orden_reg[3]_0\ : in STD_LOGIC;
    \orden_reg[15]\ : in STD_LOGIC;
    \ctrl_reg[8]\ : in STD_LOGIC;
    \ctrl_reg[8]_0\ : in STD_LOGIC;
    \ctrl_reg[8]_1\ : in STD_LOGIC;
    \ctrl_reg[8]_2\ : in STD_LOGIC;
    \d2_reg[0]\ : in STD_LOGIC;
    readyRx : in STD_LOGIC
  );
end GateKeeper_BD_control_parametros_0_1_OneShot;

architecture STRUCTURE of GateKeeper_BD_control_parametros_0_1_OneShot is
  signal \ctrl[7]_i_6_n_0\ : STD_LOGIC;
  signal \^ctrl_reg[4]\ : STD_LOGIC;
  signal monitor : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal os_readyRx : STD_LOGIC;
  signal trigger_i_1_n_0 : STD_LOGIC;
begin
  \ctrl_reg[4]\ <= \^ctrl_reg[4]\;
\ctrl[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \^ctrl_reg[4]\,
      I1 => Q(2),
      I2 => Q(4),
      I3 => \ctrl_reg[15]\,
      I4 => Q(1),
      I5 => Q(0),
      O => \ctrl_reg[2]\
    );
\ctrl[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ctrl_reg[8]\,
      I1 => \ctrl_reg[8]_0\,
      I2 => \ctrl_reg[8]_1\,
      I3 => Q(4),
      I4 => \ctrl[7]_i_6_n_0\,
      I5 => \ctrl_reg[8]_2\,
      O => \^ctrl_reg[4]\
    );
\ctrl[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => os_readyRx,
      O => \ctrl[7]_i_6_n_0\
    );
\d1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => os_readyRx,
      I5 => \ctrl_reg[15]\,
      O => \ctrl_reg[2]_0\(0)
    );
\d2[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \d2_reg[0]\,
      I1 => Q(4),
      I2 => Q(2),
      I3 => os_readyRx,
      I4 => Q(1),
      I5 => Q(0),
      O => \ctrl_reg[4]_0\(0)
    );
\monitor_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => readyRx,
      Q => monitor(0),
      R => '0'
    );
\monitor_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => monitor(0),
      Q => monitor(1),
      R => '0'
    );
\orden[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => os_readyRx,
      I3 => \orden_reg[15]\,
      I4 => Q(3),
      I5 => \orden_reg[3]_0\,
      O => E(1)
    );
\orden[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(4),
      I2 => os_readyRx,
      I3 => \orden_reg[3]\,
      I4 => Q(3),
      I5 => \orden_reg[3]_0\,
      O => E(0)
    );
trigger_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => monitor(0),
      I1 => monitor(1),
      O => trigger_i_1_n_0
    );
trigger_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => trigger_i_1_n_0,
      Q => os_readyRx,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_control_parametros_0_1_control_parametros is
  port (
    window0 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    LED : out STD_LOGIC_VECTOR ( 4 downto 0 );
    window1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    window2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pulseShaper_width0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulseShaper_width1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pulseShaper_width2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    enableGateKeeper0 : out STD_LOGIC;
    enableGateKeeper1 : out STD_LOGIC;
    enableGateKeeper2 : out STD_LOGIC;
    clk : in STD_LOGIC;
    readyRx : in STD_LOGIC;
    bufferRx : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SW : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end GateKeeper_BD_control_parametros_0_1_control_parametros;

architecture STRUCTURE of GateKeeper_BD_control_parametros_0_1_control_parametros is
  signal ctrl : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[0]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[1]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[2]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[3]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[3]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[3]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[4]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[5]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[6]_i_1_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl[7]_i_9_n_0\ : STD_LOGIC;
  signal \^enablegatekeeper0\ : STD_LOGIC;
  signal enableGateKeeper0_i_1_n_0 : STD_LOGIC;
  signal enableGateKeeper0_i_2_n_0 : STD_LOGIC;
  signal \^enablegatekeeper1\ : STD_LOGIC;
  signal enableGateKeeper1_i_1_n_0 : STD_LOGIC;
  signal enableGateKeeper1_i_2_n_0 : STD_LOGIC;
  signal \^enablegatekeeper2\ : STD_LOGIC;
  signal enableGateKeeper2_i_1_n_0 : STD_LOGIC;
  signal enableGateKeeper2_i_2_n_0 : STD_LOGIC;
  signal o1_n_0 : STD_LOGIC;
  signal o1_n_1 : STD_LOGIC;
  signal o1_n_4 : STD_LOGIC;
  signal o1_n_5 : STD_LOGIC;
  signal orden : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \orden[15]_i_2_n_0\ : STD_LOGIC;
  signal \orden[7]_i_2_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 8 downto 5 );
  signal p_1_in : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pulseShaper_width0[7]_i_1_n_0\ : STD_LOGIC;
  signal \pulseShaper_width1[7]_i_1_n_0\ : STD_LOGIC;
  signal \pulseShaper_width2[7]_i_1_n_0\ : STD_LOGIC;
  signal \^window0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \window0[15]_i_1_n_0\ : STD_LOGIC;
  signal \window0[15]_i_2_n_0\ : STD_LOGIC;
  signal \window1[15]_i_1_n_0\ : STD_LOGIC;
  signal \window1[15]_i_2_n_0\ : STD_LOGIC;
  signal \window2[15]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \LED[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LED[4]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \LED[5]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \LED[6]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \ctrl[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ctrl[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \ctrl[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \ctrl[7]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctrl[7]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ctrl[7]_i_8\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ctrl[7]_i_9\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of enableGateKeeper0_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of enableGateKeeper1_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \orden[15]_i_2\ : label is "soft_lutpair2";
begin
  enableGateKeeper0 <= \^enablegatekeeper0\;
  enableGateKeeper1 <= \^enablegatekeeper1\;
  enableGateKeeper2 <= \^enablegatekeeper2\;
  window0(15 downto 0) <= \^window0\(15 downto 0);
\LED[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW(0),
      I1 => \^window0\(0),
      O => LED(0)
    );
\LED[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW(0),
      I1 => \^window0\(1),
      O => LED(1)
    );
\LED[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW(0),
      I1 => \^window0\(2),
      O => LED(2)
    );
\LED[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW(0),
      I1 => \^window0\(3),
      O => LED(3)
    );
\LED[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SW(0),
      I1 => \^window0\(4),
      O => LED(4)
    );
\ctrl[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000FF00000010"
    )
        port map (
      I0 => ctrl(3),
      I1 => ctrl(0),
      I2 => bufferRx(0),
      I3 => \ctrl[7]_i_9_n_0\,
      I4 => ctrl(4),
      I5 => \ctrl[0]_i_2_n_0\,
      O => \ctrl[0]_i_1_n_0\
    );
\ctrl[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0505D454"
    )
        port map (
      I0 => ctrl(0),
      I1 => ctrl(1),
      I2 => ctrl(3),
      I3 => orden(0),
      I4 => ctrl(2),
      O => \ctrl[0]_i_2_n_0\
    );
\ctrl[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5500551455145514"
    )
        port map (
      I0 => \ctrl[3]_i_2_n_0\,
      I1 => ctrl(1),
      I2 => ctrl(0),
      I3 => \ctrl[1]_i_2_n_0\,
      I4 => ctrl(2),
      I5 => ctrl(3),
      O => \ctrl[1]_i_1_n_0\
    );
\ctrl[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08080300"
    )
        port map (
      I0 => orden(1),
      I1 => ctrl(1),
      I2 => ctrl(2),
      I3 => bufferRx(1),
      I4 => ctrl(3),
      O => \ctrl[1]_i_2_n_0\
    );
\ctrl[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000008C"
    )
        port map (
      I0 => orden(2),
      I1 => \ctrl[2]_i_2_n_0\,
      I2 => ctrl(3),
      I3 => \ctrl[7]_i_9_n_0\,
      I4 => ctrl(4),
      O => \ctrl[2]_i_1_n_0\
    );
\ctrl[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005FA0A4"
    )
        port map (
      I0 => ctrl(0),
      I1 => bufferRx(2),
      I2 => ctrl(1),
      I3 => ctrl(3),
      I4 => ctrl(2),
      O => \ctrl[2]_i_2_n_0\
    );
\ctrl[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \ctrl[3]_i_2_n_0\,
      I1 => \ctrl[3]_i_3_n_0\,
      O => \ctrl[3]_i_1_n_0\
    );
\ctrl[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ctrl[7]_i_3_n_0\,
      I1 => \ctrl[7]_i_4_n_0\,
      I2 => ctrl(6),
      I3 => ctrl(14),
      I4 => ctrl(13),
      I5 => ctrl(4),
      O => \ctrl[3]_i_2_n_0\
    );
\ctrl[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BBA9BBBDBBADBBB"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(3),
      I2 => ctrl(0),
      I3 => ctrl(1),
      I4 => bufferRx(3),
      I5 => orden(3),
      O => \ctrl[3]_i_3_n_0\
    );
\ctrl[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A0C0"
    )
        port map (
      I0 => orden(4),
      I1 => bufferRx(4),
      I2 => \ctrl[7]_i_8_n_0\,
      I3 => ctrl(3),
      I4 => \ctrl[7]_i_9_n_0\,
      O => \ctrl[4]_i_1_n_0\
    );
\ctrl[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A0C0"
    )
        port map (
      I0 => orden(5),
      I1 => bufferRx(5),
      I2 => \ctrl[7]_i_8_n_0\,
      I3 => ctrl(3),
      I4 => \ctrl[7]_i_9_n_0\,
      O => \ctrl[5]_i_1_n_0\
    );
\ctrl[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A0C0"
    )
        port map (
      I0 => orden(6),
      I1 => bufferRx(6),
      I2 => \ctrl[7]_i_8_n_0\,
      I3 => ctrl(3),
      I4 => \ctrl[7]_i_9_n_0\,
      O => \ctrl[6]_i_1_n_0\
    );
\ctrl[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000A0C0"
    )
        port map (
      I0 => orden(7),
      I1 => bufferRx(7),
      I2 => \ctrl[7]_i_8_n_0\,
      I3 => ctrl(3),
      I4 => \ctrl[7]_i_9_n_0\,
      O => \ctrl[7]_i_2_n_0\
    );
\ctrl[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ctrl(8),
      I1 => ctrl(5),
      I2 => ctrl(10),
      I3 => ctrl(7),
      O => \ctrl[7]_i_3_n_0\
    );
\ctrl[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ctrl(12),
      I1 => ctrl(9),
      I2 => ctrl(15),
      I3 => ctrl(11),
      O => \ctrl[7]_i_4_n_0\
    );
\ctrl[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ctrl(13),
      I1 => ctrl(14),
      I2 => ctrl(6),
      O => \ctrl[7]_i_5_n_0\
    );
\ctrl[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl(3),
      I1 => ctrl(1),
      I2 => ctrl(0),
      O => \ctrl[7]_i_7_n_0\
    );
\ctrl[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000081"
    )
        port map (
      I0 => ctrl(3),
      I1 => ctrl(1),
      I2 => ctrl(0),
      I3 => ctrl(4),
      I4 => ctrl(2),
      O => \ctrl[7]_i_8_n_0\
    );
\ctrl[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ctrl(13),
      I1 => ctrl(14),
      I2 => ctrl(6),
      I3 => \ctrl[7]_i_4_n_0\,
      I4 => \ctrl[7]_i_3_n_0\,
      O => \ctrl[7]_i_9_n_0\
    );
\ctrl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[0]_i_1_n_0\,
      Q => ctrl(0),
      R => '0'
    );
\ctrl_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(10),
      Q => ctrl(10),
      R => o1_n_0
    );
\ctrl_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(11),
      Q => ctrl(11),
      R => o1_n_0
    );
\ctrl_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(12),
      Q => ctrl(12),
      R => o1_n_0
    );
\ctrl_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(13),
      Q => ctrl(13),
      R => o1_n_0
    );
\ctrl_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(14),
      Q => ctrl(14),
      R => o1_n_0
    );
\ctrl_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(15),
      Q => ctrl(15),
      R => o1_n_0
    );
\ctrl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[1]_i_1_n_0\,
      Q => ctrl(1),
      R => '0'
    );
\ctrl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[2]_i_1_n_0\,
      Q => ctrl(2),
      R => '0'
    );
\ctrl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[3]_i_1_n_0\,
      Q => ctrl(3),
      R => '0'
    );
\ctrl_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[4]_i_1_n_0\,
      Q => ctrl(4),
      R => '0'
    );
\ctrl_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[5]_i_1_n_0\,
      Q => ctrl(5),
      R => '0'
    );
\ctrl_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[6]_i_1_n_0\,
      Q => ctrl(6),
      R => '0'
    );
\ctrl_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => \ctrl[7]_i_2_n_0\,
      Q => ctrl(7),
      R => '0'
    );
\ctrl_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(8),
      Q => ctrl(8),
      R => o1_n_0
    );
\ctrl_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => orden(9),
      Q => ctrl(9),
      R => o1_n_0
    );
\d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(0),
      Q => p_1_in(0),
      R => '0'
    );
\d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(1),
      Q => p_1_in(1),
      R => '0'
    );
\d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(2),
      Q => p_1_in(2),
      R => '0'
    );
\d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(3),
      Q => p_1_in(3),
      R => '0'
    );
\d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(4),
      Q => p_1_in(4),
      R => '0'
    );
\d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(5),
      Q => p_1_in(5),
      R => '0'
    );
\d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(6),
      Q => p_1_in(6),
      R => '0'
    );
\d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRx(7),
      Q => p_1_in(7),
      R => '0'
    );
\d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(0),
      Q => p_1_in(8),
      R => '0'
    );
\d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(1),
      Q => p_1_in(9),
      R => '0'
    );
\d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(2),
      Q => p_1_in(10),
      R => '0'
    );
\d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(3),
      Q => p_1_in(11),
      R => '0'
    );
\d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(4),
      Q => p_1_in(12),
      R => '0'
    );
\d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(5),
      Q => p_1_in(13),
      R => '0'
    );
\d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(6),
      Q => p_1_in(14),
      R => '0'
    );
\d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => bufferRx(7),
      Q => p_1_in(15),
      R => '0'
    );
enableGateKeeper0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => p_1_in(0),
      I1 => ctrl(2),
      I2 => ctrl(4),
      I3 => \window0[15]_i_2_n_0\,
      I4 => enableGateKeeper0_i_2_n_0,
      I5 => \^enablegatekeeper0\,
      O => enableGateKeeper0_i_1_n_0
    );
enableGateKeeper0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ctrl(0),
      I1 => ctrl(1),
      O => enableGateKeeper0_i_2_n_0
    );
enableGateKeeper0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => enableGateKeeper0_i_1_n_0,
      Q => \^enablegatekeeper0\,
      R => '0'
    );
enableGateKeeper1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => p_1_in(0),
      I1 => enableGateKeeper1_i_2_n_0,
      I2 => ctrl(4),
      I3 => ctrl(0),
      I4 => \window1[15]_i_2_n_0\,
      I5 => \^enablegatekeeper1\,
      O => enableGateKeeper1_i_1_n_0
    );
enableGateKeeper1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl(1),
      I1 => ctrl(2),
      O => enableGateKeeper1_i_2_n_0
    );
enableGateKeeper1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => enableGateKeeper1_i_1_n_0,
      Q => \^enablegatekeeper1\,
      R => '0'
    );
enableGateKeeper2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => p_1_in(0),
      I1 => enableGateKeeper2_i_2_n_0,
      I2 => ctrl(0),
      I3 => ctrl(1),
      I4 => \window1[15]_i_2_n_0\,
      I5 => \^enablegatekeeper2\,
      O => enableGateKeeper2_i_1_n_0
    );
enableGateKeeper2_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(4),
      O => enableGateKeeper2_i_2_n_0
    );
enableGateKeeper2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => enableGateKeeper2_i_1_n_0,
      Q => \^enablegatekeeper2\,
      R => '0'
    );
o1: entity work.GateKeeper_BD_control_parametros_0_1_OneShot
     port map (
      E(1) => p_0_in(8),
      E(0) => p_0_in(5),
      Q(4 downto 0) => ctrl(4 downto 0),
      clk => clk,
      \ctrl_reg[15]\ => \window1[15]_i_2_n_0\,
      \ctrl_reg[2]\ => o1_n_0,
      \ctrl_reg[2]_0\(0) => o1_n_4,
      \ctrl_reg[4]\ => o1_n_1,
      \ctrl_reg[4]_0\(0) => o1_n_5,
      \ctrl_reg[8]\ => \ctrl[7]_i_3_n_0\,
      \ctrl_reg[8]_0\ => \ctrl[7]_i_4_n_0\,
      \ctrl_reg[8]_1\ => \ctrl[7]_i_5_n_0\,
      \ctrl_reg[8]_2\ => \ctrl[7]_i_7_n_0\,
      \d2_reg[0]\ => \window0[15]_i_2_n_0\,
      \orden_reg[15]\ => \orden[15]_i_2_n_0\,
      \orden_reg[3]\ => \orden[7]_i_2_n_0\,
      \orden_reg[3]_0\ => \ctrl[7]_i_9_n_0\,
      readyRx => readyRx
    );
\orden[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl(0),
      I1 => ctrl(1),
      O => \orden[15]_i_2_n_0\
    );
\orden[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl(1),
      I1 => ctrl(0),
      O => \orden[7]_i_2_n_0\
    );
\orden_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(0),
      Q => orden(0),
      R => '0'
    );
\orden_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(2),
      Q => orden(10),
      R => '0'
    );
\orden_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(3),
      Q => orden(11),
      R => '0'
    );
\orden_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(4),
      Q => orden(12),
      R => '0'
    );
\orden_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(5),
      Q => orden(13),
      R => '0'
    );
\orden_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(6),
      Q => orden(14),
      R => '0'
    );
\orden_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(7),
      Q => orden(15),
      R => '0'
    );
\orden_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(1),
      Q => orden(1),
      R => '0'
    );
\orden_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(2),
      Q => orden(2),
      R => '0'
    );
\orden_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(3),
      Q => orden(3),
      R => '0'
    );
\orden_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(4),
      Q => orden(4),
      R => '0'
    );
\orden_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(5),
      Q => orden(5),
      R => '0'
    );
\orden_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(6),
      Q => orden(6),
      R => '0'
    );
\orden_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(5),
      D => bufferRx(7),
      Q => orden(7),
      R => '0'
    );
\orden_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(0),
      Q => orden(8),
      R => '0'
    );
\orden_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => p_0_in(8),
      D => bufferRx(1),
      Q => orden(9),
      R => '0'
    );
\pulseShaper_width0[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(4),
      I2 => ctrl(1),
      I3 => ctrl(0),
      I4 => \window0[15]_i_2_n_0\,
      O => \pulseShaper_width0[7]_i_1_n_0\
    );
\pulseShaper_width0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => pulseShaper_width0(0),
      R => '0'
    );
\pulseShaper_width0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => pulseShaper_width0(1),
      R => '0'
    );
\pulseShaper_width0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => pulseShaper_width0(2),
      R => '0'
    );
\pulseShaper_width0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => pulseShaper_width0(3),
      R => '0'
    );
\pulseShaper_width0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => pulseShaper_width0(4),
      R => '0'
    );
\pulseShaper_width0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => pulseShaper_width0(5),
      R => '0'
    );
\pulseShaper_width0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => pulseShaper_width0(6),
      R => '0'
    );
\pulseShaper_width0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width0[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => pulseShaper_width0(7),
      R => '0'
    );
\pulseShaper_width1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => ctrl(0),
      I1 => ctrl(1),
      I2 => ctrl(4),
      I3 => ctrl(2),
      I4 => \window1[15]_i_2_n_0\,
      O => \pulseShaper_width1[7]_i_1_n_0\
    );
\pulseShaper_width1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => pulseShaper_width1(0),
      R => '0'
    );
\pulseShaper_width1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => pulseShaper_width1(1),
      R => '0'
    );
\pulseShaper_width1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => pulseShaper_width1(2),
      R => '0'
    );
\pulseShaper_width1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => pulseShaper_width1(3),
      R => '0'
    );
\pulseShaper_width1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => pulseShaper_width1(4),
      R => '0'
    );
\pulseShaper_width1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => pulseShaper_width1(5),
      R => '0'
    );
\pulseShaper_width1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => pulseShaper_width1(6),
      R => '0'
    );
\pulseShaper_width1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width1[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => pulseShaper_width1(7),
      R => '0'
    );
\pulseShaper_width2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(4),
      I2 => ctrl(0),
      I3 => ctrl(1),
      I4 => \window1[15]_i_2_n_0\,
      O => \pulseShaper_width2[7]_i_1_n_0\
    );
\pulseShaper_width2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => pulseShaper_width2(0),
      R => '0'
    );
\pulseShaper_width2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => pulseShaper_width2(1),
      R => '0'
    );
\pulseShaper_width2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => pulseShaper_width2(2),
      R => '0'
    );
\pulseShaper_width2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => pulseShaper_width2(3),
      R => '0'
    );
\pulseShaper_width2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => pulseShaper_width2(4),
      R => '0'
    );
\pulseShaper_width2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => pulseShaper_width2(5),
      R => '0'
    );
\pulseShaper_width2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => pulseShaper_width2(6),
      R => '0'
    );
\pulseShaper_width2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \pulseShaper_width2[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => pulseShaper_width2(7),
      R => '0'
    );
\window0[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(4),
      I2 => ctrl(0),
      I3 => ctrl(1),
      I4 => \window0[15]_i_2_n_0\,
      O => \window0[15]_i_1_n_0\
    );
\window0[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \ctrl[7]_i_3_n_0\,
      I1 => \ctrl[7]_i_4_n_0\,
      I2 => ctrl(6),
      I3 => ctrl(14),
      I4 => ctrl(13),
      I5 => ctrl(3),
      O => \window0[15]_i_2_n_0\
    );
\window0_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => \^window0\(0),
      R => '0'
    );
\window0_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => \^window0\(10),
      R => '0'
    );
\window0_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => \^window0\(11),
      R => '0'
    );
\window0_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => \^window0\(12),
      R => '0'
    );
\window0_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => \^window0\(13),
      R => '0'
    );
\window0_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => \^window0\(14),
      R => '0'
    );
\window0_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => \^window0\(15),
      R => '0'
    );
\window0_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => \^window0\(1),
      R => '0'
    );
\window0_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => \^window0\(2),
      R => '0'
    );
\window0_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => \^window0\(3),
      R => '0'
    );
\window0_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => \^window0\(4),
      R => '0'
    );
\window0_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => \^window0\(5),
      R => '0'
    );
\window0_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => \^window0\(6),
      R => '0'
    );
\window0_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => \^window0\(7),
      R => '0'
    );
\window0_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => \^window0\(8),
      R => '0'
    );
\window0_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window0[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => \^window0\(9),
      R => '0'
    );
\window1[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => ctrl(0),
      I1 => ctrl(1),
      I2 => ctrl(4),
      I3 => ctrl(2),
      I4 => \window1[15]_i_2_n_0\,
      O => \window1[15]_i_1_n_0\
    );
\window1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => ctrl(3),
      I1 => \ctrl[7]_i_3_n_0\,
      I2 => \ctrl[7]_i_4_n_0\,
      I3 => ctrl(6),
      I4 => ctrl(14),
      I5 => ctrl(13),
      O => \window1[15]_i_2_n_0\
    );
\window1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => window1(0),
      R => '0'
    );
\window1_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => window1(10),
      R => '0'
    );
\window1_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => window1(11),
      R => '0'
    );
\window1_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => window1(12),
      R => '0'
    );
\window1_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => window1(13),
      R => '0'
    );
\window1_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => window1(14),
      R => '0'
    );
\window1_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => window1(15),
      R => '0'
    );
\window1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => window1(1),
      R => '0'
    );
\window1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => window1(2),
      R => '0'
    );
\window1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => window1(3),
      R => '0'
    );
\window1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => window1(4),
      R => '0'
    );
\window1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => window1(5),
      R => '0'
    );
\window1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => window1(6),
      R => '0'
    );
\window1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => window1(7),
      R => '0'
    );
\window1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => window1(8),
      R => '0'
    );
\window1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window1[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => window1(9),
      R => '0'
    );
\window2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => ctrl(2),
      I1 => ctrl(4),
      I2 => ctrl(0),
      I3 => ctrl(1),
      I4 => \window1[15]_i_2_n_0\,
      O => \window2[15]_i_1_n_0\
    );
\window2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(0),
      Q => window2(0),
      R => '0'
    );
\window2_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(10),
      Q => window2(10),
      R => '0'
    );
\window2_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(11),
      Q => window2(11),
      R => '0'
    );
\window2_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(12),
      Q => window2(12),
      R => '0'
    );
\window2_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(13),
      Q => window2(13),
      R => '0'
    );
\window2_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(14),
      Q => window2(14),
      R => '0'
    );
\window2_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(15),
      Q => window2(15),
      R => '0'
    );
\window2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(1),
      Q => window2(1),
      R => '0'
    );
\window2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(2),
      Q => window2(2),
      R => '0'
    );
\window2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(3),
      Q => window2(3),
      R => '0'
    );
\window2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(4),
      Q => window2(4),
      R => '0'
    );
\window2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(5),
      Q => window2(5),
      R => '0'
    );
\window2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(6),
      Q => window2(6),
      R => '0'
    );
\window2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(7),
      Q => window2(7),
      R => '0'
    );
\window2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(8),
      Q => window2(8),
      R => '0'
    );
\window2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \window2[15]_i_1_n_0\,
      D => p_1_in(9),
      Q => window2(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_control_parametros_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GateKeeper_BD_control_parametros_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GateKeeper_BD_control_parametros_0_1 : entity is "GateKeeper_BD_control_parametros_0_1,control_parametros,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of GateKeeper_BD_control_parametros_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of GateKeeper_BD_control_parametros_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of GateKeeper_BD_control_parametros_0_1 : entity is "control_parametros,Vivado 2023.2";
end GateKeeper_BD_control_parametros_0_1;

architecture STRUCTURE of GateKeeper_BD_control_parametros_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^led\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \^sw\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
  LED(7 downto 3) <= \^led\(7 downto 3);
  LED(2) <= \^sw\(0);
  LED(1) <= \^sw\(0);
  LED(0) <= \<const0>\;
  \^sw\(0) <= SW(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.GateKeeper_BD_control_parametros_0_1_control_parametros
     port map (
      LED(4 downto 0) => \^led\(7 downto 3),
      SW(0) => \^sw\(0),
      bufferRx(7 downto 0) => bufferRx(7 downto 0),
      clk => clk,
      enableGateKeeper0 => enableGateKeeper0,
      enableGateKeeper1 => enableGateKeeper1,
      enableGateKeeper2 => enableGateKeeper2,
      pulseShaper_width0(7 downto 0) => pulseShaper_width0(7 downto 0),
      pulseShaper_width1(7 downto 0) => pulseShaper_width1(7 downto 0),
      pulseShaper_width2(7 downto 0) => pulseShaper_width2(7 downto 0),
      readyRx => readyRx,
      window0(15 downto 0) => window0(15 downto 0),
      window1(15 downto 0) => window1(15 downto 0),
      window2(15 downto 0) => window2(15 downto 0)
    );
end STRUCTURE;
