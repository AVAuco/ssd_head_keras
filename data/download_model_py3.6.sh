#!/bin/bash

FILE_ID="1vlmKOBtaT7eAd4_WcAv5MLBn7q_SWXoh"
FILENAME="ssd512-hollywood-trainval-bs_16-lr_1e-05-scale_pascal-epoch-187-py3.6.h5"

curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=${FILE_ID}" > /dev/null
curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=`awk '/download/ {print $NF}' ./cookie`&id=${FILE_ID}" -o ${FILENAME} && rm -f ./cookie
