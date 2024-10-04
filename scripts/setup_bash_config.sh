#!/bin/bash

echo "Configurando el entorno Bash..."

# Hacer backup del .bashrc actual
cp ~/.bashrc ~/.bashrc.backup

# Añadir configuraciones al .bashrc
cat ../configs/bashrc_additions >> ~/.bashrc

echo "Configuración de Bash completada. Se ha creado un backup en ~/.bashrc.backup"
echo "Por favor, reinicia tu terminal o ejecuta 'source ~/.bashrc' para aplicar los cambios."
