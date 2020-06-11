#!/bin/sh
echo "Script de nettoyage d'Ubuntu"
sudo apt-get autoclean
echo "Les paquets périmés ont été supprimés OK"
sleep 3
find ~/.thumbnails -type f -atime +7 -exec rm {} \;
echo "Icônes supprimés"
rm -r -f ~/.local/share/Trash/files/* 
echo "Corbeille vidée"
sleep 3
find ~/ -name '*~' -exec rm {} \;
echo "Fichiers temporaires (terminant par ~) du dossier HOME ont été supprimés"
echo "Nettoyage terminé"
