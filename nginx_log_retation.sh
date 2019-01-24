#!/bin/bash

# configurations
nginx_home=/usr/local/nginx
nginx_log_path=/usr/local/nginx/logs
keep_days=10

# calulate days
curr_date=`date -d "-1 day" +%Y%m%d`
target_date=`date -d "-$keep_days day" +%Y%m%d`

# backup file
mv $nginx_log_path/access.log $nginx_log_path/access_$curr_date.log
mv $nginx_log_path/error.log $nginx_log_path/error_$curr_date.log

# nginx reopen
$nginx_home/sbin/nginx -s reopen

# logs delete
delete_access_file=$nginx_log_path/access_$target_date.log
delete_error_file=$nginx_log_path/error_$target_date.log
if [ -f "$delete_access_file" ]; then
    rm -f $delete_access_file
fi

if [ -f "$delete_error_file" ]; then
    rm -f $delete_error_file
fi

