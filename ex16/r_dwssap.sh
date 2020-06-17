#!/bin/sh

export FT_LINE1=12
export FT_LINE2=20


cat  /etc/passwd | grep -v '#' | sed '1!n;d' | cut -d ':' -f1 | rev | sort -r | awk -v l1="$FT_LINE1" -v l2="$FT_LINE2" 'NR>=l1 && NR<=l2' |  tr '\n' ', ' | sed 's/, */, /g' | sed 's/. $/./'
