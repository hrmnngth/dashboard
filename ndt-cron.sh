#!/bin/bash -l
if [ -e ./Notices_Daily_Tracker* ]
then
	mv Notices_Daily_Tracker* new-ndt.csv
	sed -f ndt.sed <new-ndt.csv >new-ndt.tmp && mv new-ndt.tmp new-ndt.csv
	rake import_new_ndt_csv:create_ndt
else
	echo "The new Notices Daily Tracker file is not here"
fi
