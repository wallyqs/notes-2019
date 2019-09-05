# sysv nats scripts


## Installation

Move files into

Note: You probably need to edit the commands to include the config files.

```
cd /etc/rc.d/init.d
curl -OL https://raw.githubusercontent.com/wallyqs/notes-2019/master/sysv/nats-server
curl -OL https://raw.githubusercontent.com/wallyqs/notes-2019/master/sysv/nats-rest-config-proxy
curl -OL https://raw.githubusercontent.com/wallyqs/notes-2019/master/sysv/prometheus-nats-exporter

chmod u+x nats-server nats-rest-config-proxy prometheus-nats-exporter
```

## Start

```
service nats-server start
service nats-rest-config-proxy start
service prometheus-nats-exporter start
```
