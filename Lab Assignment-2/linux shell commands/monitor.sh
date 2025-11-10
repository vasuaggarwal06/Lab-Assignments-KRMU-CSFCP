# script name: monior.sh
# purpose to monitor cpu and memory usage at regular intervals 
# author:Vasu Aggarwal
# date:10-11-25

LOG_FILE="/home/vboxuser/monitor_log.txt"

echo "system monitor started at $(date)" >> $LOG_FILE
echo "---------------------------------" >> $LOG_FILE

#run infinite loop (press ctrl+c to stop)

while true
do
    echo "Time: $(date)" >> $LOG_FILE
    echo "CPU and memory usage:" >> $LOG_FILE
    top -b -n1 | head -5 >> $LOG_FILE
    echo "--------------------------------" >> $LOG_FILE
    sleep 5
done

