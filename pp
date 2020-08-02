#!/usr/bin/bash

blih -u $USER_EMAIL repository create $1
blih -u $USER_EMAIL repository setacl $1 ramassage-tek r
blih -u $USER_EMAIL repository getacl $1

git clone git@git.epitech.eu:/$USER_EMAIL/$1
