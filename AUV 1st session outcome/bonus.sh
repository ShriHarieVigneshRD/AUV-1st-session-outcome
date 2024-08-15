#!/bin/bash

#Fetching the API
echo "enter city" # getting the basic details
read CITY
echo "enter latitude"
read lat
echo "enter longitude"
read lon
UNIT="metric"
API_KEY="af4a767d34e851f98cb755fe6786b2a1"
# this is api request
response=$(curl -s "https://api.openweathermap.org/data/3.0/onecall?lat=${lat}&lon=${lon}&appid=${API_KEY}")
TEMP=$(echo $response |jq '.main.temp') #fetching the required data from json file

echo "The current temperature in $CITY is: $TEMP deg C"