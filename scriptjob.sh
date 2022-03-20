#!/bin/bash

# echo "Job name: $JOB_NAME"
# echo "Build number: $BUILD_NUMBER"
# echo "Git URL: $GIT_URL"

find . -name '*.txt' > files_list
tar -czvf jobarchive.tar.gz files_list > /dev/null 2>&1
rm files_list 
a=$(ls -la | grep jobarchive.tar.gz)
# echo "Job artifact: $a"
