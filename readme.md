# Companion scripts for MQTT Series article #3 article

Article link: https://crodrigues.com/implementing-the-worker-pattern-competing-consumers-pattern-with-mqtt-shared-subscriptions-mqtt-series-3/



Subscriber 1 startup
```bash
mosquitto_sub -t '$share/my_group/temperature' -q 2 -V mqttv5 --id subscriber1
```

Subscriber 2 startup
```bash
mosquitto_sub -t '$share/my_group/temperature' -q 2 -V mqttv5 --id subscriber2
```