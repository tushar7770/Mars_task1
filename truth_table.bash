#!/bin/bash
declare   a=0 b=0 c=0 d=0
echo -e "\nTRUTH TABLES\n"
echo -e "A B C D (A∧B)∨(C∧D)\n"
for (( i = 0 ; i < 16 ; i++ ))
do
 a=$((i/8))
 b=$(((i/4 )%2)) 
 c=$(((i/2)%2)) 
 d=$((i%2))

echo -e "$a $b $c $d    $((($a&&$b)||($c&&$d)))\n"
done