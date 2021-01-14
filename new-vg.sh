#!/usr/bin/env bash

# if [ -z "$*" ]; then echo "No args"; fi

if [[ $# -eq 0 ]] ; then
	echo "pass new vagrant box name as command line argument"
	exit 0
fi

boxname="$1"

mkdir ../$boxname
cp ./Vagrantfile ../$boxname/

sed -i "s/\"ubuntu\"/\"$boxname\"/" ../$boxname/Vagrantfile
sed -i "s/\"centos\"/\"$boxname\"/" ../$boxname/Vagrantfile
