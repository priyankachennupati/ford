#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.priya$i container.."
    sleep 1
    docker run --name www.priya$i -d -it -p 8888:8080 priyankachennupati/real-img bin/bash
    echo "www.priya$i container has been created!"
	echo "============================"
done
