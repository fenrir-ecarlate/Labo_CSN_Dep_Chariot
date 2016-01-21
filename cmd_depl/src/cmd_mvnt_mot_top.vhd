-------------------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : cmd_mvnt_mot_top.vhd
--
-- Description  : Commande du moteur pas a pas en position
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

entity cmd_mvnt_mot_top is
  port (
  clock_i     : in std_logic;
  reset_i     : in std_logic;
  m_auto_i    : in std_logic;
  init_i      : in std_logic;
  start_i     : in std_logic;
  sel_vitesse_i : in std_logic_vector(2 downto 0);
  dir_i       : in std_logic;
  dist_x_i    : in std_logic_vector(6 downto 0);
  capt_a_i    : in std_logic;
  capt_b_i    : in std_logic;
  done_o      : out std_logic;
  position_o  : out std_logic_vector(15 downto 0);
  busy_o      : out std_logic;
  PH_A_o      : out std_logic;
  PH_B_o      : out std_logic

	);
end cmd_mvnt_mot_top;

architecture behav of cmd_mvnt_mot_top is

-- internal signals
  signal end_dist_s   : std_logic;
  signal clk_div_s    : std_logic;
  signal done_nbusy_s : std_logic;

-- component declaration
component  cpt_pos is
  port (
    clock_i       : in  std_logic;
    reset_i       : in  std_logic;
    clk_div_i     : in  std_logic;
    start_i       : in  std_logic;
    dist_i        : in  std_logic_vector(6 downto 0);
    pulse_o       : out std_logic
 );
        
end component;

component div_clk is
  port (
    clock_i       : in  std_logic;
    reset_i       : in  std_logic;
    sel_vitesse_i : in  std_logic_vector(2 downto 0);
    pulse_o       : out std_logic
  );
        
end component;

component mss_cmd_moteur is
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
end component;


-- behavior
begin
  mss : mss_cmd_moteur
  port map( clock_i => clock_i,
            reset_i => reset_i,
            m_auto_i => m_auto_i,
            start_i => start_i,
            dir_i => dir_i,
            end_dist_i => end_dist_s,
            clk_div_i => clk_div_s,
            done_nbusy_o => done_nbusy_s,
            PH_A_o => PH_A_o,
            PH_B_o => PH_B_o
          );
  
  div_clk_mod : div_clk
  port map( clock_i => clock_i,
            reset_i => reset_i,
            sel_vitesse_i => sel_vitesse_i,
            pulse_o => clk_div_s
          );
          
  cpt_pas : cpt_pos
  port map( clock_i => clock_i,
            reset_i => reset_i,
            clk_div_i => clk_div_s,
            start_i => start_i,
            dist_i => dist_x_i,
            pulse_o => end_dist_s
  );
  
  busy_o <= not(done_nbusy_s);
  done_o <= done_nbusy_s;


end behav;
