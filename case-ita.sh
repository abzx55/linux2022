#!/bin/bash
# <<< CASE ITA>>>
#
# Programma per valutare in quale dei range definiti
# si trova il numero inserito 
#
# Il comando read legge il valore inserito da tastiera
echo "Digitare un numero compreso tra 1 e 19 e premere invio"
read "i"
# Ciclo if
# condizione che valuta se il valode non è un numero intero
if ! [[ $i == ?(-)+([0-9]) ]]
then
echo "Errore: il valore digitato non è un numero intero."
#
# condizione che valuta se il valode non è compreso nel range
elif [[ $i -le 0 ]] || [[ $i -gt 19 ]]
then
echo "Errore: il valore digitato è al di fuori del range consentito."
# Condizione per tutti gli altri valori (numero intero nel range)
else
# Lo statement case valuta in quale dei range definiti si trova il valore 
case $i in
[1-3])
	message="compreso tra 1 e 3"
	;;
[4-6])
	message="compreso tra 4 e 6"
	;;
[7-9])
	message="compreso tra 7 e 9"
	;;
1[0-9])
	message="compreso tra 10 e 19"
	;;
# Termine dello statement case
esac
# Una volta identificato il range corretto viene comunicato il risultato
echo "Il valore digitato è " $message
# Termine del ciclo if
fi

