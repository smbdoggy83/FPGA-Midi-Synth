library ieee;
use ieee.std_logic_1164.all;

entity parallel2serial is
generic(
  G_N               : integer:=24 );
port (
  i_clk                          : in  std_logic;
  i_rstb                         : in  std_logic;
  i_data_ena                     : in  std_logic;
  i_data                         : in  std_logic_vector(G_N-1 downto 0);
  o_data_valid                   : out std_logic;
  o_data                         : out std_logic;
  o_error_serialize_pulse        : out std_logic);
end parallel2serial;

architecture rtl of parallel2serial is
signal r_data_enable                  : std_logic;
signal r_data                         : std_logic_vector(G_N-1 downto 0);
signal r_count     : integer range 0 to G_N;

begin
o_data_valid    <= r_data_enable;
o_data          <= r_data(G_N-1);

p_paralle2serial : process(i_clk,i_rstb)
begin
  if(i_rstb='0') then
    r_count              <= G_N-1;
    r_data_enable        <= '0';
    r_data               <= (others=>'0');
    o_error_serialize_pulse    <= '0';
  elsif(rising_edge(i_clk)) then
    if(r_count<G_N-1) and (i_data_ena='1') then
      o_error_serialize_pulse    <= '1';
    else
      o_error_serialize_pulse    <= '0';
    end if;
    if(i_data_ena='1') then
      r_count        <= 0;
      r_data_enable  <= '1';
      r_data         <= i_data;
    elsif(r_count<G_N-1) then
      r_count        <= r_count + 1;
      r_data_enable  <= '1';
      r_data         <= r_data(G_N-2 downto 0)&'0';
    else
      r_data_enable  <= '0';
    end if;
  end if;
end process p_paralle2serial;

end rtl;