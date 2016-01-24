-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : div_clk.vhd
--
-- Description  : Diviseur d'horloge pour labo ctrl de chariot
-- 
-- Auteur       : Nicolas Kobel
-- Date         : ---
-- Version      : 1.0
--
--
--| Modifications |-------------------------------------------------------------

--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity div_clk is
  port (
  clock_i       : in  std_logic;
  reset_i       : in  std_logic;
  sel_vitesse_i : in  std_logic_vector(2 downto 0);
  pulse_o       : out std_logic
        );
        
end div_clk;

architecture cpt of div_clk is
  signal cpt_now  : unsigned(18 downto 0);
  signal cpt_fut  : unsigned(18 downto 0);
  signal cycle    : unsigned(18 downto 0);
  signal is_min_s : std_logic;
  type vitesses_t is array (0 to 7) of unsigned(18 downto 0);
  constant vitesses : vitesses_t := (to_unsigned(1000000,19),to_unsigned(500000,19),to_unsigned(200000,19),to_unsigned(100000,19),to_unsigned(60000,19),to_unsigned(40000,19),to_unsigned(20000,19),to_unsigned(10000,19));
  
  begin
  cpt_fut <= cycle when (is_min_s = '1') else
             cpt_now - 1;
  
  process(reset_i, clock_i) begin
    if (reset_i = '1') then
      cpt_now <= cycle;
    elsif (Rising_Edge(clock_i)) then 
      cpt_now <= cpt_fut;
    end if;
  end process;
  
  is_min_s <= '1' when (cpt_now = 0) else
              '0';
  pulse_o <= is_min_s;
  cycle <= vitesses(to_integer(unsigned(sel_vitesse_i)));
end cpt;
