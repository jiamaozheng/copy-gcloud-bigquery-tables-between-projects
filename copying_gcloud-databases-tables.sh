#!/bin/bash

# author: Jiamao Zheng 
# Modified and modified from https://stackoverflow.com/questions/32724767/any-feature-in-bigquery-that-can-migrate-a-whole-dataset-in-another-project-w-o

export SOURCE_DATASET=$1  # project1:dataset
export DEST_PREFIX=$2  # project2:dataset2.any_prefix_
for f in `bq ls $SOURCE_DATASET |grep TABLE | awk '{print $1}'`
do
  export CP_COMMAND="bq cp $SOURCE_DATASET.$f $DEST_PREFIX$f"
  echo $CP_COMMAND
  echo `$CP_COMMAND`
done
