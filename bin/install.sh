#!/bin/bash

#creation du dosier source pour pouvoir clone tout le code dedans
mkdir ~/src
#creation de variable pour le chemin d'accesse
alias="source ~/src/.aliases" #>> ~/.bashrc
fanfun="source ~/src/fancy_functions.sh" #>> ~/.bashrc
barc=$(<~/.bashrc)
bin=$"~/bin"

#pour verifier si le fichier aliases est dans le bashrc
if grep -q "$alias" <<< "$barc";
then
	echo "Le fichier aliases est deja disponible dans le fichier '.bashrc'"
else
	git clone https://github.com/NTUMBABU/fancy_tools.git ~/src
	echo $alias >> ~/.bashrc
	echo 'le fichier aliase est a present dans le  .bashrc'
fi

#pour verifier si le fichier fancy function exite
if grep -q "$fanfun" <<< "$barc";
then
	echo "Le fichier fancy functions est deja disponible dans le fichier '.bashrc'"
else
	echo $fanfun >> ~/.bashrc
	echo 'le fichier fancy function est a present dans le .bashrc'
fi

#creation du fichier bin
if [ -d "$bin" ]
then
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
else
	mkdir ~/bin
	export PATH=$PATH:$HOME/bin
	cp ~/src/bin/updateFancyTools ~/bin/updateFancyTools
fi

















