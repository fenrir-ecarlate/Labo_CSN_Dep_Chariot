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

--To complete --


end behav;
