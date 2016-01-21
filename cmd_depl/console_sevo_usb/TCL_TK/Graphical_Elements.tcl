#----------------------------------------------------------------------------------------
#-- HEIG-VD /////////////////////////////////////////////////////////////////////////////
#-- Haute Ecole d'Ingenerie et de Gestion du Canton de Vaud
#-- School of Business and Engineering in Canton de Vaud
#----------------------------------------------------------------------------------------
#-- REDS Institute //////////////////////////////////////////////////////////////////////
#-- Reconfigurable Embedded Digital Systems
#----------------------------------------------------------------------------------------
#--
#-- File                 : Graphical_Elements.tcl
#-- Author               : Sebastion Masle
#-- Date                 : 07.07.2010
#--
#-- Context              : A utiliser pour la creation de scripts TCL/TK (ie. consoles)
#--
#----------------------------------------------------------------------------------------
#-- Description :
#--   Fonctions de gestion des elements graphiques:
#--   * Gestion des leds
#--     - createLed      : creation d'une Barrette de leds. Les options:
#--     - setLed         : activation d'une led dans la Barrette
#--     - setColor       : choix de la couleur de la led
#--   * Gestion des 'Level'
#--     * createLevel  : creation d'un afficheur de niveau par barres.
#--     * setSegLevel  : commande des barres, active ou desactiver.
#--     * setLevel     : affichage du niveau en fonction de la valeur d'entree
#--   * Gestion des 'Result'
#--     - createResult   : creation d'une zone d'affichage de 'resultat' sous
#--     - setResult      : affichage de la valeur dans le 'resultat' voulu
#--   * Gestion des 'Scale'
#--     - createScale    : creation d'une 'echelle'.
#--     - readScale      : lecture de la valeur de l'echelle Name
#--   * Gestion des 'SevenSegDisplay'
#--     - createSevenSeg : creation d'un afficheur 7 segments
#--     - setSevenSeg    : commande des segement, active ou desactiver.
#--     - setHex         : valeur hexadecimal a afficher
#--   * Gestion des 'Button'
#--     - createButton : creation d'une barrette de boutons
#--     - readButton : lecture de l'etat du bouton 'SwitchNbr'
#--   * Gestion des 'Value'
#--     - createValue    : creation d'une zone d'entree de 'valeurs' sous
#--     - readValue      : lecture de la valeur de l'entree X
#----------------------------------------------------------------------------------------
#-- Modifications :
#-- Ver   Date        Engineer     Comments
#-- 1.0   See header  SMS          Initial version
#-- 1.1   23.08.2010  GCD          Ajout de l'entete, mise en forme, liste des fonctions
#-- 1.2   16.12.2014  ELR 		   Ajout parametre dans Result et Value pour cacher le label
#----------------------------------------------------------------------------------------


#----------------------------------------------------------------------------------------
#--| Gestion des leds |------------------------------------------------------------------
#--
#--  * createLed      : creation d'une Barrette de leds. Les options:
#--    - Name         : nom de la fenetre, ex: .top.led0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Info_TXT     : affichage du n° de la led (L0, L1, ...)
#--                     0 -> rien (defaut), 1 -> valeurs affichees
#--    - Direction    : horizontal (defaut) ou vertical
#--    - Nbr_Led      : nbr de led dans la Barrette  (defaut 8)
#--    - Color        : couleur de la led active (defaut rouge)
#--
#--  * setLed         : activation d'une led dans la Barrette
#--    - Name         : nom de la barrette (chemin dans la fenetre)
#--    - Led          : numero de la led, 0 a N
#--    - State        : ON ou OFF
#--
#--  * setColor       : choix de la couleur de la led
#--    - Name         : nom de la barrette (chemin dans la fenetre)
#--    - Led          : numero de la led, 0 a N
#--    - Couleur      : couleur désirée
#----------------------------------------------------------------------------------------
proc createLed {Name PosX PosY {Info_TXT 0} {Direction horizontal} \
               {Nbr_Led 8} {Color red}} {
    global NbrBit_Led

    set NbrBit_Led $Nbr_Led
    set LedWidth 25

    set Index [expr $Nbr_Led - 1]

    if {$Direction == "horizontal"} {
        canvas $Name -height $LedWidth -width [expr $Nbr_Led * $LedWidth] -relief sunken
     } elseif {$Direction == "vertical"} {
        canvas $Name -height [expr $Nbr_Led * $LedWidth] -width  $LedWidth -relief sunken
     } else {
        puts " Error, variable Direction doit etre 'horizontal' ou 'vertical' "
     }

    for {set i 0} {$i<=$Index} {set i [expr  $i + 1]} {
        if {$Direction == "horizontal"} {
            $Name create oval [expr ($Index - $i)* $LedWidth + 7 ] 7   \
                              [expr ($Index - $i) * $LedWidth + $LedWidth] $LedWidth \
                               -width 2 -fill gray -tag $Color
            $Name create oval [expr ($Index - $i) * $LedWidth + 13] 13 \
                              [expr ($Index - $i) *$LedWidth + 17] 17  \
                              -fill gray -width 1
       } else {
            $Name create oval 7 [expr ($Index - $i)* $LedWidth + 7 ]   \
                              $LedWidth [expr ($Index - $i) * $LedWidth + $LedWidth] \
                               -width 2 -fill gray -tag $Color
            $Name create oval 13 [expr ($Index - $i) * $LedWidth + 13] \
                              17 [expr ($Index - $i) *$LedWidth + 17] \
                              -fill gray -width 1
       }
    }

    if {$Info_TXT} {
        for {set i $Index} {$i>=0} {set i [expr  $i -1]} {
            if {$Direction == "horizontal"} {
                $Name create text [expr ($Index - $i) * $LedWidth + 15] 35 -text "L$i"
            } else {
                $Name create text  35 [expr ($Index - $i) * $LedWidth + 16] -text "L$i"
            }
        }
    }
    place $Name -x $PosX -y $PosY
}

proc setLed  {Name Led State} {

    set Color "[$Name itemcget 1 -tags]"

    # Prevent error from "current" tag
    set Color [string map -nocase {current \ } $Color]
    set Color [string trim $Color]

    if {$State == "ON"} {
        $Name itemconfigure [expr ($Led * 2) + 1] -fill $Color
        $Name itemconfigure [expr ($Led * 2) + 2] -fill $Color
    } elseif {$State == "OFF"} {
        $Name itemconfigure [expr ($Led * 2) + 1] -fill gray
        $Name itemconfigure [expr ($Led * 2) + 2] -fill gray
    } else {
        puts "Error, 'State' doit etre egale a ON ou OFF !"
    }
}

proc setColor {Name Led Color} {

    $Name itemconfigure [expr ($Led * 2) + 1] -fill $Color
    $Name itemconfigure [expr ($Led * 2) + 2] -fill $Color
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'Level' |---------------------------------------------------------------
#--
#--    * createLevel  : creation d'un afficheur de niveau par barres.
#--      - Name       : nom de la fenetre, ex: .top.level0
#--      - PosX       : position en X de l'element
#--      - PosY       : position en Y de l'element
#--      - Info_TXT   : affichage du n° de la led (S0, S1, ...)
#--                     0 -> rien (defaut), 1 -> valeurs affichees
#--      - Name_TXT   : texte a afficher sous le niveau.
#--                     Si le texte=0 --> aucun texte n'est affiche (defaut)
#--      - Nbr_Seg    : nbr de la barre dans le niveau (defaut 8)
#--      - Color      : couleur de la barre active (defaut rouge)
#--
#--    * setSegLevel  : commande des barres, active ou desactiver.
#--      - Name       : nom de la fenetre, ex: .top.level0
#--      - Seg        : numero du segment a modifier l'etat (de 0 a N-1)
#--      - State      : ON ou OFF
#--
#--    * setLevel     : affichage du niveau en fonction de la valeur d'entree
#--      - Name       : nom de la fenetre, ex: .top.level0
#--      - Val        : valeur a afficher (0 = tout eteint)
#----------------------------------------------------------------------------------------
proc createLevel {Name posX posY {Info_TXT 0} {Name_TXT 0} {Nbr_Seg 8} \
                 {Color red}} {

    # la commande -relief ne fonctionne pas !!
    canvas $Name -height [expr ($Nbr_Seg * 8) + (($Nbr_Seg + 1) * 4)+ 15] \
                 -width 65 -relief sunken

    # cadre de contour
    $Name create rectangle 2 2 50 [expr ($Nbr_Seg * 8) + (($Nbr_Seg + 1) * 4) +2] \
                           -tag $Nbr_Seg

    for {set i 0} {$i<$Nbr_Seg} {incr i} {
        $Name create rectangle 7 [expr 6 + ($Nbr_Seg - $i - 1) * 12] 45 \
                                 [expr 14 + ($Nbr_Seg - $i - 1) * 12 ]  \
                                  -fill gray -tag $Color
    }

    # creation des numeros des segments
    if {$Info_TXT} {
        for {set i 0} {$i<$Nbr_Seg} {incr i} {
            $Name create text 58 [expr 10 + ($Nbr_Seg - $i - 1) * 12] \
                              -text [expr $i + 1]
        }
    }

    # creation du text d'info
    set NoName_TXT [string is integer $Name_TXT]
    if {!$NoName_TXT} {
        $Name create text 26 [expr ($Nbr_Seg * 8) + (($Nbr_Seg + 1) * 4) +10] \
                          -text $Name_TXT
    }
    place $Name -x $posX -y $posY
}

proc setSegLevel  {Name Seg State} {

    set Color [$Name itemcget 2 -tag]

    if {$State == "ON"} {
        $Name itemconfigure [expr $Seg + 2] -fill $Color
    } elseif {$State == "OFF"} {
        $Name itemconfigure [expr $Seg + 2] -fill gray
    } else {
        puts "Error, 'State' doit etre egale a ON ou OFF !"
    }
}

proc setLevel {Name Val} {

    set Level_Size [$Name itemcget 1 -tag]

    for {set i 0} {$i<$Val} {incr i} {
        setSegLevel $Name $i ON
    }

    for {set i $Val} {$i<$Level_Size} {incr i} {
        setSegLevel $Name $i OFF
    }
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'Result' |--------------------------------------------------------------
#--
#--  * createResult   : creation d'une zone d'affichage de 'resultat' sous
#--                     forme decimal et hexadecimal.
#--    - Name         : nom de la fenetre, ex: .top.result0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Nbr_Result   : nbr de 'resultat' a afficher (defaut 2)
#--    - Label_ON     : affichage du label "Result A" (B, C, ...)
#--						 1 visible (default), 0 caché
#--  * setResult      : affichage de la valeur dans le 'resultat' voulu
#--    - Name         : nom de la fenetre, ex: .top.result0
#--    - Result       : lettre (en majuscule, ex: A) du 'resultat'
#--    - Val          : valeur a afficher, format decimal
#--------------------------------------------------------------------------------------------
proc createResult {Name PosX PosY {Nbr_Result 2} {Label_ON 1}} {
    set Var_Name [string replace $Name 0 0 _]
	
	if {$Label_ON == 1} {
		set width 210
	} else {
		set width 160
	}

    for {set i 0} {$i<$Nbr_Result} {incr i} {
        global ResultDec$Var_Name\_$i ResultHex$Var_Name\_$i
    }

    # frame de base pour le placement des objets
    frame $Name -height [expr ($Nbr_Result* 25) + 25] -width $width

    label $Name.hexInfo -text "Hex"
    label $Name.decInfo -text "Décimale"

    for {set i 0} {$i<$Nbr_Result} {incr i} {
		if {$Label_ON == 1} {
			set Result_Name [format %c [expr $i + 65]]
			label $Name.resultName_$i -text "Result $Result_Name"
		}
        label $Name.resultDec_$i  -textvariable ResultDec$Var_Name\_$i -relief sunken
        label $Name.resultHex_$i  -textvariable ResultHex$Var_Name\_$i -relief sunken
    }

    place $Name          -x $PosX -y $PosY
	if {$Label_ON == 1} {
      place $Name.decInfo  -x  65 -y 1
      place $Name.hexInfo  -x 140 -y 1
	} else {
	  place $Name.decInfo  -x  25 -y 1
      place $Name.hexInfo  -x 100 -y 1
	}

    for {set i 0} {$i<$Nbr_Result} {incr i} {
	    if {$Label_ON == 1} {
          place $Name.resultName_$i -x   5 -y [ expr 22 + ($i* 25)]
		  place $Name.resultDec_$i  -x  60 -y [ expr 22 + ($i* 25)] -height 22 -width 70
          place $Name.resultHex_$i  -x 135 -y [ expr 22 + ($i* 25)] -height 22 -width 70
	    } else {
          place $Name.resultDec_$i  -x  10 -y [ expr 22 + ($i* 25)] -height 22 -width 70
          place $Name.resultHex_$i  -x 85 -y [ expr 22 + ($i* 25)] -height 22 -width 70
		}
    }
}

proc setResult {Name Result Value} {

    set Var_Name [string replace $Name 0 0 _]

    binary scan $Result "c" ASCIICode
    set Result [expr $ASCIICode - 65]

    global ResultDec$Var_Name\_$Result ResultHex$Var_Name\_$Result

    if {$Value == ""} {
        set ResultDec$Var_Name\_$Result ""
        set ResultHex$Var_Name\_$Result ""
    } else {
        set ResultDec$Var_Name\_$Result $Value
        set ResultHex$Var_Name\_$Result [format %#04x $Value]
    }
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'Scale' |---------------------------------------------------------------
#--
#--  * createScale    : creation d'une 'echelle'.
#--    - Name         : nom de la fenetre, ex: .top.scale0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Info_TXT     : affichage des increments sur l'echelle
#--                     0 -> rien (defaut), 1 -> valeurs affichees
#--    - Name_TXT     : texte de legende de l'echelle
#--    - Direction    : horizontal (defaut) ou vertical
#--    - Nbr_Bits     : taille de l'echelle ((2**Nbr_Bits)-1), defaut 4
#--
#--  * readScale      : lecture de la valeur de l'echelle Name
#--    - Name         : nom de la fenetre, ex: .top.scale0
#----------------------------------------------------------------------------------------
proc createScale {Name PosX PosY {Info_TXT 0} {Name_TXT ""} {Cmd ""} \
                 {Direction horizontal} {Nbr_Bits 4}} {
    global NbrBit_Scale

    set NbrBit_Scale $Nbr_Bits

    set Var_Name [string replace $Name 0 0 _]

    puts "createScale: Cmd = $Cmd"
    if {$Cmd == ""} {
        scale $Name -from 0 -to [expr (pow(2,$Nbr_Bits)) - 1] -orient $Direction  \
                    -showvalue $Info_TXT -tickinterval 1  -label $Name_TXT      \
                    -length [expr (30 * pow(2,$Nbr_Bits)) /2] -showvalue $Info_TXT
    } else {
        scale $Name -from 0 -to [expr (pow(2,$Nbr_Bits)) - 1] -orient $Direction  \
                    -showvalue $Info_TXT -tickinterval 2  -label $Name_TXT      \
                    -length [expr (19 * pow(2,$Nbr_Bits)) /2] -showvalue $Info_TXT \
                    -command "scaleCmd $Cmd"
    }

    place $Name -x $PosX -y $PosY
}


proc readScale {Name} {

    return [$Name get]
}

proc scaleCmd {Cmd Val} {
    $Cmd
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'SevenSegDisplay' |-----------------------------------------------------
#--
#--  * createSevenSeg : creation d'un afficheur 7 segments
#--    - Name         : nom de la fenetre, ex: .top.sevenSeg0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Info_TXT     : affichage d'un texte de legende sous l'afficheur
#--                     0 -> rien (defaut), 1 -> valeurs affichees
#--    - Size         : taille de l'afficheur
#--    - Color        : couleur du segment actif (defaut bleu)
#--
#--  * setSevenSeg    : commande des segement, active ou desactiver.
#--    - Name         : nom de la fenetre, ex: .top.sevenSeg0
#--    - Seg          : lettre (a-g, en minuscule) du segment
#--    - State        : ON ou OFF
#--
#--  * setHex         : valeur hexadecimal a afficher
#--    - Name         : nom de la fenetre, ex: .top.sevenSeg0
#--    - Val          : valeur a afficher, de 0 a 15
#--    - State        : ON ou OFF
#----------------------------------------------------------------------------------------
proc createSevenSeg {Name posX posY {Info_TXT 0} {Size 3} {Color blue} } {

    set dx [expr $Size * 20]                     ;# espace entre les digits
    set segmentSize [expr 10 * $Size]            ;# longueur des segemnts
    set spaceSize   [expr 2  * $Size]            ;# espace entre les segements
    set lineSize    [expr 1  * $Size]            ;# epaisseur des digits

    # creation des positions
    set pos1 14
    set pos2 [expr ((1 * $spaceSize) + (0 * $segmentSize)) + 14]
    set pos3 [expr ((1 * $spaceSize) + (1 * $segmentSize)) + 14]
    set pos4 [expr ((2 * $spaceSize) + (1 * $segmentSize)) + 14]
    set pos5 [expr ((2 * $spaceSize) + (2 * $segmentSize)) + 14]
    set pos6 [expr ((3 * $spaceSize) + (2 * $segmentSize)) + 14]
    set pos7 [expr ((1.5 *$spaceSize)  + $segmentSize) + 14]

    # creation des elements graphiques
    canvas $Name -height [expr 30 * $Size + 20] -width  [expr (23 * $Size)] \
                 -relief sunken

    set color gray
    for {set i 0} {$i<7} {incr i} {
        # Creation des segements d'un digit
        switch -- $i {
            0 {$Name create line $pos2 $pos1 $pos3 $pos1 -width $lineSize \
                                 -fill gray -capstyle round -tag $Color}
            1 {$Name create line $pos4 $pos2 $pos4 $pos3 -width $lineSize \
                                 -fill gray -capstyle round}
            2 {$Name create line $pos4 $pos4 $pos4 $pos5 -width $lineSize \
                                 -fill gray -capstyle round}
            3 {$Name create line $pos2 $pos6 $pos3 $pos6 -width $lineSize \
                                 -fill gray -capstyle round}
            4 {$Name create line $pos1 $pos4 $pos1 $pos5 -width $lineSize \
                                 -fill gray -capstyle round}
            5 {$Name create line $pos1 $pos2 $pos1 $pos3 -width $lineSize \
                                 -fill gray -capstyle round}
            6 {$Name create line $pos2 $pos7 $pos3 $pos7 -width $lineSize \
                                 -fill gray -capstyle round}
        }
    }

    # creation du text d'info
    set NoInfo_TXT [string is integer $Info_TXT]
    if {!$NoInfo_TXT} {
        #$Name create text 25 95 -text $Info_TXT
        $Name create text [expr ($pos3 + $pos2)/2] [expr $pos6 + $lineSize + 7]\
                          -text $Info_TXT
    }

    # creation du bord noir
    $Name create rectangle 2 2  [expr (23 * $Size)- 1]  [expr 30 * $Size + 19]

    place $Name  -x $posX -y $posY
}

proc setSevenSeg {Name Seg State} {

    set Color [$Name itemcget 1 -tag]

    binary scan $Seg "c" ASCIICode

    set Seg_Nbr [expr $ASCIICode -96]

    if {$State == "ON"} {
        $Name itemconfigure $Seg_Nbr -fill $Color
    } elseif {$State == "OFF"} {
        $Name itemconfigure $Seg_Nbr -fill gray
    } else {
        puts "Error, 'State' doit etre egale a ON ou OFF !"
    }
}

proc setHex {Name Val} {

    array set hexdigits \
    {
      " " {0 0 0 0 0 0 0}
      "0" {1 1 1 1 1 1 0}
      "1" {0 1 1 0 0 0 0}
      "2" {1 1 0 1 1 0 1}
      "3" {1 1 1 1 0 0 1}
      "4" {0 1 1 0 0 1 1}
      "5" {1 0 1 1 0 1 1}
      "6" {1 0 1 1 1 1 1}
      "7" {1 1 1 0 0 0 0}
      "8" {1 1 1 1 1 1 1}
      "9" {1 1 1 1 0 1 1}
      "A" {1 1 1 0 1 1 1}
      "B" {0 0 1 1 1 1 1}
      "C" {1 0 0 1 1 1 0}
      "D" {0 1 1 1 1 0 1}
      "E" {1 0 0 1 1 1 1}
      "F" {1 0 0 0 1 1 1}
    }

    set Val [format %X $Val]

    set Index 97
    foreach Segment $hexdigits($Val) {
        # selection de la couleur du segement
        if {$Segment} {
            set State ON
        } else {
            set State OFF
        }
        setSevenSeg $Name [format %c $Index] $State
        incr Index
    }
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'Button' |--------------------------------------------------------------
#--
#--  * createButton   : creation d'une barrette de boutons
#--    - Name         : nom de la fenetre, ex: .top.button0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Info_TXT     : affichage du n° du bouton (S0, S1, ...)
#--                     0 -> rien (defaut), 1 -> valeurs affichees
#--    - Direction    : horizontal (defaut) ou vertical
#--    - Nbr_Buttons  : nbr de boutons dans la Barrette  (defaut 8)
#--
#--  * readButton     : lecture de l'etat du bouton 'SwitchNbr'
#--       > Name      : nom de la fenetre, ex: .top.switch0
#--       > ButtonNbr : numero (0..N) du bouton a lire
#-----------------------------------------------------------------------------------
proc createButton {Name PosX PosY {Info_TXT 0} {Cmd ""} {Direction horizontal} \
                  {Nbr_Buttons 8}} {
    global Button_Array

    image create bitmap boutonON  -data \
        "#define BouttonON_width 22
        #define BouttonON_height 45
        static unsigned char BouttonON_bits[] = {
        0x00, 0xe0, 0x00, 0x00, 0xb0, 0x01, 0x0c, 0x18, 0x03, 0x0e, 0x08, 0x02,
        0x08, 0x08, 0x02, 0x08, 0x08, 0x02, 0x08, 0x08, 0x02, 0x08, 0x08, 0x02,
        0x08, 0x08, 0x02, 0x08, 0x08, 0x02, 0x00, 0x08, 0x02, 0x00, 0x08, 0x02,
        0x00, 0x08, 0x02, 0x00, 0x18, 0x03, 0x00, 0x18, 0x03, 0x00, 0x18, 0x03,
        0x00, 0x10, 0x01, 0x00, 0x10, 0x01, 0x00, 0x1c, 0x07, 0x00, 0x16, 0x0d,
        0x00, 0x13, 0x09, 0x00, 0x19, 0x13, 0x00, 0x1d, 0x17, 0x00, 0x1d, 0x17,
        0x00, 0x1d, 0x17, 0x00, 0x1d, 0x17, 0x00, 0xf9, 0x0b, 0x00, 0xf2, 0x05,
        0x00, 0x04, 0x02, 0x00, 0xf8, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x7c, 0x00, 0x00, 0x44, 0x00, 0x00,
        0x44, 0x00, 0x00, 0x44, 0x00, 0x00, 0x44, 0x00, 0x00, 0x44, 0x00, 0x00,
        0x44, 0x00, 0x00, 0x7c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00 };"

    image create bitmap boutonOFF -data \
        "#define BouttonOFF_width 22
        #define BouttonOFF_height 45
        static unsigned char BouttonOFF_bits[] = {
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x0e, 0x00, 0x00,
        0x08, 0x00, 0x00, 0x08, 0x00, 0x00, 0x08, 0x00, 0x00, 0x08, 0x00, 0x00,
        0x08, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xe0, 0x07,
        0x00, 0x10, 0x08, 0x00, 0xe8, 0x13, 0x00, 0xf4, 0x27, 0x00, 0x3a, 0x2e,
        0x00, 0x3a, 0x2e, 0x00, 0x3a, 0x2e, 0x00, 0x3a, 0x2e, 0x00, 0x32, 0x26,
        0x00, 0x24, 0x32, 0x00, 0x2c, 0x1a, 0x00, 0x38, 0x0e, 0x00, 0x20, 0x02,
        0x00, 0x20, 0x02, 0x00, 0x30, 0x06, 0x00, 0x30, 0x06, 0x00, 0x30, 0x06,
        0x00, 0x10, 0x04, 0x00, 0x10, 0x04, 0x7c, 0x10, 0x04, 0x44, 0x10, 0x04,
        0x44, 0x10, 0x04, 0x44, 0x10, 0x04, 0x44, 0x10, 0x04, 0x44, 0x10, 0x04,
        0x44, 0x10, 0x04, 0x7c, 0x10, 0x04, 0x00, 0x30, 0x06, 0x00, 0x60, 0x03,
        0x00, 0xc0, 0x01 };"

    set Index [expr $Nbr_Buttons - 1]
    set Var_Name [string replace $Name 0 0 _]

    set Button_Array($Var_Name) $Nbr_Buttons

    # frame de base pour le placement des objets
    if {$Direction=="horizontal"} {
        frame $Name -height 75 -width [expr ($Nbr_Buttons* 35)]
    } elseif {$Direction=="vertical"} {
        frame $Name -height [expr ($Nbr_Buttons* 55)] -width 60
    } else {
        puts " Error, variable Direction doit etre 'horizontal' ou 'vertical' "
    }
    place $Name -x $PosX -y $PosY

    if {$Cmd == ""} {
        for {set i $Index} {$i >= 0} {set i [expr $i - 1]} {
            checkbutton $Name.button_$i  -image boutonOFF -selectimage boutonON \
                        -indicatoron 0 -relief flat -text S$i  -font fnt1 \
                        -activebackground [$Name cget -background] -borderwidth 0 \
                        -variable Button_Array($Var_Name$i)
            $Name.button_$i configure -selectcolor [$Name.button_$i cget -background]
    
             if {$Direction=="horizontal"} {
                place $Name.button_$i -x [expr 2 + ($Index - $i)*35] -y  5
             } else {
                place $Name.button_$i -x 2  -y  [expr 5 + ($Index - $i)*55]
             }
        }
     } else {
        for {set i $Index} {$i >= 0} {set i [expr $i - 1]} {
            checkbutton $Name.button_$i  -image boutonOFF -selectimage boutonON \
                        -indicatoron 0 -relief flat -text S$i  -font fnt1 \
                        -activebackground [$Name cget -background] -borderwidth 0 \
                        -variable Button_Array($Var_Name$i) -command $Cmd
            $Name.button_$i configure -selectcolor [$Name.button_$i cget -background]
    
             if {$Direction=="horizontal"} {
                place $Name.button_$i -x [expr 2 + ($Index - $i)*35] -y  5
             } else {
                place $Name.button_$i -x 2  -y  [expr 5 + ($Index - $i)*55]
             }
        }
     }

    if {$Info_TXT} {
        for {set i $Index} {$i >= 0} {set i [expr $i - 1]} {
            label $Name.infoButton_$i -text S$i
            if {$Direction=="horizontal"} {
                place $Name.infoButton_$i -x [expr 7 + ($Index - $i)*35] -y 55
            } else {
                place $Name.infoButton_$i -x 35  -y [expr 20 + ($Index - $i)*55]
            }
        }
    }
}

proc readButton {Name ButtonNbr} {
    global Button_Array

    set Var_Name [string replace $Name 0 0 _]

    return $Button_Array($Var_Name$ButtonNbr);
}

proc initButton {Name} {
    global Button_Array

    set Var_Name [string replace $Name 0 0 _]

    set Nbr_Buttons $Button_Array($Var_Name)

    for {set i 0} {$i<$Nbr_Buttons} {incr i} {
        set Button_Array($Var_Name$i) 0
    }
}


#----------------------------------------------------------------------------------------
#--| Gestion des 'Value' |---------------------------------------------------------------
#--
#--  * createValue    : creation d'une zone d'entree de 'valeurs' sous
#--                     forme decimal et hexadecimal. Les options:
#--    - Name         : nom de la fenetre, ex: .top.value0
#--    - PosX         : position en X de l'element
#--    - PosY         : position en Y de l'element
#--    - Cmd		  : commande a executer
#--    - Nbr_Value    : nbr d'entree a afficher (defaut 2)
#--    - Init_Value   : valeur initiale
#--    - Label_ON     : affichage du label "Result A" (B, C, ...)
#--						 1 visible (default), 0 caché
#--  * readValue      : lecture de la valeur de l'entree X
#--    - Name         : nom de la fenetre, ex: .top.result0
#--    - Value_X      : lettre (en majuscule, ex: A) de l'entree a lire
#--                     sous forme hexadecimal ou decimal
#----------------------------------------------------------------------------------------

proc createValue {Name PosX PosY {Cmd ""} {Nbr_Value 2} {Init_Value 0} {Label_ON 1}} {
    global Value_Array

    set Var_Name [string replace $Name 0 0 _]
	
	if {$Label_ON == 1} {
		set width 100
	} else {
		set width 130
	}
	

    # frame de base pour le placement des objets
    frame $Name -height [expr ($Nbr_Value* 25) + 2] -width $width
    place $Name -x $PosX -y $PosY

    for {set i 0} {$i<$Nbr_Value} {incr i} {
		if {$Label_ON == 1} {
			set Value_Name [format %c [expr $i + 65]]
			label $Name.valueName_$i -text "Value $Value_Name"
		}
        set Value_Array($Var_Name$i) $Init_Value
        entry $Name.value_$i -textvariable Value_Array($Var_Name$i)
        if {$Cmd != ""} {
            bind  $Name.value_$i <Key-Return> $Cmd
        }
		if {$Label_ON == 1} {
			place $Name.valueName_$i -x  5 -y [expr 2 + ($i* 25)]
		}
        place $Name.value_$i     -x 60 -y [expr 2 + ($i* 25)] -height 22 -width 70
    }
}

proc readValue {Name  Value_X} {
    global Value_Array

    binary scan $Value_X "c" ASCIICode
    set Value_X [expr $ASCIICode - 65]
    set Var_Name [string replace $Name 0 0 _]

    catch {format %d $Value_Array($Var_Name$Value_X)} err

    puts $err

    set Value "Not Integer"

    if {[string is integer $err]} {
        set Value [format %d $Value_Array($Var_Name$Value_X)]
    }
    return $Value
}