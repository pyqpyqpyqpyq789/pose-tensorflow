#!/bin/sh

if command -v curl 1>/dev/null; then
    DOWNLOADER="curl -L -O"
else
    DOWNLOADER="wget"
fi

$DOWNLOADER https://datasets.d2.mpi-inf.mpg.de/deepercut-models-tensorflow/coco-resnet-101.data-00000-of-00001
$DOWNLOADER https://datasets.d2.mpi-inf.mpg.de/deepercut-models-tensorflow/coco-resnet-101.meta
$DOWNLOADER https://datasets.d2.mpi-inf.mpg.de/deepercut-models-tensorflow/coco-resnet-101.index

$DOWNLOADER https://datasets.d2.mpi-inf.mpg.de/deepercut-models-tensorflow/pairwise_coco.tar.gz
tar xvzf pairwise_coco.tar.gz
