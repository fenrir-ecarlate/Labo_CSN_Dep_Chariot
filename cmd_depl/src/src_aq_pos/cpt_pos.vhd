-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : cpt_pos.vhd
--
-- Description  : Compteurs permettant de savoir à quelle position se trouve le
--                système.
-- 
-- Auteur       : Domingues Pedrosa João Miguel
-- Date         : 07.01.2016
-- Version      : 0.0
-- 
-- Utilise      : Labo csn, décembre 2015
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 0.0       DPJ    07.01.2016
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity cpt_pos is
   generic(SIZE : positive range 1 to 16 := 16);
   port( 
      clock_i       : in std_logic;
      reset_i     : in std_logic;
      incr_i      : in std_logic;
      decr_i      : in std_logic;
      en_i        : in std_logic;
      cpt_o       : out std_logic_vector(SIZE-1 downto 0)
   );
end cpt_pos ;

architecture struct of cpt_pos is
   signal cpt_eq_0   : std_logic;
   signal cpt_eq_max : std_logic;
   signal incr_valid : std_logic;
   signal decr_valid : std_logic;
   signal cpt_pres   : unsigned(cpt_o'high downto 0);
   signal cpt_fut    : unsigned(cpt_o'high downto 0);
   
begin
                             
   cpt_fut <= cpt_pres     when (en_i = '0')                      else -- maintien
              cpt_pres - 1 when (incr_i = '0') and (decr_i = '1') else -- décrémente
              cpt_pres + 1 when (incr_i = '1') and (decr_i = '0') else -- incrémente
              cpt_pres;                                                -- maintien
   
   process (clock_i, reset_i)
   begin
      if (reset_i = '1') then
         cpt_pres <= to_unsigned(0, cpt_pres'length);
      elsif Rising_Edge(clock_i) then
         cpt_pres <= cpt_fut;
      end if;
   end process;
   
   cpt_eq_0 <= '1' when cpt_pres = 0 else
               '0';
               
   cpt_eq_max <= '1' when cpt_pres = (2**cpt_o'length - 1) else
                 '0';
   
   cpt_o <= std_logic_vector(cpt_pres);
end struct;
