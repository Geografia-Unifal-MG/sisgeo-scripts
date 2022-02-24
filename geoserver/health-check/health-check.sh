function my_date_time {
    date "+%y-%m-%d %H:%M:%S"
}
function get_date {
    date "+%y-%m-%d"
}

geoserver_url=http://172.17.0.1:8888/geoserver
log_file="/server/sisgeo/scripts/geoserver/logs/health-check-$(get_date).out"

if curl $geoserver_url; then
    output="$(my_date_time): geoserver alive"
else
    output="$(my_date_time): geoserver dead"
fi

output+="\n"

if test -f $log_file; then
    output+="$(cat $log_file)"
    output+="\n"
fi

echo -e "$output" > $log_file
