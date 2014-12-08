#!/bin/bash

if [ $# -eq 1 ]; then
    if [ -f $1 ]; then
	echo "Linie o numerach 3, 4, 5 z pliku $1"
	head -n 5 $1 | tail -n 3

	echo "Linie o numerach 7, 6, 5 od konca pliku $1"
	tail -n 7 $1 | head -n 3

	echo "Pierwsze 10 linii wyswietlone w jednej linii"
	head $1 | tr "\n" " "
    else
	echo "$1 nie jest poprawna nazwa pliku"
    fi
else
    echo "uruchom skrypt z jednym argumentem"
fi
