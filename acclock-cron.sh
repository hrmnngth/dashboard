#!/bin/bash -l
if [ -e ./IAM_R* ]
then
	mv IAM_R* acclock.csv
	# the sed script serves two purposes:
	# 1. converts uppercase titles to all lowercase
	# 2. removes the pesky space at the end of the last column
	sed -f acclock.sed <acclock.csv >acclock.tmp && mv acclock.tmp acclock.csv
	rake import_acclock_csv:create_acclock
else
	echo "The new IAM Summary file is not here"
fi
