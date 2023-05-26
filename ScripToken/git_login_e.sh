#!/bin/bash

#Si estás utilizando el protocolo HTTPS para acceder al repositorio remoto, 
#puedes configurar Git para que recuerde tus credenciales mediante el 
#comando git config. 
#Ejecuta los siguientes comandos en tu terminal:
#git config --global credential.helper cache
#git config --global credential.helper 'cache --timeout=3600'

# Leer el nombre de usuario y la contraseña desde el archivo de texto
read -r USERNAME < user_00.txt
read -r PASSWORD < git_token_00.txt

# Realizar el git push proporcionando el nombre de usuario y la contraseña
GIT_ASKPASS=./pass.sh git push

# Limpiar el nombre de usuario y la contraseña después de usarlos
unset USERNAME
unset PASSWORD
