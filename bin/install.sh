#!/bin/bash

alias=". $HOME/Documents/ProgramationSCRIPT/cours7/TP/fancy_tools/.aliases" #>> ~/.bashrc
fanfun=". $HOME/Documents/ProgramationSCRIPT/cours7/TP/fancy_tools/fancy_functions.sh" #>> ~/.bashrc
barc=$(<~/.bashrc)

if grep -q "$alias" <<< "$barc";
then
	echo "Le fichier aliases est deja disponible dans le fichier '.bashrc'"
else
	echo $alias >> ~/.bashrc
	echo 'le fichier aliase est a present dans le .bashrc'
fi

if grep -q "$fanfun" <<< "$barc";
then
	echo "Le fichier fancy functions est deja disponible dans le fichier '.bashrc'"
else
	echo $fanfun >> ~/.bashrc
	echo 'le fichier fancy function est a present dans le .bashrc'
fi
