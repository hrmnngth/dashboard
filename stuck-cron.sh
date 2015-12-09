#!/bin/bash
if [ -e ./stuck\ apps* ]
then
	mv stuck\ apps* new-stuck-apps.xlsx
	rake import_new_stuck_apps:create_stuck
else
	echo "The new stuck apps file is not here"
fi
