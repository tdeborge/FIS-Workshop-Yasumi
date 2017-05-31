# Using the Developer Workbench

In this Lab, we will be starting the Developer Workbench and import an existing Project. Then we will make some adjustments, deploy it using the mvn fabric8 plugin and view the deployment in the workbench using the OpenShift View Plugin.

## Starting the Workbench

Locate the JBoss Developer WorkBench and start it up.

![](/assets/workbenchStartUp.png)

---

### Integration Stack

When working with Fuse, it could be interesting to install the JBoss Fuse Development Stack \(is probably already done\)

![](/assets/jbdevfusestack.png)

---

## Importing the Exercise

![](/assets/jbodimportproject.png)

Import an existing Maven Project

![](/assets/jbodimportyasumiexercise.png)

Import the Exercise directory in Lab 5.

![](/assets/jbodprojectimportview.png)

As a result the project is imported.

---

## Install the OpenShift Explorer View

From the Menu bar, select the **Window - Show view - Other** option:

![](/assets/jbodshowviewother.png)

In the filter box, filter on open and select the OpenShift Explorer.

---

## Configure OpenShiftExplorer

Locate the Explorer View and either select a new connection wizard or select the option to **Sign in to OpenShift**

![](/assets/jbodopenshiftviewlogin.png)

---

## The View

Once you establish the connection, you get the following:

![](/assets/jbodopenshiftviewresult.png)By right-clicking on the different components you can now see how you can easily edit configurations, and do basic operations on the OpenShift Instance from within the Developer Workbench.





