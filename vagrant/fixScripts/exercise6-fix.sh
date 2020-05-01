#!/bin/bash
#add fix to exercise6-fix here
if [ $(hostname)=="server1" ]
then
	dest_srv=server2
else 
	dest_srv=server1
fi
all_vars=( $@ )
len=${#all_vars[@]}
dest=${all_vars[$len-1]}
files=${all_vars[@]:0:$len-1}
script -q -c "scp $files $dest_srv:$dest" | awk '{s+=$8} END {print s}'
