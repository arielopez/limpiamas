
git status
echo -n "Ahora se agregaran los archivos ."
read a
git add .
echo -n "Ahora comprueba el estado de git: "
read a
git status
echo -n "Ingresa el mensaje: "
read msg
git commit -m "$msg"