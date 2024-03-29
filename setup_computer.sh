#!/bin/bash

echo 'Updating and installing all programs ...'

sudo apt-get update && apt-get upgrade
sudo apt-get install telegram-desktop -y
sudo apt-get install chromium-browser -y
sudo apt-get install virtualbox -y
sudo apt-get install git -y
sudo apt-get install gh -y
sudo apt-get install snapd -y
sudo snap install cura-slicer --classic
sudo snap install code --classic
sudo snap install whatsapp-for-linux
sudo snap install cherrytree 
sudo snap install blender --classic
sudo snap install gimp
sudo snap install pycharm-community --classic

echo 'Programs updated!'

echo 'Cloning github repos ...'

gh auth login
gh repo list Steeltitansax --limit 1000 | while read -r repo _; do
      gh repo clone "$repo" "$repo"
    done

echo 'Repos cloned!'

echo 'Copying necesary files for run ...'

sudo cp -v -x -r  /media/titansax/titansax2/Documentos/ /home/titansax/
sudo cp -v -x -r  /media/titansax/titansax2/Música/ /home/titansax/
sudo cp -v -x -r  /media/titansax/titansax2/Biblioteca/ /home/titansax/
sudo cp -v -x -r  /media/titansax/titansax2/Imágenes/ /home/titansax/

echo 'Files copied!'


