# nginx-log-rotation
Nginx log file housekeep/rotation

1. put the nginx_log_rotation.sh in some where, e.g. /usr/local/nginx_log_rotation.sh
2. add system crontab task(executed every 0 a.m.):

```shell
> crontab -e
> 0 0 * * * /bin/sh /usr/local/nginx_log_rotation.sh
> :wq!
```

Tips:
Before using it, pls change `nginx_home`,  `nginx_log_path` and `keep_days` in this script according to your requirement/environment.

