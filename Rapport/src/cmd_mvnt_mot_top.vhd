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

  signal m_auto_s      : std_logic; 
  signal init_s        : std_logic; 
  signal start_s       : std_logic; 
  signal sel_vitesse_s : std_logic_vector(2 downto 0); 
  signal dir_s         : std_logic; 
  signal dist_x_s      : std_logic_vector(6 downto 0); 
  signal capt_a_s      : std_logic; 
  signal capt_b_s      : std_logic; 
                       
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

component acqu_pos_top is
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
end component;


-- behavior
begin
  
  sync : process(clock_i,reset_i)
  begin
    if (reset_i = '1') then
      m_auto_s      <= '0';   
      init_s        <= '0';
      start_s       <= '0';
      sel_vitesse_s <= (others => '0');
      dir_s         <= '0';
      dist_x_s      <= (others =>'0');
      capt_a_s      <= '0';
      capt_b_s      <= '0';
    elsif(Rising_Edge(clock_i)) then
      m_auto_s      <= m_auto_i;   
      init_s        <= init_i;     
      start_s       <= start_i;    
      sel_vitesse_s <= sel_vitesse_i;
      dir_s         <= dir_i;
      dist_x_s      <= dist_x_i;   
      capt_a_s      <= capt_a_i;  
      capt_b_s      <= capt_b_i; 
    end if;
  end process;
    
    
    
    
    
    
      

  mss : mss_cmd_moteur
  port map( clock_i => clock_i,
            reset_i => reset_i,
            m_auto_i => m_auto_s,
            start_i => start_s,
            dir_i => dir_s,
            end_dist_i => end_dist_s,
            clk_div_i => clk_div_s,
            done_nbusy_o => done_nbusy_s,
            PH_A_o => PH_A_o,
            PH_B_o => PH_B_o
          );
  
  div_clk_mod : div_clk
  port map( clock_i => clock_i,
            reset_i => reset_i,
            sel_vitesse_i => sel_vitesse_s,
            pulse_o => clk_div_s
          );
          
  cpt_pas : cpt_pos
  port map( clock_i => clock_i,
            reset_i => reset_i,
            clk_div_i => clk_div_s,
            start_i => start_s,
            dist_i => dist_x_s,
            pulse_o => end_dist_s
  );
  
  acqu_pos : acqu_pos_top
  port map( clock_i    => clock_i,
            reset_i    => reset_i,
            init_pos_i => init_s,
            capt_a_i   => capt_a_s,
            capt_b_i   => capt_b_s,
            capt_idx_i => '0',
            dir_cw_o   => open,
            position_o => position_o,
            nbr_idx_o  => open,
            --revol_o 
            det_err_o  => open,
            err_o      => open,
            nbr_err_o  => open
          );
  

  busy_o <= not(done_nbusy_s);
  done_o <= done_nbusy_s;


end behav;
