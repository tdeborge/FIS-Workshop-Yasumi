#!/bin/sh

OCP_IP=ocp-master.external.redhat.arrowlabs.be
echo "Setting OpenShift IP address to ${OCP_IP}"
#I think this line became obsolete once AMQ is also deployed into the OCP environment. This allows for having static referal to the correct Rout URL.
#sed -i s/TODO_SPECIFY_IP/${OCP_IP}/ ./YasumiPuzzleBox/src/main/fabric8/yasumipuzzleboxhandler.yaml ./YasumiPuzzleStarter/src/main/fabric8/yasumipuzzler.yaml ./YasumiPuzzleCalculator/src/main/fabric8/yasumipuzzleboxcalculator.yaml

echo Login to Openshift as 'Admin'
oc login -u admin -p redhat123 ${OCP_IP}:8443

echo Make sure we are in the 'openshift' project
oc project adminyasumi

echo Adding the FIS templates
BASEURL=https://raw.githubusercontent.com/jboss-fuse/application-templates/GA
oc replace --force -n openshift -f ${BASEURL}/fis-image-streams.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/karaf2-camel-amq-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/karaf2-camel-log-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/karaf2-camel-rest-sql-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/karaf2-cxf-rest-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-amq-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-config-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-drools-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-infinispan-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-rest-sql-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-teiid-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-camel-xml-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-cxf-jaxrs-template.json
oc replace --force -n openshift -f ${BASEURL}/quickstarts/spring-boot-cxf-jaxws-template.json

echo Adding the policy rule
oc policy add-role-to-user view --serviceaccount=default
