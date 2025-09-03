#!/bin/bash

LOG_FILE="/home/shivam/sample_app.log"
TO="shivtrent800@gmail.com"
SUBJECT="ALERT: 500 Errors Detected"

BUFFER="/home/shivam/error_buffer.log"

# Clear buffer at start
> "$BUFFER"

tail -F "$LOG_FILE" | while read line
do
    if echo "$line" | grep -q " 5[0-9][0-9] "; then
        echo "$line" >> "$BUFFER"
    fi
done &

# Every 5 minutes, check buffer and send mail if errors exist
while true; do
    sleep 300  # 5 minutes
    if [[ -s "$BUFFER" ]]; then
        cat "$BUFFER" | mail -s "$SUBJECT" "$TO"
        echo "Mail sent with batched errors."
        > "$BUFFER"  # Clear buffer after sending
    fi
done

#You can test this script by adding loogs into the sample file and you will receive mail if a new 500 series error log is detected
