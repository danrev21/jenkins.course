#!/bin/bash

echo "Job name: $JOB_NAME"
echo "Build number: $BUILD_NUMBER"
echo "Git URL: $GIT_URL"

find . -name '*.txt' > files_list
tar -czvf jobartifact.tar.gz files_list
rm files_list 
# ls -la | grep jobartifact.tar.gz
