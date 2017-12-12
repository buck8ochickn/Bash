#!/bin/bash
#creates a new file  

read  -p "The current Chapter is one whate is the section name: " Name

Filename="ch1_"$Name".js"

echo -e "//Date: $(date +%Y-%m-%d)\n//\n//Notes from 'Java script Cookbook 2nd E'\n/////////////////////////////////////////////////////////////////;)\n\n" > $Filename

