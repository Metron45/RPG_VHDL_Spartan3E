
-- VHDL Instantiation Created from source file GameLogic.vhd -- 11:29:46 05/21/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT GameLogic
	PORT(
		Clk : IN std_logic;
		DIV_X : IN std_logic_vector(4 downto 0);
		DIV_Y : IN std_logic_vector(3 downto 0);
		F0 : IN std_logic;
		DIRdy : IN std_logic;
		DI : IN std_logic_vector(7 downto 0);          
		RGB_MAP : OUT std_logic_vector(2 downto 0)
		);
	END COMPONENT;

	Inst_GameLogic: GameLogic PORT MAP(
		Clk => ,
		DIV_X => ,
		DIV_Y => ,
		F0 => ,
		DIRdy => ,
		DI => ,
		RGB_MAP => 
	);


