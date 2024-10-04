#!/bin/bash

echo "Instalando herramientas de línea de comandos..."

# Actualizar repositorios
sudo apt update

# Instalar paquetes
while read package; do
    sudo apt install -y "$package"
done < ../requirements.txt

echo "Instalación completada."
