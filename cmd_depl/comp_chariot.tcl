###########################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# Fichier      : comp_chariot.tcl
# Description  : Script de compilation des fichiers et 
#                de lancement de la simulation
# 
# Auteur       : G.Matthey
# Date         : 12.01.2016
# Version      : 0.0
#
# Utilise      : Compilation projet Commande chariot
#
#--| Modifications |--------------------------------------------------------
# Ver  Aut.  Date   Description
#                         
############################################################################


#create library work        
vlib work
#map library work to work
vmap work work

# Files compilation
# to be complete with all your files
vcom -reportprogress 300 -work work   ../src/cpt_pos.vhd
vcom -reportprogress 300 -work work   ../src/div_clk.vhd
vcom -reportprogress 300 -work work   ../src/mss_cmd_moteur.vhd

#compile top file

vcom -reportprogress 300 -work work   ../src/cmd_mvnt_mot_top.vhd

# top_sim compilation
vcom -reportprogress 300 -work work   ../src_tb/console_sim.vhd


