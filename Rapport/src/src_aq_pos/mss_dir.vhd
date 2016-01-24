-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : mss_dir.vhd
--
-- Description  : Detecte le sens de rotation et envoie une pulse lors du 
--                changement d'état d'un des capteurs
-- 
-- Auteur       : Domingues Pedrosa João Miguel
-- Date         : 17.12.2015
-- Version      : 0.0
-- 
-- Utilise      : Labo csn, décembre 2015 
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 0.0       DPJ    17.12.2015         
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity mss_dir is
   port(clock_i       : in  std_logic;  --Horloge du systeme
        reset_i       : in  std_logic;  --Remise a Zero asychrone
        init_pos_i    : in  std_logic;  --Initialisation a zero, sychrone, des compteurs (pos, idx, err)
        capt_a_i      : in  std_logic;  --Encodeur phase A
        capt_b_i      : in  std_logic;  --Encodeur phase B
        pulse_o       : out std_logic;  --Pulse quand A ou B change d'état
        dir_cw_o      : out std_logic;  --Direction: '1' CW (horaire), '0' CCW (anti-horaire)
        err_o         : out std_logic   --Il y a eu une erreur de double changement A et B
   );
end mss_dir ;

architecture struct of mss_dir is


   signal capt_a_s, capt_b_s: std_logic;
   signal pulse_s  : std_logic;
   signal dir_cw_s : std_logic;
   signal err_s    : std_logic;
   
   type T_ETAT is (E_Init,    -- etat initial lors reset ou initialisation
                   
                   E_Start0,  -- etat démarrage quand AB = 00
                   E_Start1,  -- etat démarrage quand AB = 01
                   E_Start2,  -- etat démarrage quand AB = 10
                   E_Start3,  -- etat démarrage quand AB = 11
                   
                   E_CW0,     -- etat stable sens horaire      (AB=00)
                   E_CW1,     -- etat stable sens horaire      (AB=01)
                   E_CW2,     -- etat stable sens horaire      (AB=10)
                   E_CW3,     -- etat stable sens horaire      (AB=11)
                   
                   E_T_CW0,   -- etat transitoire sens horaire (AB=00)
                   E_T_CW1,   -- etat transitoire sens horaire (AB=01)
                   E_T_CW2,   -- etat transitoire sens horaire (AB=10)
                   E_T_CW3,   -- etat transitoire sens horaire (AB=11)
                   
                   E_CCW0,    -- etat stable sens anti-horaire      (AB=00)
                   E_CCW1,    -- etat stable sens anti-horaire      (AB=01)
                   E_CCW2,    -- etat stable sens anti-horaire      (AB=10)
                   E_CCW3,    -- etat stable sens anti-horaire      (AB=11)
                   
                   E_T_CCW0,  -- etat transitoire sens anti-horaire (AB=00)
                   E_T_CCW1,  -- etat transitoire sens anti-horaire (AB=01)
                   E_T_CCW2,  -- etat transitoire sens anti-horaire (AB=10)
                   E_T_CCW3,  -- etat transitoire sens anti-horaire (AB=11)
                   
                   E_ERR      -- etat détéction erreur (changement de valeur des deux capteurs en même temps)
                   );

   signal Etat_Pres,Etat_Fut: T_ETAT;
                  
begin
   Sync: process (clock_i, reset_i)
   begin
      if (reset_i = '1') then
         capt_a_s <= '0';
         capt_b_s <= '0';
      elsif Rising_Edge(clock_i) then
         capt_a_s <= capt_a_i;
         capt_b_s <= capt_b_i;
      end if;
   end process;

   Fut: process (capt_a_s,capt_b_s,Etat_Pres)
   begin
      Etat_Fut <= E_Init;
      pulse_s <= '0';
      dir_cw_s <= '0';
      err_s <= '0';
      case Etat_Pres is
         
         -- Gestion de l'état initial -------------------------------
         when E_Init =>
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start3;
            end if;
            
         -- Gestion des de démarrage -------------------------------
         when E_Start0 =>
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start3;
            end if;
         
         when E_Start1 =>
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW1 ;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW1;
            end if;
            
         when E_Start2 =>
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW2 ;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW2;
            end if;
            
         when E_Start3 =>
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_Start0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_Start3;
            end if;
            
            
         -- Gestion transition sens horaire -------------------------------  
         when E_T_CW0 => 
            pulse_s <= '1';
            dir_cw_s <= '1';
            err_s <= '0';
            Etat_Fut <= E_CW2;
         when E_T_CW1 => 
            pulse_s <= '1';
            dir_cw_s <= '1';
            err_s <= '0';
            Etat_Fut <= E_CW0;
         when E_T_CW2 => 
            pulse_s <= '1';
            dir_cw_s <= '1';
            err_s <= '0';
            Etat_Fut <= E_CW3;
         when E_T_CW3 => 
            pulse_s <= '1';
            dir_cw_s <= '1';
            err_s <= '0';
            Etat_Fut <= E_CW1;
            
         -- Gestion transition sens anti-horaire -------------------------------
         when E_T_CCW0 => 
            pulse_s <= '1';
            dir_cw_s <= '0';
            err_s <= '0';
            Etat_Fut <= E_CCW1;
         when E_T_CCW1 => 
            pulse_s <= '1';
            dir_cw_s <= '0';
            err_s <= '0';
            Etat_Fut <= E_CCW3;
         when E_T_CCW2 => 
            pulse_s <= '1';
            dir_cw_s <= '0';
            err_s <= '0';
            Etat_Fut <= E_CCW0;
         when E_T_CCW3 => 
            pulse_s <= '1';
            dir_cw_s <= '0';
            err_s <= '0';
            Etat_Fut <= E_CCW2;
         
         -- Gestion dans le sens horaire -------------------------------
         when E_CW0 =>
            pulse_s <= '0';
            dir_cw_s <= '1';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_CW0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_ERR;
            end if;
         
         when E_CW1 =>
            pulse_s <= '0';
            dir_cw_s <= '1';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW1;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_CW1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW1;
            end if;
            
         when E_CW2 =>
            pulse_s <= '0';
            dir_cw_s <= '1';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW2;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_CW2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW2;
            end if;
            
         when E_CW3 =>
            pulse_s <= '0';
            dir_cw_s <= '1';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_CW3;
            end if;
         
         -- Gestion dans le sens anti-horaire -------------------------------
         when E_CCW0 =>
            pulse_s <= '0';
            dir_cw_s <= '0';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_CCW0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW0;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_ERR;
            end if;
         
         when E_CCW1 =>
            pulse_s <= '0';
            dir_cw_s <= '0';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CW1;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_CCW1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CCW1;
            end if;
            
         when E_CCW2 =>
            pulse_s <= '0';
            dir_cw_s <= '0';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW2;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_CCW2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW2;
            end if;
            
         when E_CCW3 =>
            pulse_s <= '0';
            dir_cw_s <= '0';
            err_s <= '0';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_ERR;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_T_CW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_T_CCW3;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_CCW3;
            end if;
         
         -- Gestion d'erreur -------------------------------            
         when others =>
            pulse_s <= '0';
            dir_cw_s <= '1';
            err_s <= '1';
            if (capt_a_s = '0') AND (capt_b_s = '0') then
               Etat_Fut <= E_CW0;
            elsif (capt_a_s = '0') AND (capt_b_s = '1') then
               Etat_Fut <= E_CW1;
            elsif (capt_a_s = '1') AND (capt_b_s = '0') then
               Etat_Fut <= E_CW2;
            elsif (capt_a_s = '1') AND (capt_b_s = '1') then
               Etat_Fut <= E_CW3;
            end if;
         
      end case;
   end process;

   Mem: process (clock_i, reset_i)
   begin
      if (reset_i = '1') then
         Etat_Pres <= E_Init;
      elsif Rising_Edge(clock_i) then
         if (init_pos_i = '1') then
            Etat_Pres <= E_Init;
         else
            Etat_Pres <= Etat_Fut;
         end if;
      end if;
   end process;
   
   pulse_o  <= pulse_s;
   dir_cw_o <= dir_cw_s;
   err_o    <= err_s;

end struct;