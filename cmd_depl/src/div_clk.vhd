-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : div_clk.vhd
--
-- Description  : Diviseur d'horloge pour labo ctrl de chariot
-- 
-- Auteur       : ---
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
  signal cpt_now  : unsigned(9 downto 0);
  signal cpt_fut  : unsigned(9 downto 0);
  signal cycle    : unsigned(9 downto 0);
  signal is_min_s : std_logic;
  type vitesses_t is array (0 to 7) of unsigned(9 downto 0);
  constant vitesses : vitesses_t := (to_unsigned(1000,10),to_unsigned(500,10),to_unsigned(200,10),to_unsigned(100,10),to_unsigned(60,10),to_unsigned(40,10),to_unsigned(20,10),to_unsigned(10,10));
  
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
