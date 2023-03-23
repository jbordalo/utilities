#!/bin/bash

echo "jobs"
echo "---"

if [ "$ARGOS_MENU_OPEN" == "true" ]; then
    OUTPUT=$(ssh nscluster 'squeue -o "%.5i %10u %20j %.2t %.10M %10m %10C %15b %12N" --me' |  awk 1 ORS="\\\\n") 
    echo "$OUTPUT | font=monospace"
else
    echo "Loading..."
fi
