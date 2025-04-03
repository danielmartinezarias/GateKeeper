-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
-- Date        : Wed Mar 26 11:18:49 2025
-- Host        : donaufeld running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top GateKeeper_BD_UART_Rx_0_0 -prefix
--               GateKeeper_BD_UART_Rx_0_0_ GateKeeper_BD_UART_Rx_0_0_stub.vhdl
-- Design      : GateKeeper_BD_UART_Rx_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity GateKeeper_BD_UART_Rx_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    tick : in STD_LOGIC;
    PinRx : in STD_LOGIC;
    bufferRx : out STD_LOGIC_VECTOR ( 7 downto 0 );
    readyRx : out STD_LOGIC
  );

end GateKeeper_BD_UART_Rx_0_0;

architecture stub of GateKeeper_BD_UART_Rx_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,tick,PinRx,bufferRx[7:0],readyRx";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_Rx,Vivado 2023.2";
begin
end;
