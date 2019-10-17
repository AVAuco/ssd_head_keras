#!/bin/bash

FILE_ID="1aA2O0tzD5469NJwkg1OqmYKjCbNQhWh1"
FILENAME="ssd512-head-coco-detection.tar.gz"

curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${FILE_ID}" -o ${FILENAME} && tar -xzvf ${FILENAME} && rm -f ${FILENAME} ./cookie
