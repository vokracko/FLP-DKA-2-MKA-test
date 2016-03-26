#!/bin/bash

fstdraw --title="Correct $(basename $1)" ${1} | xdot > /dev/null 2>&1 &

if [[ "$1" = *"original"* ]] ; then
	fstdraw --title="My $(basename $1)" ${1/original/res}.plain.fst | xdot > /dev/null 2>&1 &
else
	fstdraw --title="My $(basename $1)" ${1/minimal/res}.minimal.fst | xdot > /dev/null 2>&1 &
fi
