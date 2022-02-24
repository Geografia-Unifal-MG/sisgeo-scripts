function get_date_time {
    date "+%y-%m-%d %H:%M:%S"
}

function get_date() {
    date "+%y-%m-%d"
}

geoserver_url=http://172.17.0.1:8888/geoserver
service_name=sisgeo_geoserver_gsmaster
stack_file=/server/sisgeo/stack-files-docker/geoserver.yaml
stack_name=sisgeo_geoserver
log_file="/server/sisgeo/scripts/geoserver/logs/restart-container-$(get_date).out"

if curl $geoserver_url; then
    output="$(get_date_time): geoserver alive"
else
    output="$(get_date_time): geoserver dead, updating geoserver..."
    container_id=$(docker container ps --filter "name=$service_name" --format "{{.ID}}")
    docker container stop ${container_id}
    docker container rm ${container_id}
    docker service rm $service_name
    docker stack deploy -c $stack_file $stack_name
fi

output+="\n"

if test -f $log_file; then
    output+="$(cat $log_file)"
    output+="\n"
fi

echo -e "$output" > $log_file
