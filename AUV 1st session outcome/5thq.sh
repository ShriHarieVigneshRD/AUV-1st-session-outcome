#!/bin/bash
echo "enter the value of n"
read n #getting input for value n
k=0 #variable for the values inside the righangle triangle
for((i=1;i<=n;i++)) # for number of rows
do
        for((j=1;j<=i;j++)) # for number of columns
        do
                echo -n "$((k%10))" #k k modulo 10 gives desired values
                k=$k+1 # increasing the k value
        done
        echo
done