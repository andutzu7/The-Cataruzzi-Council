#!/bin/sh
# clean first argument, write to second argument
sed 1d $1 | sed 's/- //g' | sort | uniq  >> $2
