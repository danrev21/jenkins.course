#!/bin/bash

mkdir $JENKINS_HOME/artefacts > /dev/null 2>&1
tar -czvf build_$BUILD_NUMBER.tar.gz UPLOADED_FILE
cp build_$BUILD_NUMBER.tar.gz $JENKINS_HOME/artefacts
rm -rf * > /dev/null 2>&1
ls $JENKINS_HOME/artefacts
