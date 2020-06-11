#!/usr/bin/bash

blih -u nicolas.mary@epitech.eu repository create $1
blih -u nicolas.mary@epitech.eu repository setacl $1 ramassage-tek r
blih -u nicolas.mary@epitech.eu repository getacl $1

git clone git@git.epitech.eu:/$USER_EMAIL/$1
