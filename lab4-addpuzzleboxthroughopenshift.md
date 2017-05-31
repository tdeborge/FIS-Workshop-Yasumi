# Creating the Puzzle Box POD

All relevant files will be located in the Lab 4 exercise - solution - support directories.

## Hands-On:

In this section, we will be exploring the OpenShift Web Console in combination with the Git Repository, to create a POD Deployment using **S2I** from the Server Side. You will find all the files that are needed in the Solutions directory but we are going to use the On-Line repository directly.

---

## Preparing the ConfigMap

In order for the Pod to connect to the correct environment, we first need to upload the configmap. This can be done using the  
**deployYaml.sh **script that is located in the Solutions Directory.

---

## Console Login

First you need to connect to your OpenShift Environment.![](/assets/ocpLogin.png)

URL: [https://192.168.64.2:8443](https://192.168.64.2:8443)** **\(please replace the IP with your environment\)  
Username: **openshift-dev                      
**Password: **devel**

---

## Overview Status

The Overview window should be reflecting the following situation where the AMQ Pod and the puzzlestarter are running.![](/assets/ocpboxoverview.png)

---

## Add to Project

Perform the following steps:

* Select the Add to project link which is located Top Center in the browser window
* Select the Java Language
* Select **s2i-karaf2-camel-log**![](/assets/ocpboxcamelloginit.png)

name: **puzzlebox                
**Git URL: [https://github.com/tdeborge/FIS-Workshop-Yasumi.git](https://github.com/tdeborge/FIS-Workshop-Yasumi.git)

![](/assets/ocpboxkarafparameters1.png)

Then Select the **Advance Options **link

Add the following information:

Context Dir: **/Labs/Lab 4/Solution/PuzzleBox                
**![](/assets/ocpboxcontextdir.png)

Routing: **De-Select the Route Creation option. **There is no need to get to this services from the outside  
![](/assets/ocpboxrouting.png)

Buid Configuration:  
**De-Select the Webhook Configuration  
De-Select the Automatic build on image change                
**![](/assets/ocpboxbuildconfiguration.png)**              
**This is something we are not setting up in this workshop.

Set the Scaling and Resource Limits to your liking:

![](/assets/ocpboxscalingresource.png)

**Hit the Create Button**![](/assets/ocpboxcreated.png)

---

## Overview Window after Creation![](/assets/ocpboxoverviewcreated.png)

---

## Select View Log on Build![](/assets/ocpboxbuildlog.png)

---

## Build Finished View![](/assets/ocpboxbuildfinishedpodup.png)

These steps have created a running pod that is connected to our AMQ Broker that is defined in the previously uploaded ConfigMap \(Yaml file\).

---

## What is missing?

Inspecting the differences between the 2 FIS Pods that are currently deployed and running, we see a couple of difference:

* **puzzlebox** has a special notification that suggests to add Health Checks while **puzzlestarter** seems to be OK
* **puzzlebox** only seems to have 1 port \(8778\) mapped while **puzzlestarter** has an additional **intermapper** port \(8181\)

This also makes the puzzlebox unable to connect to the 8181 java-console.

### PuzzleStarter \(Template View\)

![](/assets/ocpboxpuzzlestartertemplate.png)

### PuzzleBox \(Template View\)

![](/assets/ocpboxpuzzlestartertemplateview.png)

