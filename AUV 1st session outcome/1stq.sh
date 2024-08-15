#!/bin/bash
for i in $(ls); # iterating in the current directory
do
        echo "Do you want to rename "$i"?(y/n)" # asking whether to rename the file
        read x
        if [[ $x == "y" ]] # if yes
        then
                echo "enter new name of the file"
                read nfile
                mv $i $nfile #getting the new name for the file and using mv command renaming it
        else
                echo "file is skipped"
        fi
done
