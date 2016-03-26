#!/bin/bash

input=$1
output=$2
tmp=$(mktemp)

{
	startState=$(cat $input | sed -n 2p)
	endStates=$(cat $input | sed -n 3p | tr ',' '\n')
	transitions=$(cat $input | tail -n +4 | awk -F, 'BEGIN{for(n=0;n<256;n++)ord[sprintf("%c",n)]=n} {printf "%s %s %s %s\n", $1, $3, ord[$2], ord[$2]} ')
	firstLine=$(echo "$transitions" | grep -E "^$startState" | head -n 1)
	echo "$firstLine"
	echo "$transitions" | grep -v "$firstLine"
	echo "$endStates"
} > $tmp

if [[ $# -eq 3 ]] ; then
	cat $tmp | fstcompile | fstminimize > $output
else
	cat $tmp | fstcompile > $output
fi
