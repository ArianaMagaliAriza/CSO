#!/bin/bash
#La función recibe tres parámetros: 
#Los dos primeros numeros como operandos
#y un tercer argumento como operador
#Finalmente imprime el resultado correspondiente.
#IMPORTANTE: ojo con el producto al ejecutar el script, hay que usar \\* por el case
#NOTA: Preferentemente hacer el if con -ne y usar los exit :)
calculadora(){
if [ $# -eq 3 ]; then
	case $3 in
		"+")
		    suma=$(($1 + $2))
	    	    echo "$1 + $2 = $suma"
		;;
		"\*")
		    producto=$(($1 * $2))
	      	    echo "$1 \*  $2 =  $producto"
		;;
		"-")
	     	    resta=$(($1 - $2))		
		    echo "$1 - $2 = $resta "
		;;
		"%")
		    resto=$(($1 % $2))
		    echo "$1 % $2 = $resto"
		;;
	esac
	
else
       	echo "No se pasó la cantidad correcta de parámetros"
fi
}

calculadora $*
