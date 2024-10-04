#!/bin/bash

echo "Verificando el entorno de línea de comandos..."

# Verificar versión de Bash
bash --version | head -n 1

# Verificar paquetes instalados
while read package; do
    if command -v "$package" &> /dev/null; then
        echo "$package está instalado"
        $package --version 2>&1 | head -n 1 || echo "No se pudo obtener la versión"
    else
        echo "$package no está instalado"
    fi
done < ../requirements.txt
