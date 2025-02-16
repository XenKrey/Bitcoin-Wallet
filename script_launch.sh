#!/bin/bash

# Mettre à jour les paquets
sudo apt update && sudo apt upgrade -y

# Installer Python et pip
sudo apt install -y python3 python3-pip

# Clone le dépôt
# git https://github.com/XenKrey/Bitcoin-Wallet.git
# cd Bitcoin-Wallet

sudo apt update

sudo apt install python3 python3-venv

# Vérifier si Python3 et venv sont installés
if [ -d "venv" ]; then
    echo "L'environnement virtuel existe déjà."
else
    echo "Création de l'environnement virtuel..."
    python3 -m venv venv
fi

# Activer l'environnement virtuel
echo "Activation de l'environnement virtuel..."
source venv/bin/activate

# Installer les dépendances
echo "Installation des dépendances..."
pip install --upgrade pip
pip install requests bip_utils

echo "Installation terminée. Vous pouvez maintenant exécuter votre script avec :"
echo "python wallet_script.py"

echo "execution en cours..."
python wallet_script.py
