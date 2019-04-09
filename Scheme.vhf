--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Scheme.vhf
-- /___/   /\     Timestamp : 04/09/2019 13:04:58
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/VGA_GAME/Scheme.vhf -w C:/Users/lab/VGA_GAME/Scheme.sch
--Design Name: Scheme
--Device: spartan3e
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Scheme is
   port ( Clk_50MHz : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Scheme;

architecture BEHAVIORAL of Scheme is
   signal XLXN_1    : std_logic_vector (9 downto 0);
   signal XLXN_2    : std_logic_vector (8 downto 0);
   signal XLXN_3    : std_logic_vector (2 downto 0);
   component VGAdriver
      port ( CLK_50MHz : in    std_logic; 
             RGB       : in    std_logic_vector (2 downto 0); 
             VGA_R     : out   std_logic; 
             VGA_G     : out   std_logic; 
             VGA_B     : out   std_logic; 
             VGA_HS    : out   std_logic; 
             VGA_VS    : out   std_logic; 
             PIX_X     : out   std_logic_vector (9 downto 0); 
             PIX_Y     : out   std_logic_vector (8 downto 0));
   end component;
   
   component GameMap
      port ( PIX_X : in    std_logic_vector (9 downto 0); 
             PIX_Y : in    std_logic_vector (8 downto 0); 
             RGB   : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_1 : VGAdriver
      port map (CLK_50MHz=>Clk_50MHz,
                RGB(2 downto 0)=>XLXN_3(2 downto 0),
                PIX_X(9 downto 0)=>XLXN_1(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
   XLXI_3 : GameMap
      port map (PIX_X(9 downto 0)=>XLXN_1(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                RGB(2 downto 0)=>XLXN_3(2 downto 0));
   
end BEHAVIORAL;


