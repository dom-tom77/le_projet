Mise en situation

Le centre de formation “DMZ” propose des formations basées sur des systèmes et logiciels libres.
Ses formations sont sur les thématiques suivantes : développement web (LAMP), Visual studio , bureautique et IT.

Les formations sont prévues dans les salles Abeille et Baobab. Chaque salle dispose de quinze ordinateurs. Dans la salle Cacao, un serveur Linux permettant de gérer les services réseaux (DNS, DHCP, PXE, TFTP), fera office de routeur.

Il est prévu qu'à chaque fin de formation, les postes clients d'une même salle, soient réinitialisés.

Consciente des avantages proposées par l'open source aussi bien au niveau sécurité que financier, tous les postes sont installés sous GNU/Linux Debian.

Afin d'automatiser au maximum l'installation des postes clients, une solution DNS, DHCP, avec réservation d'adresses, un service PXE / TFTP et l'installation via un fichier preseed et serveur de dépots sont déjà en place et sont fonctionnels.

Les postes sont ainsi réinstallés à la fin de chaque formation de façon basique et commune (juste l'interface GNOME3).

Ansible permet le déploiement des outils spécifiques liès aux formations. Du fait de la particularité qu'il s'agisse d'un centre de formation la configuration des outils se fera par les apprenants durant la dite formation.

Enfin un script permet via un menu de choisir les salles (Abeille, Baobab, les 2) puis les formations précités afin d'envoyer les ordres d'installation des outils liés à la formation.

Il y a 4 books "yml" possible qui seront appelés et executés.

Bonne formation ;)


