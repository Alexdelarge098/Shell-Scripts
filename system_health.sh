#!/bin/bash

LOGFILE="system_health.log"
DATE=$(date +"%Y%m%d_%H%M%S")

## Get CPU and Memory usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
MEM=$(free | grep Mem | awk '{print $3/$2 * 100}')
#
## Convert to integer
CPU=${CPU%.*}
MEM=${MEM%.*}


echo "[$DATE] CPU: $CPU% | Memory: $MEM%" >> $LOGFILE
# Check thresholds
if [ "$CPU" -gt 80 ]; then
    echo "High CPU usage: $CPU%" >> $LOGFILE
    fi

    if [ "$MEM" -gt 80 ]; then
        echo "High Memory usage: $MEM%" >> $LOGFILE
        fi

        echo "System health check done! Results saved in $LOGFILE"
