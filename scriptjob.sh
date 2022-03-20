#!/bin/bash

echo "------------------------------------------"
echo "Job name: $JOB_NAME"
echo "Build number: $BUILD_NUMBER"
echo "Jenkins dir: $JENKINS_HOME"
echo "------------------------------------------"

mkdir $JENKINS_HOME/artefacts > /dev/null 2>&1
rm -rf $JENKINS_HOME/artefacts/*.tar.gz > /dev/null 2>&1
tar -czvf build_$BUILD_NUMBER.tar.gz UPLOADED_FILE > /dev/null 2>&1
cp build_$BUILD_NUMBER.tar.gz $JENKINS_HOME/artefacts
sudo chmod 755 $JENKINS_HOME/artefacts/build_$BUILD_NUMBER.tar.gz
rm -rf * > /dev/null 2>&1
ls $JENKINS_HOME/artefacts
