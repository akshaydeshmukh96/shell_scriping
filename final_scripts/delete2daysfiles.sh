#!/bin/bash


## DElete the directories older than 2 days 


ls -ltr /backup/ | awk '{print $9}' > /scripts/dirs
for i in `cat /scripts/dirs`; do
STARTTIME=$(date +%s -d"#i 00:00:00")
ENDTIME=$(date +%s)
echo $((ENDTIME-STARTTIME)) | awk '{print int($1/60}' > /scripts/value
COUNT=`cat /scripts/value`
if [ $COUNT -gt 2880 ]; then
echo "Directoeies are older than 2days $i" > /scripts/joblog
rm -rf /backup/$i
fi
done
