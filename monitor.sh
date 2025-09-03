#!/bin/bash

LOG_FILE="/home/shivam/sample_app.log"
TO="shivtrent800@gmail.com"
SUBJECT="Alert: 500 series Errors Detected"

# check if log file exists
#if [ ! -f "$LOG_FILE" ]; then
#    echo "Log file not found!"
#    exit 1  
#fi

ERRORS=$(grep " 5[0-9][0-9] " "$LOG_FILE") # Look for 500 series errors in the log file and stores in variable errors
if [ -n "$ERRORS" ]; then # passes only when the stringlength is non zero
    echo "500 series errors detected in $LOG_FILE"
    echo -e "errors were detected in $LOG_FILE:\n\n$ERRORS" \
    | mail -s "$SUBJECT" "$TO"
    echo "Alert email sent to $TO"
else
    echo "No 500 series errors detected."
fi

