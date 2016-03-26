#!/bin/bash


find ./plain -type f | while read file ; do 
	echo $file
	./fstcompile.sh $file ${file/plain/minimal} minimize 
	./fstcompile.sh $file ${file/plain/original} 
done

# for i in {a..z} {A..Z} {0..9} ; do
# 	printf "%d %c\n" \'$i $i
# done > symbols

