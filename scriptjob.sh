#!/bin/bash

echo "Job name: $JOB_NAME"
echo "Name of the branch: $JOB_DISPLAY_URL"
echo "Build number: $BUILD_NUMBER"

find . -name '*.txt' > files_list
tar -czvf example.tar.gz -T files_list
rm files_list 
ls -la
