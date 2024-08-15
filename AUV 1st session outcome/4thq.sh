#!/bin/bash
if [ $# -eq 0 ]; # $# is used to get number of command line arguments if it is zero making cowsay fortune
then
        fortune | cowsay
else
        cowsay "$1" # else we will make cowsay the first command line argument
fi