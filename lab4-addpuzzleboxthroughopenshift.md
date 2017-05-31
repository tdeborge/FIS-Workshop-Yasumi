# Creating the Puzzle Box POD

All relevant files will be located in the Lab 4 exercise - solution - support directories.

## Hands-On:

In this section, we will be exploring the OpenShift Web Console in combination with the Git Repository, to create a POD Deployment using **S2I** from the Server Side. You will find all the files that are needed in the Solutions directory but we are going to use the On-Line repository directly.

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
* Select Red Hat JBoss Fuse
* Select fis-karaf-openshift \(Version 2\)

![](/assets/ocpfisaddtoproject.png)

name: **puzzlebox    
**Git URL: [https://github.com/tdeborge/FIS-Workshop-Yasumi.git](https://github.com/tdeborge/FIS-Workshop-Yasumi.git)

Then Select the **Advance Options **link![](/assets/ocpboxadvancedoptions.png)

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

**Hit the Create Button**



