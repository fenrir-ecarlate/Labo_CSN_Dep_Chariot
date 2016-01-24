-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : det_err.vhd
--
-- Description  : Indique qu'il y a eu une erreur dans l'acquisition de position
--                lors de l'utilisation.
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

entity det_err is
   port( 
      clock_i       : in  std_logic;  --Horloge du systeme
      reset_i       : in  std_logic;  --Remise a Zero asychrone
      init_pos_i    : in  std_logic;  --Initialisation a zero, sychrone, des compteurs (pos, idx, err)
      err_i         : in  std_logic;  --Il y a eu une erreur de double changement A et B)
      det_err_o     : out std_logic   --Detection d'une erreur (double changement A et B)
   );
end det_err ;

architecture struct of det_err is
   signal det_err_pres, det_err_fut : std_logic;

begin

   det_err_fut <= '0' when (init_pos_i = '1') else
                  (err_i or det_err_pres);

   process(reset_i, clock_i)
   begin
      if reset_i = '1' then
         det_err_pres <= '0';
      elsif (Rising_Edge(clock_i)) then
         det_err_pres <= det_err_fut;
      end if;
   end process;

   det_err_o <= det_err_pres;
   
end struct;
