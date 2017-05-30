#!/bin/sh

OCP_IP=192.168.64.2
echo "Setting OpenShift IP address to ${OCP_IP}"
echo Switch to other user
oc login -u openshift-dev -p devel

echo setting the Project FIS-YasumiPuzzler
oc project yasumi

oc create -f src/main/fabric8/yasumipuzzleboxhandler.yaml
