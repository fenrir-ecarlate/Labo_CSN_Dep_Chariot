-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : mss_cmd_moteur.vhd
--
-- Description  : Indique qu'il y a eu une erreur dans l'acquisition de position
--                lors de l'utilisation.
-- 
-- Auteur       : João Miguel Domingues Pedrosa & Nicolas Kobel
-- Date         : 12.01.2016
-- Version      : 0.0
-- 
-- Utilise      :
-- 
--| Modifications |------------------------------------------------------------
-- Version   Auteur Date               Description
-- 0.0       DPJ    12.01.2016
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;

entity mss_cmd_moteur is
   port( 
      clock_i      : in  std_logic;
      reset_i      : in  std_logic;
      m_auto_i     : in  std_logic;
      start_i      : in  std_logic;
      dir_i        : in  std_logic;
      end_dist_i   : in  std_logic;
      clk_div_i    : in  std_logic;
      done_nbusy_o : out std_logic;
      PH_A_o       : out std_logic;
      PH_B_o       : out std_logic
   );
end mss_cmd_moteur ;

architecture struct of mss_cmd_moteur is

   -- Etat lorsque le moteur est à l'arrêt
   constant E_Stop_0     : std_logic_vector(2 downto 0) := "000";
   constant E_Stop_1     : std_logic_vector(2 downto 0) := "001";
   constant E_Stop_2     : std_logic_vector(2 downto 0) := "010";
   constant E_Stop_3     : std_logic_vector(2 downto 0) := "011";
   
   -- Etat lorsque le moteur est en marche
   constant E_Run_0      : std_logic_vector(2 downto 0) := "100";
   constant E_Run_1      : std_logic_vector(2 downto 0) := "101";
   constant E_Run_2      : std_logic_vector(2 downto 0) := "110";
   constant E_Run_3      : std_logic_vector(2 downto 0) := "111";
   
   signal Etat_Pres,Etat_Fut: std_logic_vector(2 downto 0);

   signal m_auto_s   : std_logic;
   signal dir_s      : std_logic;
   signal start_s    : std_logic;
   signal end_dist_s : std_logic;
   signal clk_div_s  : std_logic;
   
-- signal done_nbusy_s : std_logic;
-- signal PH_A_s       : std_logic;
-- signal PH_B_s       : std_logic;
begin

   Sync:process(reset_i, clock_i)
   begin
      if reset_i = '1' then
         m_auto_s <= '0'; 
         dir_s <= '0';    
         start_s <= '0';  
         end_dist_s <= '0';
         clk_div_s <= '0';
      elsif (Rising_Edge(clock_i)) then
         m_auto_s   <= m_auto_i; 
         dir_s      <= start_i;    
         start_s    <= dir_i;  
         end_dist_s <= end_dist_i;
         clk_div_s  <= clk_div_i;
      end if;
   end process;
   
   Fut:process(m_auto_s,dir_s,start_s,end_dist_s,clk_div_s,Etat_Pres)
   begin
      Etat_Fut <= E_Stop_0;
      case Etat_Pres is
         
         -- Gestion quand le moteur à l'arrêt
         when E_Stop_0 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_1;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_2;
            
            -- Surplace
            else
               Etat_Fut <= E_Stop_0; 
            end if; 
         
         when E_Stop_1 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_3;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_0;
            
            -- Surplace            
            else
               Etat_Fut <= E_Stop_1; 
            end if; 
         
         when E_Stop_2 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_0;
               
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_3;
               
            -- Surplace
            else
               Etat_Fut <= E_Stop_2; 
            end if; 
            
         when E_Stop_3 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_2;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (start_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_1;
            
            -- Surplace
            else
               Etat_Fut <= E_Stop_3; 
            end if; 
         
         -- Gestion quand le moteur est en marche
         when E_Run_0 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_1;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_2;
            
            -- arret du moteur
            elsif ((m_auto_s = '0') and (start_s = '0') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (end_dist_s = '1') and (clk_div_s = '1')) then
               Etat_Fut <= E_Stop_0;
            
            -- Surplace
            else
               Etat_Fut <= E_Run_0; 
            end if; 
         
         when E_Run_1 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_3;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_0;
            
            -- arret du moteur
            elsif ((m_auto_s = '0') and (start_s = '0') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (end_dist_s = '1') and (clk_div_s = '1')) then
               Etat_Fut <= E_Stop_1;
            
            -- Surplace
            else
               Etat_Fut <= E_Run_1; 
            end if;
         
         when E_Run_2 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_0;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_3;
            
            -- arret du moteur
            elsif ((m_auto_s = '0') and (start_s = '0') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (end_dist_s = '1') and (clk_div_s = '1')) then
               Etat_Fut <= E_Stop_2;
            
            -- Surplace
            else
               Etat_Fut <= E_Run_2; 
            end if;
         
         when E_Run_3 =>
            -- sens anti-horaire
            if ((m_auto_s = '0') and (dir_s = '0') and (start_s = '1') and (clk_div_s = '1')) or 
               ((m_auto_s = '1') and (dir_s = '0') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_2;
            
            -- sens horaire
            elsif ((m_auto_s = '0') and (dir_s = '1') and (start_s = '1') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (dir_s = '1') and (end_dist_s = '0') and (clk_div_s = '1')) then
               Etat_Fut <= E_Run_1;
            
            -- arret du moteur
            elsif ((m_auto_s = '0') and (start_s = '0') and (clk_div_s = '1')) or 
                  ((m_auto_s = '1') and (end_dist_s = '1') and (clk_div_s = '1')) then
               Etat_Fut <= E_Stop_3;
            
            -- Surplace
            else
               Etat_Fut <= E_Run_3; 
            end if;
         when others =>
            Etat_Fut <= E_Stop_0;
      end case;
   end process;
   
   Mem: process (clock_i, reset_i)
   begin
      if (reset_i = '1') then
         Etat_Pres <= E_Stop_0;
      elsif Rising_Edge(clock_i) then
         Etat_Pres <= Etat_Fut;
      end if;
   end process;
   
   done_nbusy_o <= Etat_Pres(2);
   PH_A_o       <= Etat_Pres(1);      
   PH_B_o       <= Etat_Pres(0);      
   
end struct;
