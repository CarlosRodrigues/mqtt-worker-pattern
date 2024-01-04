#! /bin/bash
MESSAGE=0
TOPIC="temperature"

for (( ; ; ))
do
   MESSAGE=$((MESSAGE+1))
   mosquitto_pub -t $TOPIC -m $MESSAGE -q 2 -V mqttv5

   echo "Published message $MESSAGE to topic $TOPIC. Waiting 1 second..."

   sleep 2
done