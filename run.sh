#! /bin/bash
clear
book=$2
salle=$1

# Configuration du playbook

sed -i -e'/^- hosts:/d' books/$book
sed -i '/---/a- hosts: ' books/$book
sed -i "s/^- hosts: * /- hosts: $salle /" books/$book

# Execution du push
source ansible2.7.10/bin/activate
ansible-playbook -b -i inventaire.ini  books/$book --become --ask-become-pass
