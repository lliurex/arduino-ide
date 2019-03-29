#!/bin/bash

#EJECUTAR DESDE EL DIRECORIO trunk/fuentes
tree -fi | grep \\.so | cut -d " " -f1 > add_so_help/falta.txt
tree -fi | grep \\.o | cut -d " " -f1 >> add_so_help/falta.txt
tree -fi | grep \\.la | cut -d " " -f1 >> add_so_help/falta.txt
tree -fi | grep \\.a | cut -d " " -f1 >> add_so_help/falta.txt
for line in $(cat add_so_help/falta.txt)
do
	svn add $line@
done
exit 0
