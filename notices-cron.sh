#!/bin/bash -l
if [ -e ./NoticesDaily* ]
then
	mv NoticesDaily* new-notices.csv
	# remember to watch out for that pesky space on the last column!
	# note that caps must be concerted to lowercase for rails, this is what the sed script does
	sed -f notices.sed <new-notices.csv >new-notices.tmp && mv new-notices.tmp new-notices.csv
	rake import_new_notices_csv:create_notices
else
	echo "The new notices file is not here"
fi
