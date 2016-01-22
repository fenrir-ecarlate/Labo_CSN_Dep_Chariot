--------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : acqu_pos_top.vhd 
-- Description  : Acquisition de la position de la table tournante
-- 
-- Auteur       : Etienne Messerli
-- Date         : 07.12.2015 
--
-- Utilise      : Labo csn, décembre 2015 
--  
--------------------------------------------------------------------------
-- Description : Acquisition de la position de la table tournante
--   -mesure de la position de la table, comptage incréments capteurs
--      traitement des signaux A et B de l'encodeur
--   -comptage du nombre d'erreur de l'encodeur
--   -MSS de gestion de l'encodeur de position (capt A-B)
--      sens_hr : actif si sens horaire
--      Inc_up, Inc_dn: impulsion pour comptage position
--      det_err: indique double changement simultane de A et B
--        
--| Modifications |-----------------------------------------------------------
-- Ver  Date        Qui   Description
-- 0.1  14.01.2015  EMI   version initiale "mgn_position.vhd"
-- 1.0  07.12.2015  EMI   Adaptation pour le labo de décembre 2015
--
-----------------------------------------------------------------------

library IEEE;
use IEEE.Std_Logic_1164.all;  -- Defini le type standard logic

entity acqu_pos_top is
  port (clock_i       : in  std_logic;  --Horloge du systeme
        reset_i       : in  std_logic;  --Remise a Zero asychrone
        init_pos_i    : in  std_logic;  --Initialisation a zero, sychrone, des compteurs (pos, idx, err)
        capt_a_i      : in  std_logic;  --Encodeur phase A
        capt_b_i      : in  std_logic;  --Encodeur phase B
        capt_idx_i    : in  std_logic;  --Encodeur index (Idx)
        dir_cw_o      : out std_logic;  --Direction: '1' CW (horaire), '0' CCW (anti-horaire)
        position_o    : out std_logic_vector(15 downto 0); --position de la table
        nbr_idx_o     : out std_logic_vector(9 downto 0);  --nbr d'index detecte de la table
        --revol_o       : out std_logic_vector(7 downto 0);  --nbr de tours (revolution) de la table
        det_err_o     : out std_logic;  --Detection d'une erreur (double changement A et B)
        err_o         : out std_logic;  --Il y a eu une erreur de double changement A et B)
        nbr_err_o     : out std_logic_vector(4 downto 0)  --nombre d'erreur detectees (facultatif)
  );
end acqu_pos_top;

architecture struct of acqu_pos_top is 

   -- Declaration composant
   component mss_dir
   port(
      clock_i    : in std_logic;
      reset_i    : in std_logic;
      init_pos_i : in  std_logic; 
      capt_a_i   : in  std_logic; 
      capt_b_i   : in  std_logic; 
      pulse_o    : out std_logic; 
      dir_cw_o   : out std_logic; 
      err_o      : out std_logic);
   end component;
   for all: mss_dir use entity work.mss_dir(struct);

   component cpt_pos
   generic(SIZE : positive range 1 to 16:= 16);  
   port(
      clock_i : in std_logic;
      reset_i : in std_logic;
      incr_i  : in std_logic;
      decr_i  : in std_logic;
      en_i    : in std_logic;
      cpt_o   : out std_logic_vector(SIZE-1 downto 0));
   end component;
   for all: cpt_pos use entity work.cpt_pos(struct);
   
   component det_err 
   port( 
      clock_i    : in  std_logic;  
      reset_i    : in  std_logic;  
      init_pos_i : in  std_logic;  
      err_i      : in  std_logic;  
      det_err_o  : out std_logic); 
   end component ;
   for all: det_err use entity work.det_err(struct);
   
   -- Declaration signal
   signal init_pos_s     : std_logic;
   signal pulse_s        : std_logic; 
   signal err_s          : std_logic; 
   signal dir_cw_s       : std_logic;
   signal reset_pos_s    : std_logic;
   signal incr_s, decr_s : std_logic;
   
begin
   
   Sync: process (clock_i, reset_i)
   begin
      if (reset_i = '1') then
         init_pos_s <= '0';
      elsif Rising_Edge(clock_i) then
         init_pos_s <= init_pos_i;
      end if;
   end process;

   incr_s <= dir_cw_s;
   decr_s <= not dir_cw_s;
   reset_pos_s <= reset_i or init_pos_s;

   -- Bloc pour le contrôle du changement de position
   Bloc_MSS: mss_dir
      port map(clock_i    => clock_i,
               reset_i    => reset_i,
               init_pos_i => init_pos_s,
               capt_a_i   => capt_a_i,
               capt_b_i   => capt_b_i,
               pulse_o    => pulse_s,
               dir_cw_o   => dir_cw_s,
               err_o      => err_s
      );
   
   -- Bloc pour la valeur de la position
   Bloc_position: cpt_pos 
      generic map(SIZE => 16)
      port map(clock_i => clock_i,
               reset_i => reset_pos_s,
               incr_i  => incr_s,
               decr_i  => decr_s,
               en_i    => pulse_s,
               cpt_o   => position_o
      ); 
   
   -- Bloc pour l'acquisition de l'erreur
   Bloc_erreur: det_err
      port map(clock_i    => clock_i,
               reset_i    => reset_i,
               init_pos_i => init_pos_s,
               err_i      => err_s,
               det_err_o  => det_err_o
      );
   
   err_o <= err_s;
   dir_cw_o <= dir_cw_s;
   nbr_err_o <= (others => '0');
   nbr_idx_o <= (others => '0');
  
end struct;
