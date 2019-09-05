#!/bin/bash
#
# chkconfig: 35 90 12
# description: nats-server
#

# Get function from functions library
. /etc/init.d/functions

# Start the service nats-server
start() {
        initlog -c "echo -n Starting nats-server"
        /usr/local/bin/nats-server &

        touch /var/lock/subsys/nats-server
        success $"nats-server server startup"
        echo
}

# Restart the service nats-server
stop() {
        initlog -c "echo -n Stopping nats-server server: "
        killproc nats-server

        rm -f /var/lock/subsys/nats-server
        echo
}

case "$1" in
  start)
        start
        ;;
  stop)
        stop
        ;;
  status)
        status nats-server
        ;;
  restart|reload|condrestart)
        stop
        start
        ;;
  *)
        echo $"Usage: $0 {start|stop|restart|reload|status}"
        exit 1
esac

exit 0
