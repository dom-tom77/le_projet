#!/usr/bin/python3
# pour fonctionner il faut installer le dépôt suivant avec la commande : apt install python3-dialog
import os
import locale
import subprocess
from dialog import Dialog

# Permet de s'appuyer sur les parametres régionaux du système (langue, clavier, etc...)
locale.setlocale(locale.LC_ALL, '')

# Déclaration du titre de la boîte de dialogue
d = Dialog(dialog="dialog")
d.set_background_title("FORMATIONS")

# Ouverture de la boîte de dialogue
if d.yesno("Outils de déployement des logiciels nécessaire aux formations....\n \nVoullez-vous continuer ?") == d.OK:
    pass

    code, choixSalle = d.menu("Choix de la salle",
                       choices=[("1", "Abeille"),
                                ("2", "Baobab"),
                                ("3", "ALL")])
    if code == d.OK:
        
        # 'choixSalle' a comme valeur soit "1", "2", ou "3"
        if choixSalle == "1":
           salle = "abeille"
        if choixSalle == "2":
           salle = "baobab"
        if choixSalle == "3":
           salle = "all"

        pass

    code, choixFormation = d.menu("Choix de la formation",
                       choices=[("1", "LAMP"),
                                ("2", "Visual Studio"),
                                ("3", "IT"),
                                ("4", "Bureautique")])
    if code == d.OK:
        # 'choixFormation' a comme valeur  "1", "2", "3" ou "4"

        if choixFormation == "1":
           book = "install-apache.yml"
        if choixFormation == "2":
           book = "install-MS-VS.yml"
        if choixFormation == "3":
           book = "install-IT.yml"
        if choixFormation == "4":
           book = "install-libreOffice.yml"

        # Execute le playbook
        subprocess.call(["./run.sh", salle, book])
        pass
