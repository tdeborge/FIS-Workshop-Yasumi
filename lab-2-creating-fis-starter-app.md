# LAB - 2

To start this lab, you can set the git to the start state by going to the project directory and executing:

**git checkout LAB2**

This should set the current content of the directory to include the following directories:

* GUIMonolithic
* GUIScaleOut
* SupportMaterials

# Hands-On:

As this is the first project we are using the Developer Studio, we will have to import the base project.

## Start Developer Studio:

### Import Main Project

In the File menu, select the import option and import existing maven projects![](/assets/importmavenprojects.png)

Go to the directory where you have checked out LAB2:

![](/assets/checkoutDir.png)

And import the project.

### Create PuzzleStarter

Create a new Project based on the Maven Module Wizard:

![](/assets/MavenModuleWizard.png)

Select next.

insert '**fis**' into the filter and look for the correct archetype:![](/assets/Archetype.png)

Select the karaf2-camle-log-archetype and hit next.

![](/assets/mavenmoduleids.png)

Provide a meaningfull GroupId and set the Version to 1.0.0-SNAPSHOT

After these steps, your project explorer should look as follows:

![](/assets/fisprojectexplorer1.png)

Make sure to work on the PuzzleStarter Project and not in the FISYasumiWorkshop Project \(which is the master directory\).

### Adjust the Project Files

In the Main project, you will find the SupportMaterials for LAB2:

\[\[INSERT IMAGE FOR SUPPORT FILES HERE\]\]

### Preparing the project:

**Delete the content under the following directories:**

![](/assets/deletedResourceProgram.png)

src/main/java/\*  
src/main/resources/\*  
src/test/java/\*  
src/main/fabric8/\*

**Copy the following sections:**

SupportMaterials/LAB2/ProjectFiles/src/main/java/\* **to** src/main/java  
SupportMaterials/LAB2/ProjectFiles/src/main/fabric8/\* **to** src/main/fabric8  
SupportMaterials/LAB2/ProjectFiles/src/main/resources/\* **to** src/main/resources

### File Highlights:

**src/main/java/\*    
**This section holds all the objects needed for the Puzzler Solution and defines some processors for the Camel Routes.

**src/fabric8/deployment.yml **  
This file defines all the deployment options for the Pod that will hold the Puzzle Starter. The currently used content defines a minimum on settings.

**src/main/fabric8/yasumipuzzler.yaml**  
This Yaml file contains the externalized properties that are used in the Camel Route Definition. In Fuse Standalone, this content would be located in a cfg file.

**src/main/resources/assembly/etc/com.rhworkshop.msa.yasumipuzzler.cfg**  
This is the properties configuration file that can be used when running the solution in standalone mode.

**src/main/resources/OSGI-INF/blueprint/FuseYasumiPuzzler.xml  
**![](/assets/camelpuzzlestarter.png)  
This Camel Route Definition file holds the logic that will be deployed in the Karaf Container.

