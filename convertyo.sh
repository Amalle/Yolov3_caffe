#!/bin/bash

filename=yolov3-tiny_modify
yolocfg=./models/yolo/$filename.cfg
yoloweight=./models/yolo/$filename.weights


yolocfgcaffe=./models/caffe/$filename.prototxt
yoloweightcaffe=./models/caffe/$filename.caffemodel

echo $yolocfg
echo $yoloweight

echo "convert yolo to caffe"
# python python/create_yolo_prototxt.py $yolocfg $yolocfgcaffe
python python/create_yolo_caffemodel.py -m $yolocfgcaffe -w $yoloweight -o $yoloweightcaffe

echo "done"
