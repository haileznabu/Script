#!/bin/bash
# cleanup.sh - Remove temp files and logs older than N days
# Usage: ./cleanup.sh [days]

DAYS=${1:-7}
echo "Cleaning up files older than $DAYS days..."
find /tmp -type f -mtime +$DAYS -delete
find /var/log -type f -name "*.log" -mtime +$DAYS -delete
echo "Done."
