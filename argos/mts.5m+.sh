#!/bin/bash

response=$(curl http://transport.mainframe-paulico.duckdns.org/mts/fct)

# All schedules
# echo $response | grep -Eo '[0-9]+:[0-9]+' | sed -z -e 's/\n/•/g' | sed 's/.$//'

# One at a time
echo $response | grep -Eo '[0-9]+:[0-9]+' | awk 'BEGIN{RS="";FS="\n"}{printf "MTS: %s\n", $1 ; print "---"; printf "%s\n%s\n%s\n%s\n", $2,$3,$4,$5}'
