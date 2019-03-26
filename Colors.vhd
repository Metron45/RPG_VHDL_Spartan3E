library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity picture is
    Port ( PIX_X : in  STD_LOGIC_VECTOR (9 downto 0);
           PIX_Y : in  STD_LOGIC_VECTOR (8 downto 0);
           RGB : out  STD_LOGIC_VECTOR (2 downto 0));
end picture;

architecture Behavioral of picture is

signal x: integer range 0 to 640;
signal y: integer range 0 to 480;

begin

x <= to_integer( unsigned( PIX_X ));
y <= to_integer( unsigned( PIX_Y ));

process(x, y)
begin
--   if(x < 320) then
  --    if(y < 240) then
    --     RGB <= "101";
      --else
        -- RGB <= "110";
      --end if;
   --else
     -- if(y < 240) then
       --  RGB <= "011";
      --else
        -- RGB <= "111";
     -- end if;
  -- end if;
   if (y < 20) then
        RGB <= "101";
   elsif (y > 279 and y < 300) then
        RGB <= "101";
   elsif (y > 299) then
        RGB <= "000";
   else
      if(x < 20) then
         RGB <= "101";
      elsif (x>620) then
         RGB <= "101";
      else
         RGB <= "110";
      end if;
   end if;
         
end process;



end Behavioral;