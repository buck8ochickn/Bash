
#find discrepensies in two similar files 
#!/bin/bash

read -p 'Search ever line in this file ' first

read -p 'For every item in this file ' second

for i in  `cat $second` ; do

if grep -wq $i $first
then
        echo "found"
else
        echo "$i" >> check.txt
fi

done

