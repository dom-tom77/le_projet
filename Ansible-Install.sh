#! /bin/bash
# Script permettant d'executer les books YML
# Version 2020052601
# auteur Dominique Millez
# dans le cadre d'une formation OC

source ansible2.7.10/bin/activate

clear

# Déclaration des variables :

# Choix de la salle
clear
echo -e	"Sélection de la salle à déployer : "
echo -e "-----------------------------------\n"
echo -e "1 - Abeille"
echo -e "2 - Baobab"
echo -e "3 - Toutes\n"
echo -e "Selectionner 1, 2 ou 3\n"
echo -n "Votre choix : "
read salle

case $salle in 
	1)      groupe=abeille;;
	2)	groupe=baobab;;
	3)	groupe=all;;
	*)	echo -e	"Mauvaise saisie, fin du script"
		exit 0
		;;
esac

# Sélection des outils à déployer

clear
echo -e	"Sélection des logiciels à déployer"
echo -e "----------------------------------\n"
echo -e	"1 - Formation LAMP"
echo -e "2 - Formation Visual studio"
echo -e "3 - Formation système"
echo -e "4 - Formation bureautique\n"

echo -e "Selectionner 1, 2, 3 ou 4\n"
echo -n "Votre choix : "
read cours

case $cours in
	1)      book=install-apache.yml;;
	2)	book=install-MS-VS.yml;;
	3)	book=install-IT.yml;;
	4)	book=install-libreOffice.yml;;
	*)	echo -e	"Mauvaise saisie, fin du script"
		exit 0
		;;
esac

# Configuration du playbook

sed -i -e'/^- hosts:/d' books/$book
sed -i '/---/a- hosts: ' books/$book
sed -i "s/^- hosts: * /- hosts: $groupe /" books/$book


# Execution du push 
ansible-playbook -b -i inventaire.ini  books/$book --become --ask-become-pass

# Fin du script
