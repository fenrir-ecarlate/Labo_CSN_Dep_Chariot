-----------------------------------------------------------------------
-- HEIG-VD, Haute Ecole d'Ingenierie et de Gestion du canton de Vaud
-- Institut REDS, Reconfigurable & Embedded Digital Systems
--
-- Fichier      : dec_7seg.vhd
-- Description  : Decodeur valeur binaire 4 bits vers 7 segments (0 à F)
--
-- Auteur       : E. Messerli
-- Date         : 06.06.2010
-- Version      : 0.0
--
-- Utilise      : Exemple description VHDL simple
--
--| Modifications |-----------------------------------------------------------
-- Version   Auteur Date               Description
--
------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity dec_7seg is
    port (
        val_bin_i   : in  std_logic_vector (3 downto 0);
        seven_seg_o : out std_logic_vector (6 downto 0)
            -- bits 6 downto 0 correspond to :  g, f, e, d, c, b, a
        );
end dec_7seg;

architecture tdv of dec_7seg is
  
begin

  with val_bin_i select
  --seven_seg_o  (6 5 4 3 2 1 0)
  --seven_seg_o : g f e d c b a
     seven_seg_o <=  "0111111"  when "0000",--0
                     "0000110"  when "0001",--1
                     "1011011"  when "0010",--2
                     "1001111"  when "0011",--3
                     "1100110"  when "0100",--4
                     "1101101"  when "0101",--5
                     "1111101"  when "0110",--6
                     "0000111"  when "0111",--7
                     "1111111"  when "1000",--8
                     "1101111"  when "1001",--9
                     "1110111"  when "1010",--A
                     "1111100"  when "1011",--B
                     "0111001"  when "1100",--C
                     "1011110"  when "1101",--D
                     "1111001"  when "1110",--E
                     "1110001"  when "1111",--F
                     "XXXXXXX"  when others; --pour la simulation
                
end tdv;
