#!/bin/bash
if [ -e ./OM\ * ]
then
	mv OM* new-csl.xlsx
	rake import_new_csl:create_csl
else
	echo "The new O&M file is not here"
fi
