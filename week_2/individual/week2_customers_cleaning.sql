invoice_id põhise kontrolliga tuvastasin 5116 eemaldatavat korduvat müügirida.
customer_id oli NULL 1487 real, kuid jaemüügi kontekstis ei tähenda see automaatselt andmeviga, sest osa oste võib olla tehtud tuvastamata kliendile.
quantity ja unit_price väärtustes ei leidunud 0 ega negatiivseid väärtusi ning teistes kontrollitud väljades NULL-väärtusi ei olnud.
50 müügirida olid pärast andmestiku lubatud lõppkuupäeva 28.02.2025.
Puhastamisel tehtud tegevused
Eemaldasin 5116 korduvat müügirida, jättes iga invoice_id kohta alles väikseima id väärtusega rea.
Pärast duplikaatide eemaldamist vähenes sales_test ridade arv 15 234 realt 10 118 reale.
customer_id NULL-väärtusi ei muutnud, sest need võivad olla äriliselt korrektsed.
Pärast puhastusloogika kontrollimist sales_test tabelis rakendasin sama puhastuse ka algsele sales tabelile. Eemaldasin 5116 üleliigset rida ning pärast puhastamist jäi sales tabelisse 10 118 rida.
Analüüsist välja jäetud andmed
50 müügirida kuupäevaga pärast 28.02.2025 jäid sales_test tabelisse alles, kuid need tuleb analüüsist kuupäevafiltriga välja jätta.
Muude kontrollide põhjal ei tuvastanud ma andmeid, mida oleks vaja analüüsist välja jätta.
