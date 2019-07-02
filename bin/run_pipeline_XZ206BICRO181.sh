#!/bin/usr/env bash

if [ -f /home/garner1/Work/dataset/fastq/cutseq/XZ206BICRO181.fastq.gz ]; then
if [ -f /home/garner1/Work/pipelines/cutseq/pattern/XZ206BICRO181 ]; then
bash main.sh XZ206BICRO181 human SE /home/garner1/Work/pipelines/cutseq/pattern/XZ206BICRO181 AAGCTT /home/garner1/Work/dataset/fastq/cutseq/XZ206BICRO181.fastq.gz
fi
fi
