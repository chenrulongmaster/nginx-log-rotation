# nginx-log-rotation

[![996.icu](https://img.shields.io/badge/link-996.icu-red.svg)](https://996.icu)
[![LICENSE](https://img.shields.io/badge/license-Anti%20996-blue.svg)](https://github.com/996icu/996.ICU/blob/master/LICENSE)

Nginx log file housekeep/rotation

1. put the nginx_log_rotation.sh in some where, e.g. /usr/local/nginx_log_rotation.sh
2. add system crontab task(executed every 0 a.m.):

```shell
> crontab -e
> 0 0 * * * /bin/sh /usr/local/nginx_log_rotation.sh
> :wq!
```

Tips:
1. Before using it, pls change `nginx_home`,  `nginx_log_path` and `keep_days` in this script according to your requirement/environment.
2. Running on CentOS7.4
