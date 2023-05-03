#!/bin/bash

echo "########## Adicionando Usuario ##########"
sudo useradd -m  caik

echo "########## update ##########"
if ! sudo apt update
	then 
		echo "Não foi possível executar update"
		exit 1
fi

echo "########## upgrade ##########"
if ! apt upgrade -y 
	then
		echo "Não foi possivel executar upgrade"
		exit 1
fi

echo "########## vim ##########"
if ! apt install vim
        then
                echo "Não foi possivel executar vim"
                exit 1
fi

echo "########## curl  ##########"
if ! apt install curl 
        then
                echo "Não foi possivel executar curl"
                exit 1
fi

echo "########## telnet  ##########"
if ! apt install telnet 
        then
                echo "Não foi possivel executar telnet"
                exit 1
fi

echo "########## unzip  ##########"
if ! apt install unzip
        then
                echo "Não foi possivel executar unzip"
                exit 1
fi

echo "########## wget  ##########"
if ! apt install wget 
        then
                echo "Não foi possivel executar wget"
                exit 1
fi

echo "########## net-tools  ##########"
if ! apt install net-tools -y 
        then
                echo "Não foi possivel executar net-tools"
                exit 1
fi

echo "########## htop  ##########"
if ! apt install htop 
        then
                echo "Não foi possivel executar htop"
                exit 1
fi
if ! snap install htop
	then
		echo "Não foi possivel executar snap htop"
		exit 1
fi


echo "########## nmap  ##########"
if ! apt install nmap -y
        then
                echo "Não foi possivel executar nmap"
                exit 1
fi

echo "########## nginx  ##########"
if ! apt install nginx -y
        then
                echo "Não foi possivel executar $1"
                exit 1
fi
if ! service nginx restart
	then
                echo "Não foi possivel restart service ngnix"
		exit 1
fi

