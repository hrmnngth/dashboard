#!/bin/bash -l
# check for xxx file:
if [ -e ~/IAM_REPORT* ]
  then
    rsync -av -e 'ssh -p 2222' ~/IAM_REPORT* pi@50.4.103.221:~/dashboard/
    rm ~/IAM_REPORT*
fi
if [ -e ~/Notices_Daily_Tracker_Report* ]
  then
    rsync -av -e 'ssh -p 2222' ~/Notices_Daily_Tracker_Report* pi@50.4.103.221:~/dashboard/
    rm ~/Notices_Daily_Tracker_Report*
fi
if [ -e ~/NoticesDailyReport* ]
  then
    rsync -av -e 'ssh -p 2222' ~/NoticesDailyReport* pi@50.4.103.221:~/dashboard/
    rm ~/NoticesDailyReport*
fi

