#!/bin/bash

# Run the script as root to have necessary permissions
if [ $(whoami) != "root" ]; then
    echo "This script must be run as root."
    exit 1
fi
while true; do
    # Check for active reverse shell connections
    netstat -atnp | awk '{print $5}' | grep -vE "127.0.0.1|::1|0.0.0.0|Address|and" | cut -d: -f1 | sort | uniq | while read ip; do
        count=$(netstat -atnp | awk -v ip="$ip" '$5 ~ ip {print $5}' | wc -l)

        # If more than two connection is detected for an IP, consider it as a reverse shell connection
        if [ $count -gt 2 ]; then
            echo "$ip"
            # We will add additional actions here, such as sending an email or generating a system alert
        fi
    done
    sleep 3
done