#!/bin/bash
# 
LOGFILE="log2_`date +%Y-%m-%d_%H-%M-%S`.log"
HOSTS="garr.it google.com"
PORT="80"
TIME_START=$(date +%Y-%m-%d_%H-%M-%S)

echo "curl in progress, please wait..."

echo "-------------------" >> $LOGFILE  2>&1
echo "START $TIME_START" >> $LOGFILE 2>&1

for HOST in $HOSTS
do
    echo "">> $LOGFILE  2>&1
    echo $HOST:$PORT >> $LOGFILE  2>&1
    curl -LIs $HOST:$PORT | grep "HTTP" | tail -1 >> $LOGFILE  2>&1
    echo "">> $LOGFILE  2>&1
done

sleep 1

TIME_END=$(date +%Y-%m-%d_%H-%M-%S)
echo "END $TIME_END" >> $LOGFILE
echo "-------------------" >> $LOGFILE  2>&1
exit 0
