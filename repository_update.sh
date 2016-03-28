#!/usr/bin/env bash

continuar="y"
while [ ${continuar} = "y" ]; do
    echo "Que desea realizar: \n1-Descargar ultima version \n2-Agregar archivos para commit\n3-Impactar repositorio "
    read opcion
    case ${opcion} in
       1)
            echo -n "Se descarga ultima version, precione enter para continuar..  ";read a;
            git pull
       ;;
       2)
            echo -n "Se va ha actualizar git, precione enter para continuar..";read a
            git status
            echo -n "Ahora se agregaran los archivos, precione enter para continuar.. "
            read a
            git add .
            echo -n "Ahora comprueba el estado de git, precione enter para continuar "
            read a
            git status
            echo -n "Ingresa el mensaje: "
            read msg
            git commit -m "$msg"
       ;;
       3)
            echo -n "Se va ha impactar repositorio..";read a
            git push origin limpia_mas_inicio
       ;;
       *)
         echo -n " Valor invalido..";read a
       ;;
    esac
    echo -n "Desea continuar (y/n)";read continuar;
done


#echo -n "Desea impactar en el repositorio y/n: "
#read respuesta
#if [ ${respuesta} = "y" ]; then
#    echo "Se ha impactado al  repositorio ";
#else
#    echo "No se realizaron cambios. "
#fi

