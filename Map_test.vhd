--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:22:01 04/09/2019
-- Design Name:   
-- Module Name:   C:/Users/lab/VGA_GAME/Map_test.vhd
-- Project Name:  VGA_GAME
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: GameMap
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Map_test IS
END Map_test;
 
ARCHITECTURE behavior OF Map_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT GameMap
    PORT(
         PIX_X : IN  std_logic_vector(9 downto 0);
         PIX_Y : IN  std_logic_vector(8 downto 0);
         RGB : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIX_X : std_logic_vector(9 downto 0) := (others => '0');
   signal PIX_Y : std_logic_vector(8 downto 0) := (others => '0');

 	--Outputs
   signal RGB : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: GameMap PORT MAP (
          PIX_X => PIX_X,
          PIX_Y => PIX_Y,
          RGB => RGB
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 
      PIX_X <= 25;
      PIX_Y <= 25;

      wait;
   end process;

END;
