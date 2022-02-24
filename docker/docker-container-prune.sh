function get_date_time {
    date "+%y-%m-%d %H:%M:%S"
}
function get_date {
    date "+%y-%m-%d"
}

log_file="/server/sisgeo/scripts/docker/logs/container-prune-$(get_date).out"

output=$(get_date_time)
output+="\n"
output+=$(docker container prune --force)
output+="\n"

if test -f $log_file; then
    output+="\n"
    output+="$(cat $log_file)"
    output+="\n"
fi

echo -e "$output" > $log_file