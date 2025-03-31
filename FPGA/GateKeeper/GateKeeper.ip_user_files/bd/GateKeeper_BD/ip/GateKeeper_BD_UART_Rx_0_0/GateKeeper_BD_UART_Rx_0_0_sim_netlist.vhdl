-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 26 11:18:50 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/danie/Documents/GitHub/GateKeeper/FPGA/GateKeeper/BD/GateKeeper_BD/ip/GateKeeper_BD_UART_Rx_0_0/GateKeeper_BD_UART_Rx_0_0_sim_netlist.vhdl
-- Design      : GateKeeper_BD_UART_Rx_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_UART_Rx_0_0_OneShot is
  port (
    otick : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_ctrlRx_reg[2]\ : out STD_LOGIC;
    trigger_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    trigger_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_ctrlRx_reg[5]\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \FSM_onehot_ctrlRx_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_ctrlRx_reg[0]_0\ : in STD_LOGIC;
    \FSM_onehot_ctrlRx_reg[0]_1\ : in STD_LOGIC;
    \FSM_onehot_ctrlRx_reg[0]_2\ : in STD_LOGIC;
    countBit : in STD_LOGIC_VECTOR ( 0 to 0 );
    \bufferRxInt_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    readyRx : in STD_LOGIC;
    tick : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GateKeeper_BD_UART_Rx_0_0_OneShot : entity is "OneShot";
end GateKeeper_BD_UART_Rx_0_0_OneShot;

architecture STRUCTURE of GateKeeper_BD_UART_Rx_0_0_OneShot is
  signal monitor : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^otick\ : STD_LOGIC;
  signal trigger_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \bufferRx[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of readyRx_i_1 : label is "soft_lutpair0";
begin
  otick <= \^otick\;
\FSM_onehot_ctrlRx[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A8A8A8A8A8A8"
    )
        port map (
      I0 => \^otick\,
      I1 => \FSM_onehot_ctrlRx_reg[0]\,
      I2 => \FSM_onehot_ctrlRx_reg[0]_0\,
      I3 => \FSM_onehot_ctrlRx_reg[0]_1\,
      I4 => \FSM_onehot_ctrlRx_reg[0]_2\,
      I5 => countBit(0),
      O => trigger_reg_0(0)
    );
\bufferRxInt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Q(1),
      I1 => \bufferRxInt_reg[0]\(1),
      I2 => \bufferRxInt_reg[0]\(0),
      I3 => \bufferRxInt_reg[0]\(3),
      I4 => \bufferRxInt_reg[0]\(2),
      I5 => \^otick\,
      O => \FSM_onehot_ctrlRx_reg[2]\
    );
\bufferRx[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^otick\,
      I1 => Q(2),
      O => trigger_reg_1(0)
    );
\countTick[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA8"
    )
        port map (
      I0 => \^otick\,
      I1 => Q(0),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(4),
      I5 => Q(3),
      O => E(0)
    );
\monitor_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => tick,
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
\muestreo[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^otick\,
      I1 => Q(1),
      O => trigger_reg_2(0)
    );
readyRx_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFC0"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => \^otick\,
      I3 => readyRx,
      O => \FSM_onehot_ctrlRx_reg[5]\
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
      Q => \^otick\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_UART_Rx_0_0_UART_Rx is
  port (
    bufferRx : out STD_LOGIC_VECTOR ( 7 downto 0 );
    readyRx : out STD_LOGIC;
    clk : in STD_LOGIC;
    tick : in STD_LOGIC;
    PinRx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of GateKeeper_BD_UART_Rx_0_0_UART_Rx : entity is "UART_Rx";
end GateKeeper_BD_UART_Rx_0_0_UART_Rx;

architecture STRUCTURE of GateKeeper_BD_UART_Rx_0_0_UART_Rx is
  signal \FSM_onehot_ctrlRx[5]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx[5]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx[5]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx[5]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_ctrlRx_reg_n_0_[5]\ : STD_LOGIC;
  signal bufferRxInt : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bufferRxInt1 : STD_LOGIC;
  signal \bufferRxInt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[5]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[6]_i_1_n_0\ : STD_LOGIC;
  signal \bufferRxInt[7]_i_1_n_0\ : STD_LOGIC;
  signal countBit : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \countBit[0]_i_1_n_0\ : STD_LOGIC;
  signal \countBit[1]_i_1_n_0\ : STD_LOGIC;
  signal \countBit[2]_i_1_n_0\ : STD_LOGIC;
  signal \countBit[2]_i_2_n_0\ : STD_LOGIC;
  signal countTick_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal muestreo : STD_LOGIC;
  signal \muestreo[4]_i_3_n_0\ : STD_LOGIC;
  signal muestreo_reg : STD_LOGIC_VECTOR ( 4 downto 3 );
  signal \muestreo_reg_n_0_[0]\ : STD_LOGIC;
  signal \muestreo_reg_n_0_[1]\ : STD_LOGIC;
  signal \muestreo_reg_n_0_[2]\ : STD_LOGIC;
  signal o1_n_1 : STD_LOGIC;
  signal o1_n_2 : STD_LOGIC;
  signal o1_n_3 : STD_LOGIC;
  signal o1_n_4 : STD_LOGIC;
  signal o1_n_5 : STD_LOGIC;
  signal o1_n_6 : STD_LOGIC;
  signal otick : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^readyrx\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_ctrlRx[5]_i_4\ : label is "soft_lutpair3";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[0]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[1]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[2]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[3]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[4]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_ctrlRx_reg[5]\ : label is "iSTATE:000001,iSTATE0:000010,iSTATE1:000100,iSTATE2:001000,iSTATE3:010000,iSTATE4:100000,";
  attribute SOFT_HLUTNM of \bufferRxInt[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \countBit[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \countBit[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \countBit[2]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \countTick[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \countTick[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \countTick[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \countTick[3]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \muestreo[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \muestreo[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \muestreo[4]_i_2\ : label is "soft_lutpair4";
begin
  readyRx <= \^readyrx\;
\FSM_onehot_ctrlRx[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0A0000000000000"
    )
        port map (
      I0 => \FSM_onehot_ctrlRx_reg_n_0_[4]\,
      I1 => \FSM_onehot_ctrlRx_reg_n_0_[1]\,
      I2 => countTick_reg(1),
      I3 => countTick_reg(0),
      I4 => countTick_reg(3),
      I5 => countTick_reg(2),
      O => \FSM_onehot_ctrlRx[5]_i_2_n_0\
    );
\FSM_onehot_ctrlRx[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => \FSM_onehot_ctrlRx_reg_n_0_[3]\,
      I1 => \FSM_onehot_ctrlRx_reg_n_0_[5]\,
      I2 => PinRx,
      I3 => \FSM_onehot_ctrlRx_reg_n_0_[0]\,
      O => \FSM_onehot_ctrlRx[5]_i_3_n_0\
    );
\FSM_onehot_ctrlRx[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => countTick_reg(2),
      I1 => countTick_reg(3),
      I2 => countTick_reg(0),
      I3 => countTick_reg(1),
      I4 => muestreo,
      O => \FSM_onehot_ctrlRx[5]_i_4_n_0\
    );
\FSM_onehot_ctrlRx[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => countBit(1),
      I1 => countBit(2),
      O => \FSM_onehot_ctrlRx[5]_i_5_n_0\
    );
\FSM_onehot_ctrlRx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => \FSM_onehot_ctrlRx_reg_n_0_[5]\,
      Q => \FSM_onehot_ctrlRx_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_ctrlRx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => \FSM_onehot_ctrlRx_reg_n_0_[0]\,
      Q => \FSM_onehot_ctrlRx_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_ctrlRx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => \FSM_onehot_ctrlRx_reg_n_0_[1]\,
      Q => muestreo,
      R => '0'
    );
\FSM_onehot_ctrlRx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => muestreo,
      Q => \FSM_onehot_ctrlRx_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_ctrlRx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => \FSM_onehot_ctrlRx_reg_n_0_[3]\,
      Q => \FSM_onehot_ctrlRx_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_ctrlRx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_2,
      D => \FSM_onehot_ctrlRx_reg_n_0_[4]\,
      Q => \FSM_onehot_ctrlRx_reg_n_0_[5]\,
      R => '0'
    );
\bufferRxInt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFF00020000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(2),
      I2 => countBit(1),
      I3 => countBit(0),
      I4 => o1_n_3,
      I5 => bufferRxInt(0),
      O => \bufferRxInt[0]_i_1_n_0\
    );
\bufferRxInt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFF00080000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(0),
      I2 => countBit(1),
      I3 => countBit(2),
      I4 => o1_n_3,
      I5 => bufferRxInt(1),
      O => \bufferRxInt[1]_i_1_n_0\
    );
\bufferRxInt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(2),
      I2 => countBit(1),
      I3 => countBit(0),
      I4 => o1_n_3,
      I5 => bufferRxInt(2),
      O => \bufferRxInt[2]_i_1_n_0\
    );
\bufferRxInt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(2),
      I2 => countBit(1),
      I3 => countBit(0),
      I4 => o1_n_3,
      I5 => bufferRxInt(3),
      O => \bufferRxInt[3]_i_1_n_0\
    );
\bufferRxInt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00200000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(1),
      I2 => countBit(2),
      I3 => countBit(0),
      I4 => o1_n_3,
      I5 => bufferRxInt(4),
      O => \bufferRxInt[4]_i_1_n_0\
    );
\bufferRxInt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(0),
      I2 => countBit(2),
      I3 => countBit(1),
      I4 => o1_n_3,
      I5 => bufferRxInt(5),
      O => \bufferRxInt[5]_i_1_n_0\
    );
\bufferRxInt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00800000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(2),
      I2 => countBit(1),
      I3 => countBit(0),
      I4 => o1_n_3,
      I5 => bufferRxInt(6),
      O => \bufferRxInt[6]_i_1_n_0\
    );
\bufferRxInt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => bufferRxInt1,
      I1 => countBit(1),
      I2 => countBit(0),
      I3 => countBit(2),
      I4 => o1_n_3,
      I5 => bufferRxInt(7),
      O => \bufferRxInt[7]_i_1_n_0\
    );
\bufferRxInt[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => muestreo_reg(3),
      I1 => muestreo_reg(4),
      O => bufferRxInt1
    );
\bufferRxInt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[0]_i_1_n_0\,
      Q => bufferRxInt(0),
      R => '0'
    );
\bufferRxInt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[1]_i_1_n_0\,
      Q => bufferRxInt(1),
      R => '0'
    );
\bufferRxInt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[2]_i_1_n_0\,
      Q => bufferRxInt(2),
      R => '0'
    );
\bufferRxInt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[3]_i_1_n_0\,
      Q => bufferRxInt(3),
      R => '0'
    );
\bufferRxInt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[4]_i_1_n_0\,
      Q => bufferRxInt(4),
      R => '0'
    );
\bufferRxInt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[5]_i_1_n_0\,
      Q => bufferRxInt(5),
      R => '0'
    );
\bufferRxInt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[6]_i_1_n_0\,
      Q => bufferRxInt(6),
      R => '0'
    );
\bufferRxInt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \bufferRxInt[7]_i_1_n_0\,
      Q => bufferRxInt(7),
      R => '0'
    );
\bufferRx_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(0),
      Q => bufferRx(0),
      R => '0'
    );
\bufferRx_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(1),
      Q => bufferRx(1),
      R => '0'
    );
\bufferRx_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(2),
      Q => bufferRx(2),
      R => '0'
    );
\bufferRx_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(3),
      Q => bufferRx(3),
      R => '0'
    );
\bufferRx_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(4),
      Q => bufferRx(4),
      R => '0'
    );
\bufferRx_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(5),
      Q => bufferRx(5),
      R => '0'
    );
\bufferRx_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(6),
      Q => bufferRx(6),
      R => '0'
    );
\bufferRx_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_4,
      D => bufferRxInt(7),
      Q => bufferRx(7),
      R => '0'
    );
\countBit[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => otick,
      I1 => \countBit[2]_i_2_n_0\,
      I2 => muestreo,
      I3 => countBit(0),
      O => \countBit[0]_i_1_n_0\
    );
\countBit[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => countBit(0),
      I1 => muestreo,
      I2 => \countBit[2]_i_2_n_0\,
      I3 => otick,
      I4 => countBit(1),
      O => \countBit[1]_i_1_n_0\
    );
\countBit[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => countBit(0),
      I1 => countBit(1),
      I2 => muestreo,
      I3 => \countBit[2]_i_2_n_0\,
      I4 => otick,
      I5 => countBit(2),
      O => \countBit[2]_i_1_n_0\
    );
\countBit[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => countTick_reg(1),
      I1 => countTick_reg(0),
      I2 => countTick_reg(3),
      I3 => countTick_reg(2),
      O => \countBit[2]_i_2_n_0\
    );
\countBit_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \countBit[0]_i_1_n_0\,
      Q => countBit(0),
      R => '0'
    );
\countBit_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \countBit[1]_i_1_n_0\,
      Q => countBit(1),
      R => '0'
    );
\countBit_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \countBit[2]_i_1_n_0\,
      Q => countBit(2),
      R => '0'
    );
\countTick[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => countTick_reg(0),
      O => p_0_in(0)
    );
\countTick[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => countTick_reg(0),
      I1 => countTick_reg(1),
      O => p_0_in(1)
    );
\countTick[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => countTick_reg(1),
      I1 => countTick_reg(0),
      I2 => countTick_reg(2),
      O => p_0_in(2)
    );
\countTick[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => countTick_reg(0),
      I1 => countTick_reg(1),
      I2 => countTick_reg(2),
      I3 => countTick_reg(3),
      O => p_0_in(3)
    );
\countTick_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => p_0_in(0),
      Q => countTick_reg(0),
      R => '0'
    );
\countTick_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => p_0_in(1),
      Q => countTick_reg(1),
      R => '0'
    );
\countTick_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => p_0_in(2),
      Q => countTick_reg(2),
      R => '0'
    );
\countTick_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_1,
      D => p_0_in(3),
      Q => countTick_reg(3),
      R => '0'
    );
\muestreo[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF7FFF0000"
    )
        port map (
      I0 => countTick_reg(1),
      I1 => countTick_reg(0),
      I2 => countTick_reg(3),
      I3 => countTick_reg(2),
      I4 => \muestreo_reg_n_0_[0]\,
      I5 => PinRx,
      O => \p_0_in__0\(0)
    );
\muestreo[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \countBit[2]_i_2_n_0\,
      I1 => \muestreo_reg_n_0_[0]\,
      I2 => PinRx,
      I3 => \muestreo_reg_n_0_[1]\,
      O => \p_0_in__0\(1)
    );
\muestreo[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0080"
    )
        port map (
      I0 => \muestreo_reg_n_0_[1]\,
      I1 => \muestreo_reg_n_0_[0]\,
      I2 => PinRx,
      I3 => \countBit[2]_i_2_n_0\,
      I4 => \muestreo_reg_n_0_[2]\,
      O => \p_0_in__0\(2)
    );
\muestreo[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00007FFF00008000"
    )
        port map (
      I0 => \muestreo_reg_n_0_[2]\,
      I1 => PinRx,
      I2 => \muestreo_reg_n_0_[0]\,
      I3 => \muestreo_reg_n_0_[1]\,
      I4 => \countBit[2]_i_2_n_0\,
      I5 => muestreo_reg(3),
      O => \p_0_in__0\(3)
    );
\muestreo[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0708"
    )
        port map (
      I0 => muestreo_reg(3),
      I1 => \muestreo[4]_i_3_n_0\,
      I2 => \countBit[2]_i_2_n_0\,
      I3 => muestreo_reg(4),
      O => \p_0_in__0\(4)
    );
\muestreo[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \muestreo_reg_n_0_[2]\,
      I1 => PinRx,
      I2 => \muestreo_reg_n_0_[0]\,
      I3 => \muestreo_reg_n_0_[1]\,
      O => \muestreo[4]_i_3_n_0\
    );
\muestreo_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => \p_0_in__0\(0),
      Q => \muestreo_reg_n_0_[0]\,
      R => '0'
    );
\muestreo_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => \p_0_in__0\(1),
      Q => \muestreo_reg_n_0_[1]\,
      R => '0'
    );
\muestreo_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => \p_0_in__0\(2),
      Q => \muestreo_reg_n_0_[2]\,
      R => '0'
    );
\muestreo_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => \p_0_in__0\(3),
      Q => muestreo_reg(3),
      R => '0'
    );
\muestreo_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o1_n_5,
      D => \p_0_in__0\(4),
      Q => muestreo_reg(4),
      R => '0'
    );
o1: entity work.GateKeeper_BD_UART_Rx_0_0_OneShot
     port map (
      E(0) => o1_n_1,
      \FSM_onehot_ctrlRx_reg[0]\ => \FSM_onehot_ctrlRx[5]_i_2_n_0\,
      \FSM_onehot_ctrlRx_reg[0]_0\ => \FSM_onehot_ctrlRx[5]_i_3_n_0\,
      \FSM_onehot_ctrlRx_reg[0]_1\ => \FSM_onehot_ctrlRx[5]_i_4_n_0\,
      \FSM_onehot_ctrlRx_reg[0]_2\ => \FSM_onehot_ctrlRx[5]_i_5_n_0\,
      \FSM_onehot_ctrlRx_reg[2]\ => o1_n_3,
      \FSM_onehot_ctrlRx_reg[5]\ => o1_n_6,
      Q(4) => \FSM_onehot_ctrlRx_reg_n_0_[5]\,
      Q(3) => \FSM_onehot_ctrlRx_reg_n_0_[4]\,
      Q(2) => \FSM_onehot_ctrlRx_reg_n_0_[3]\,
      Q(1) => muestreo,
      Q(0) => \FSM_onehot_ctrlRx_reg_n_0_[1]\,
      \bufferRxInt_reg[0]\(3 downto 0) => countTick_reg(3 downto 0),
      clk => clk,
      countBit(0) => countBit(0),
      otick => otick,
      readyRx => \^readyrx\,
      tick => tick,
      trigger_reg_0(0) => o1_n_2,
      trigger_reg_1(0) => o1_n_4,
      trigger_reg_2(0) => o1_n_5
    );
readyRx_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => o1_n_6,
      Q => \^readyrx\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity GateKeeper_BD_UART_Rx_0_0 is
  port (
    clk : in STD_LOGIC;
    tick : in STD_LOGIC;
    PinRx : in STD_LOGIC;
    bufferRx : out STD_LOGIC_VECTOR ( 7 downto 0 );
    readyRx : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of GateKeeper_BD_UART_Rx_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of GateKeeper_BD_UART_Rx_0_0 : entity is "GateKeeper_BD_UART_Rx_0_0,UART_Rx,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of GateKeeper_BD_UART_Rx_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of GateKeeper_BD_UART_Rx_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of GateKeeper_BD_UART_Rx_0_0 : entity is "UART_Rx,Vivado 2023.2";
end GateKeeper_BD_UART_Rx_0_0;

architecture STRUCTURE of GateKeeper_BD_UART_Rx_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0";
begin
inst: entity work.GateKeeper_BD_UART_Rx_0_0_UART_Rx
     port map (
      PinRx => PinRx,
      bufferRx(7 downto 0) => bufferRx(7 downto 0),
      clk => clk,
      readyRx => readyRx,
      tick => tick
    );
end STRUCTURE;
