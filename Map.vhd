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
           RGB_MAP: in STD_LOGIC_VECTOR (2 downto 0);
           RGB : out  STD_LOGIC_VECTOR (2 downto 0);
           DIV_X: out STD_LOGIC_VECTOR (4 downto 0);
           DIV_Y: out STD_LOGIC_VECTOR (3 downto 0)
       );
end GameMap;

architecture Behavioral of GameMap is
--resolution
signal x: integer range 0 to 639;
signal y: integer range 0 to 479;
--size of columns
constant size_x: integer := 32;
constant size_y: integer := 32;
--number of columns
constant x_col: integer:= 640/size_x;
constant y_col: integer:= 480/size_y;


signal div_x_sig: integer range 0 to x_col -1 := 0;
signal div_y_sig: integer range 0 to y_col -1 := 0;


begin

x <= to_integer( unsigned( PIX_X ) );
y <= to_integer( unsigned( PIX_Y ) );

process(x)
variable var: integer range 0 to 640;
variable count, i : integer range 0 to x_col - 1;
begin
   i:=0; var:=x; count:=0;
   for i in x_col -1 downto 0 loop
      if(var >= size_x) then var:= var-size_x; count:= count +1;
      else div_x_sig <= count; exit;
      end if;
   end loop;
end process;


process(y)
variable var: integer range 0 to 480;
variable count, i : integer range 0 to y_col - 1;
begin
   i:=0; var:=y; count:=0;
   for i in y_col -1 downto 0 loop
      if(var >= size_y) then var:= var-size_y; count:= count +1;
      else div_y_sig <= count; exit;
      end if;
   end loop;
end process;


process(RGB_MAP)
begin
     RGB <= RGB_MAP;   
end process;

process(div_x_sig, div_y_sig)
begin 
      DIV_X <= std_logic_vector(to_unsigned(div_x_sig, 5));
      DIV_Y <= std_logic_vector(to_unsigned(div_y_sig, 4));
end process;
end Behavioral;
