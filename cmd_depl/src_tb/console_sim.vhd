-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : console_sim.vhd
--
-- Description  : Ce fichier permet l'utilisation de la console generique du REDS.
-- 
-- Auteur       : Gilles Habegger
-- Date         : 20.04.2015
-- 
-- Utilise      : -
-- 
--| Modifications |------------------------------------------------------------
-- Ver  Qui    Date        Description
-- 1.0  GAA   12.01.2016    Modifications pour instanciation du projet Commande chariot
--                          avec les phases du moteur PàP reportées sur les entrées du codeur incrémental
--  
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;

entity console_sim is
  port(
    -- 16 switchs
    S0_sti       : in     std_logic;
    S1_sti       : in     std_logic;
    S2_sti       : in     std_logic;
    S3_sti       : in     std_logic;
    S4_sti       : in     std_logic;
    S5_sti       : in     std_logic;
    S6_sti       : in     std_logic;
    S7_sti       : in     std_logic;
    S8_sti       : in     std_logic;
    S9_sti       : in     std_logic;
    S10_sti      : in     std_logic;
    S11_sti      : in     std_logic;
    S12_sti      : in     std_logic;
    S13_sti      : in     std_logic;
    S14_sti      : in     std_logic;
    S15_sti      : in     std_logic;
    -- 2 valeurs sur 16 bits
    Val_A_sti    : in     std_logic_vector (15 downto 0);
    Val_B_sti    : in     std_logic_vector (15 downto 0);
    -- 16 LEDs
    L0_obs       : out    std_logic;
    L1_obs       : out    std_logic;
    L2_obs       : out    std_logic;
    L3_obs       : out    std_logic;
    L4_obs       : out    std_logic;
    L5_obs       : out    std_logic;
    L6_obs       : out    std_logic;
    L7_obs       : out    std_logic;
    L8_obs       : out    std_logic;
    L9_obs       : out    std_logic;
    L10_obs      : out    std_logic;
    L11_obs      : out    std_logic;
    L12_obs      : out    std_logic;
    L13_obs      : out    std_logic;
    L14_obs      : out    std_logic;
    L15_obs      : out    std_logic;
    -- 2 valeurs hexadecimales
    Hex0_obs     : out    Std_Logic_Vector ( 3 downto 0);
    Hex1_obs     : out    Std_Logic_Vector ( 3 downto 0);
    -- 2 resultats sur 16 bits
    Result_A_obs : out    std_logic_vector (15 downto 0);
    Result_B_obs : out    std_logic_vector (15 downto 0);
    -- 1 affichage 7 segments
    -- seg7_obs(0) -> DP (pas present)
    -- seg7_obs(1) -> G
    -- seg7_obs(2) -> F
    -- seg7_obs(3) -> E
    -- seg7_obs(4) -> D
    -- seg7_obs(5) -> C
    -- seg7_obs(6) -> B
    -- seg7_obs(7) -> A
    seg7_obs     : out    std_logic_vector ( 7 downto 0)
  );

-- Declarations

end console_sim ;

architecture struct of console_sim is

  constant PERIODE    : time := 100 ns;  --periode pour console REDS !
  signal   clock_s    : std_logic := '0';
  signal   phase_a_s  : std_logic := '0';
  signal   phase_b_s  : std_logic := '0';
  
  component cmd_mvnt_mot_top is
  port (
	Clock_i	      : in std_logic;
	Reset_i	      : in std_logic;
	m_auto_i      : in std_logic;
	init_i        : in std_logic;
	start_i       : in std_logic;
        sel_vitesse_i : in std_logic_vector(2 downto 0);
	dir_i         : in std_logic;
	dist_x_i      : in std_logic_vector(6 downto 0);
	capt_a_i      : in std_logic;
	capt_b_i      : in std_logic;
	done_o        : out std_logic;
	position_o    : out std_logic_vector(15 downto 0);
	busy_o        : out std_logic;
	PH_A_o        : out std_logic;
	PH_B_o        : out std_logic
	);
  end component;
  for all : cmd_mvnt_mot_top use entity work.cmd_mvnt_mot_top(behav);
  
  
  

begin

----------------------------------------------------------------------------------
--Process de generation de l'horloge
  process
  begin
    clock_s <= '0',  '1' after PERIODE/2;
      wait for PERIODE;
  end process;
----------------------------------------------------------------------------------
-- Instanciation du composant a simuler
  

  

uut: cmd_mvnt_mot_top port map(
  Clock_i	      => clock_s,
	Reset_i	      => S2_sti,
	m_auto_i    	=> S3_sti,
	init_i      	=> S4_sti,
	start_i       => S5_sti,
  sel_vitesse_i => Val_B_sti(2 downto 0),
	dir_i         => S6_sti,
	dist_x_i    	=> Val_A_sti(6 downto 0),
	capt_a_i    	=> phase_a_s,   -- Pour la simulation, les phases du moteur PàP sont reportées sur les entrées du codeur incrémental
	capt_b_i    	=> phase_b_s,   -- Pour la simulation, les phases du moteur PàP sont reportées sur les entrées du codeur incrémental
	done_o      	=> L0_obs,
	position_o  	=> Result_A_obs,
	busy_o      	=> L1_obs,
	PH_A_o      	=> phase_a_s,   
	PH_B_o      	=> phase_b_s     
   );
  
end struct;
