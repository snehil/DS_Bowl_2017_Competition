#!/bin/bash
echo "Copying data files to S3"

for dir in /kaggle_data/stage1/*/
do
    dir=${dir%*/}
    echo $dir
    aws s3 cp $dir s3://kaggle-data-science-bowl/stage1 --recursive
done