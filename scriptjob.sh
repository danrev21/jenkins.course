#!/bin/bash

echo "Job name: $JOB_NAME"
echo "Build number: $BUILD_NUMBER"
echo "Git URL: $GIT_URL"

find . -name '*.txt' > files_list
tar -czvf example.tar.gz -T files_list
rm files_list 
ls -la
