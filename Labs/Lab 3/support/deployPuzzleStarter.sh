#!/bin/sh

OCP_IP=192.168.64.2
echo "Setting OpenShift IP address to ${OCP_IP}"
echo Switch to openshift-dev user
oc login -u openshift-dev -p devel

echo selecting the Project FIS-YasumiPuzzler
oc project yasumi

echo Adding the Deployment Files
oc create -f src/main/fabric8/yasumipuzzler.yaml

#Make sure java and maven are in your classpath!!!!
echo deploying the PuzzleStarter
mvn -f pom.xml clean fabric8:deploy
