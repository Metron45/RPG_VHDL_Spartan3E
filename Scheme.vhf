--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Scheme.vhf
-- /___/   /\     Timestamp : 05/14/2019 14:11:14
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3e -flat -suppress -vhdl C:/Users/lab/Desktop/VGA_GAME/Scheme.vhf -w C:/Users/lab/Desktop/VGA_GAME/Scheme.sch
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
          PS2_Clk   : in    std_logic; 
          PS2_Data  : in    std_logic; 
          VGA_B     : out   std_logic; 
          VGA_G     : out   std_logic; 
          VGA_HS    : out   std_logic; 
          VGA_R     : out   std_logic; 
          VGA_VS    : out   std_logic);
end Scheme;

architecture BEHAVIORAL of Scheme is
   attribute BOX_TYPE   : string ;
   signal XLXN_1    : std_logic_vector (9 downto 0);
   signal XLXN_2    : std_logic_vector (8 downto 0);
   signal XLXN_3    : std_logic_vector (2 downto 0);
   signal XLXN_5    : std_logic_vector (3 downto 0);
   signal XLXN_9    : std_logic;
   signal XLXN_11   : std_logic;
   signal XLXN_26   : std_logic_vector (2 downto 0);
   signal XLXN_28   : std_logic;
   signal XLXN_29   : std_logic;
   signal XLXN_30   : std_logic_vector (4 downto 0);
   signal XLXN_32   : std_logic_vector (7 downto 0);
   component GameMap
      port ( PIX_X   : in    std_logic_vector (9 downto 0); 
             PIX_Y   : in    std_logic_vector (8 downto 0); 
             RGB     : out   std_logic_vector (2 downto 0); 
             RGB_MAP : in    std_logic_vector (2 downto 0); 
             DIV_X   : out   std_logic_vector (4 downto 0); 
             DIV_Y   : out   std_logic_vector (3 downto 0));
   end component;
   
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
   
   component PS2_Kbd
      port ( PS2_Clk   : in    std_logic; 
             PS2_Data  : in    std_logic; 
             Clk_50MHz : in    std_logic; 
             E0        : out   std_logic; 
             F0        : out   std_logic; 
             DO_Rdy    : out   std_logic; 
             DO        : out   std_logic_vector (7 downto 0); 
             Clk_Sys   : in    std_logic);
   end component;
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component GameLogic
      port ( Clk     : in    std_logic; 
             F0      : in    std_logic; 
             DIRdy   : in    std_logic; 
             DIV_X   : in    std_logic_vector (4 downto 0); 
             DIV_Y   : in    std_logic_vector (3 downto 0); 
             DI      : in    std_logic_vector (7 downto 0); 
             RGB_MAP : out   std_logic_vector (2 downto 0));
   end component;
   
begin
   XLXI_3 : GameMap
      port map (PIX_X(9 downto 0)=>XLXN_1(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                RGB_MAP(2 downto 0)=>XLXN_26(2 downto 0),
                DIV_X(4 downto 0)=>XLXN_30(4 downto 0),
                DIV_Y(3 downto 0)=>XLXN_5(3 downto 0),
                RGB(2 downto 0)=>XLXN_3(2 downto 0));
   
   XLXI_4 : VGAdriver
      port map (CLK_50MHz=>Clk_50MHz,
                RGB(2 downto 0)=>XLXN_3(2 downto 0),
                PIX_X(9 downto 0)=>XLXN_1(9 downto 0),
                PIX_Y(8 downto 0)=>XLXN_2(8 downto 0),
                VGA_B=>VGA_B,
                VGA_G=>VGA_G,
                VGA_HS=>VGA_HS,
                VGA_R=>VGA_R,
                VGA_VS=>VGA_VS);
   
   XLXI_7 : PS2_Kbd
      port map (Clk_Sys=>Clk_50MHz,
                Clk_50MHz=>Clk_50MHz,
                PS2_Clk=>PS2_Clk,
                PS2_Data=>PS2_Data,
                DO(7 downto 0)=>XLXN_32(7 downto 0),
                DO_Rdy=>XLXN_9,
                E0=>XLXN_11,
                F0=>XLXN_28);
   
   XLXI_8 : AND3B2
      port map (I0=>XLXN_28,
                I1=>XLXN_11,
                I2=>XLXN_9,
                O=>XLXN_29);
   
   XLXI_17 : GameLogic
      port map (Clk=>Clk_50MHz,
                DI(7 downto 0)=>XLXN_32(7 downto 0),
                DIRdy=>XLXN_29,
                DIV_X(4 downto 0)=>XLXN_30(4 downto 0),
                DIV_Y(3 downto 0)=>XLXN_5(3 downto 0),
                F0=>XLXN_28,
                RGB_MAP(2 downto 0)=>XLXN_26(2 downto 0));
   
end BEHAVIORAL;


