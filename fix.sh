#!/bin/bash

d=2025-01-01
de=2025-10-30

i=0
while [ "$(date -d "$d" +%s)" -le "$(date -d "$de" +%s)" ]; do
    echo $d >> dt.txt
    git commit -am "fix: $d" --date="$d 12:00:00"
    r=$(( ( RANDOM % 3 )  + 1 ))
    d=$(date -I -d "$d + $r day")
done

