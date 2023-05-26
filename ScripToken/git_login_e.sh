#!/bin/bash

# Leer el nombre de usuario y la contraseña desde el archivo de texto
read -r USERNAME < user_00.txt
read -r PASSWORD < git_token_00.txt

# Realizar el git push proporcionando el nombre de usuario y la contraseña
GIT_ASKPASS=./pass.sh git push

# Limpiar el nombre de usuario y la contraseña después de usarlos
unset USERNAME
unset PASSWORD
