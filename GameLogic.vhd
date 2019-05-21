----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:22:56 05/07/2019 
-- Design Name: 
-- Module Name:    GameLogic - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity GameLogic is
   Port(
           Clk : in  STD_LOGIC;
   
           DIV_X : in  STD_LOGIC_VECTOR (4 downto 0);
           DIV_Y : in  STD_LOGIC_VECTOR (3 downto 0);
           F0 : in  STD_LOGIC;
           
           DIRdy : in  STD_LOGIC;
           DI : in  STD_LOGIC_VECTOR (7 downto 0);
           
           
           RGB_MAP : out  STD_LOGIC_VECTOR (2 downto 0)
                   
       );
       
end GameLogic;

architecture Behavioral of GameLogic is
signal x: integer range 0 to 19;
signal y: integer range 0 to 14;

signal player_x: integer range 0 to 19 := 12;
signal player_y: integer range 0 to 14 := 7;

signal RGB_PLAYER: std_logic_vector(2 downto 0) := "000";


type ARRAY_2D is array ( (20*15) -1 downto 0) of std_logic_vector (2 downto 0);
constant Territory : ARRAY_2D := (  "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", 
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010", "010",
                                    "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001",
                                    "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001",
                                    "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001", "001");
                                    
                                    
 type state_type is ( sReady , sWaitF0, sWaitRepeat );
 signal State, NextState : state_type;
 signal regDI : STD_LOGIC_VECTOR (7 downto 0);
 signal moved : std_logic := '0';
 
 
begin
x <= to_integer( unsigned( DIV_X ) );
y <= to_integer( unsigned( DIV_Y ) );

regDI <= DI when rising_edge( Clk ) and State = sReady;


process(x,y, player_x, player_y, RGB_PLAYER)
begin
   if (x = player_x and y = player_y) then
        RGB_MAP <= RGB_PLAYER;
   else RGB_MAP <= Territory( y*20 + x );
   end if;
end process;



process (Clk)
begin

   if(rising_edge(Clk)) then
      
         if DIRdy = '1' then
            if regDI = X"1D" and player_y >= 1 and F0 = '1' then
               if Territory( (player_y-1)*20 + player_x ) /= "001" then
                  player_y <= player_y -1;
               end if;
            elsif regDI = X"1B" and player_y <= 13 and F0 = '1' then
               if Territory( (player_y+1)*20 + player_x ) /= "001" then
                  player_y <= player_y + 1;
               end if;
            elsif regDI = X"1C" and player_x >= 1 and F0 = '1' then
               if Territory( (player_y)*20 + player_x - 1 ) /= "001" then
                  player_x <= player_x - 1;
               end if;
            elsif regDI = X"23" and player_x <= 18 and F0 = '1' then
               if Territory( (player_y)*20 + player_x + 1) /= "001" then
                  player_x <= player_x + 1;
               end if;
            end if;

         end if;

   end if;
end process;

end Behavioral;

