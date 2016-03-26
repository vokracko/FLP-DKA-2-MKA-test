#!/bin/bash

fstdraw --title=Correct ${1} | xdot > /dev/null 2>&1 &

if [[ "$1" = *"compiled"* ]] ; then
	fstdraw --title="My result" ${1/compiled/res}.plain.fst | xdot > /dev/null 2>&1 &
else
	fstdraw --title="My result" ${1/minimal/res}.minimal.fst | xdot > /dev/null 2>&1 &
fi
