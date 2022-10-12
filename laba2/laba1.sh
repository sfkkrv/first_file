#!/bin/bash

read -p "Введите ссылку на репозиторий: " URL
mkdir papka
cd ./papka
sudo git clone $URL
serch="$(ls -t)"
mkdir ../laba
cp "${serch}"/* ../laba
sudo chmod 777 -R ./"${serch}"
rm -rf ./"${serch}"
sudo chmod 600 ../laba
echo "Лабораторная работа 1 выполнена"
