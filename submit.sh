type="dvpf"
date_till_minute=$(date -u +%Y_%m_%d_T%H_%M_%S)
logs="$(dirname $(realpath $0))/logs/$type-$date_till_minute"

mkdir -p $logs

log_path="$logs/$type.txt"
error_path="$logs/error-$type.txt"

echo $log_pa
th
echo $error_path

qsub -l q_gpu -l 'hostname=vgn[ij]*' -now no -N "$type" -o $log_path -e $error_path -P safer ./job.sh $@

