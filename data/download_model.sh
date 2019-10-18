#!/bin/bash

FILE_ID="16g_imw_KfOQwwKTzC7O_MU6SRkkoHSZ9"
FILENAME="ssd-head-detector.tar.gz"

curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${FILE_ID}" -o ${FILENAME} && tar -xzvf ${FILENAME} && rm -f ${FILENAME} ./cookie
