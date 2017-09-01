#!/bin/bash
echo 'script works';
# bash for loop
for f in {1..1000}
do
	echo ${f}
	RANDOM_FACTOR=$(( $RANDOM % 10 % 5 ))
	SLEEP_INTERVAL=0.1
	#SLEEP_INTERVAL=$(( ${SLEEP_INTERVAL}*${RANDOM_FACTOR} ))
	sleep .${RANDOM_FACTOR}
done

