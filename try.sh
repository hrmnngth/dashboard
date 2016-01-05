myflag="1"
while [ $myflag -eq 1 ]
do
 mv new-notices.csv NoticesDailyReport_Dec_15_2015.csv
 ./notices-cron.sh
 myflag="$?"
 echo "working..." 
done
echo "it worked"
