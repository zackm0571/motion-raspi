#!/bin/bash

#Hue variables
export HUE_BRIDGE_IP=http://192.168.0.2/
export BASE_API=http://192.168.0.2/api
export USER=yDuQBo8mhfNz24YCVoCEkqeU2k05Sdos4c6E4d6D
export CONTENT_JSON="Content-Type: application/json"

#Time variables
export TZ='America/New_York' date
export CURRENT_TIME=$(date +"%H")
export MORNING=7
export EVENING=18

#Debug logging 
echo "Time is:"
echo $CURRENT_TIME
echo $( date )

if (( $CURRENT_TIME < $MORNING  ||  $CURRENT_TIME > $EVENING )); then

curl  $BASE_API/$USER/lights/1/state -H CONTENT_JSON -X PUT -d '{"on":true}' 
curl  $BASE_API/$USER/lights/3/state -H CONTENT_JSON -X PUT -d '{"on":true}' 
curl  $BASE_API/$USER/lights/4/state -H CONTENT_JSON -X PUT -d '{"on":true}' 

fi
