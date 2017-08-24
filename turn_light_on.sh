#!/bin/bash
export HUE_BRIDGE_IP=http://192.168.0.2/
export BASE_API=http://192.168.0.2/api
export USER=yDuQBo8mhfNz24YCVoCEkqeU2k05Sdos4c6E4d6D
export CONTENT_JSON="Content-Type: application/json"

#export IS_ENABLED=$(curl https://zackmatthews.com/motion-tracker.txt)
#echo $IS_ENABLED

export TZ='America/New_York' date
echo "Time is:"
export CURRENT_TIME=$(date +"%H")

echo $CURRENT_TIME
echo $( date )

if (( $CURRENT_TIME < 7  ||  $CURRENT_TIME > 18 )); then
curl  $BASE_API/$USER/lights/1/state -H CONTENT_JSON -X PUT -d '{"on":true}' 
curl  $BASE_API/$USER/lights/3/state -H CONTENT_JSON -X PUT -d '{"on":true}' 
curl  $BASE_API/$USER/lights/4/state -H CONTENT_JSON -X PUT -d '{"on":true}' 

fi
