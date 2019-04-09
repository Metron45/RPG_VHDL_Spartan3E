----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:19:22 04/09/2019 
-- Design Name: 
-- Module Name:    Map - Behavioral 
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

entity GameMap is
   Port(
           PIX_X : in  STD_LOGIC_VECTOR (9 downto 0);
           PIX_Y : in  STD_LOGIC_VECTOR (8 downto 0);
           RGB : out  STD_LOGIC_VECTOR (2 downto 0) 
       );
end GameMap;

architecture Behavioral of GameMap is

signal x: integer range 0 to 640;
signal y: integer range 0 to 480;

constant size_x: integer := 160;
constant size_y: integer := 240;
constant x_col: integer:= (640/size_x);
constant y_col: integer:= (480/size_y);

signal counter_x: integer range x_col downto 0;
signal counter_y: integer range y_col downto 0;

type ARRAY_2D is array ( x_col-1 downto 0, y_col-1 downto 0) of std_logic_vector (2 downto 0);
signal Territory: ARRAY_2D;



begin

x <= to_integer( unsigned( PIX_X ) );
y <= to_integer( unsigned( PIX_Y ) );
Territory <= (("101", "110"), ("001", "111"), ("010", "011"), ("111", "011"));

process(x, y)
begin
   for y_c in 1 to y_col loop
      for x_c in 1 to x_col loop
         if ( y < y_c*size_y and x < x_c*size_x ) then
            RGB <= Territory(x_c - 1, y_c - 1);
         end if;
      end loop;
   end loop;
end process;

end Behavioral;
