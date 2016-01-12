###########################################################################
# HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
# Institut REDS, Reconfigurable & Embedded Digital Systems
#
# Fichier      : runconsole_chariot.tcl
# Description  : Script de compilation fichiers et lancement simulation
#                manuelle avec REDS_Console
# 
# Auteur       : G.Matthey
# Date         : 12.01.2016
# Version      : 1.0
#
# Utilise      : Compilation/simulation manuelle 
#
#--| Modifications |--------------------------------------------------------
# Ver  Aut.  Date   Description
#                         
############################################################################

#compile all file 
do ../comp_chariot.tcl

#Chargement fichier pour la simulation
vsim work.console_sim 

#ajout signaux composant simuler dans la fenetre wave
add wave UUT/*

#lance la console REDS
do /opt/tools_reds/REDS_console_logisim.tcl

#ouvre le fichier format predefini
#do wave_gen_pwm.do




