library.ieee;
use ieee.std_logic_1164.all;
use irrr.numeric_std.all;

entity rom is
port(
	Clk, en	:	in std_logic;
	addr		:	in unsigned(23 downto 0);
	data		:	out unsigned(23 downto 0)
	);
	
end rom;

architecture rtl of rom is
	type rom_type is array (25 downto 0) of unsigned(23 downto 0);
	constant ROM :	rom_type :=
		(X"9X3040", X"903140", X"903240", X"903340", X"903440", X"903540", X"903640", X"903740", X"903840", X"903940", X"903A40", X"903B40", X"903C40");
		--"9XXXXX" MIDI On Chromatically from C2 to C3
begin
	process(Clk)
	begin
		if rising_edge(Clk) then
			if en = '1' then
				data <= ROM(TO_INTEGER(addr));
			end if;
		end if;
	end process
end rtl;
		