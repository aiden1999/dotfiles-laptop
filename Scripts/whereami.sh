#!/bin/bash
test=$(curl -s https://ipapi.co/timezone)
city=$(curl -s https://ipapi.co/city)
region=$(curl -s https://ipapi.co/region)
country=$(curl -s https://ipapi.co/country)
echo "$city, $region, $country"
