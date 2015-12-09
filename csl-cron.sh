#!/bin/bash
if [ -e ./OM\ * ]
then
        #rename the file to what the task is expecting
	mv OM* new-csl.xlsx
	rake import_new_csl:create_csl
else
	echo "The new O&M file is not here"
fi
