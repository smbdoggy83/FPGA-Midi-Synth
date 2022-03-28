/**
*
* This is the top level of our project. 
*
*/

---------------------------------------------------------
--  This code is generated by Terasic System Builder
---------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity synth is
port
(

	------------ CLOCK ------------
	CLOCK2_50       	:in    	std_logic;
	CLOCK3_50       	:in    	std_logic;
	CLOCK4_50       	:in    	std_logic;
	CLOCK_50        	:in    	std_logic;

	------------ KEY ------------
	KEY             	:in    	std_logic_vector(3 downto 0);

	------------ SW ------------
	SW              	:in    	std_logic_vector(9 downto 0);

	------------ LED ------------
	LEDR            	:out   	std_logic_vector(9 downto 0);

	------------ Seg7 ------------
	HEX0            	:out   	std_logic_vector(6 downto 0);
	HEX1            	:out   	std_logic_vector(6 downto 0);
	HEX2            	:out   	std_logic_vector(6 downto 0);
	HEX3            	:out   	std_logic_vector(6 downto 0);
	HEX4            	:out   	std_logic_vector(6 downto 0);
	HEX5            	:out   	std_logic_vector(6 downto 0);

	------------ SDRAM ------------
	DRAM_ADDR       	:out   	std_logic_vector(12 downto 0);
	DRAM_BA         	:out   	std_logic_vector(1 downto 0);
	DRAM_CAS_N      	:out   	std_logic;
	DRAM_CKE        	:out   	std_logic;
	DRAM_CLK        	:out   	std_logic;
	DRAM_CS_N       	:out   	std_logic;
	DRAM_DQ         	:inout 	std_logic_vector(15 downto 0);
	DRAM_LDQM       	:out   	std_logic;
	DRAM_RAS_N      	:out   	std_logic;
	DRAM_UDQM       	:out   	std_logic;
	DRAM_WE_N       	:out   	std_logic;

	------------ Audio ------------
	AUD_ADCDAT      	:in    	std_logic;
	AUD_ADCLRCK     	:inout 	std_logic;
	AUD_BCLK        	:inout 	std_logic;
	AUD_DACDAT      	:out   	std_logic;
	AUD_DACLRCK     	:inout 	std_logic;
	AUD_XCK         	:out   	std_logic;

	------------ I2C for Audio and Video-In ------------
	FPGA_I2C_SCLK   	:out   	std_logic;
	FPGA_I2C_SDAT   	:inout 	std_logic
);

end entity;



---------------------------------------------------------
--  Structural coding
---------------------------------------------------------


architecture rtl of synth is

-- declare --

begin

-- body --

end rtl;

