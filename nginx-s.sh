#!/bin/bash
case  $1  in
start|sta)
     /usr/local/nginx/sbin/nginx ;;
stop|o)
     /usr/local/nginx/sbin/nginx -s stop ;;
restart|re)
	 /usr/local/nginx/sbin/nginx -s stop
	 /usr/local/nginx/sbin/nginx ;;
status|u)
	 netstat -ntulp | grep -q nginx
	  [  $? -eq 0  ]&& echo "启动了" || echo "没启动" ;;
*)
	echo "start|stop|restart|status";;
esac
