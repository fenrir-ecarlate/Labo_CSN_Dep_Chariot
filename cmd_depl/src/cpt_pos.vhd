-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : cpt_pos.vhd
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

entity cpt_pos is
  port (
  clock_i       : in  std_logic;
  reset_i       : in  std_logic;
  clk_div_i     : in  std_logic;
  start_i       : in  std_logic;
  dist_i        : in  std_logic_vector(6 downto 0);
  pulse_o       : out std_logic
        );
        
end cpt_pos;

architecture cpt of cpt_pos is
  signal cpt_now  : unsigned(9 downto 0);
  signal cpt_fut  : unsigned(9 downto 0);
  signal is_min_s : std_logic;
  
  begin
  cpt_fut <= dist_i & "000" when (start_i = '1') else -- RAZ synchrone
             cpt_now - 1 when (clk_div_i = '1') else  -- comptage
             cpt_now;                                 -- maintient
  
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
  
end cpt;
