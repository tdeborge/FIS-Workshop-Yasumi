# LAB - 3

In the Labs directory, you will find all relevant information in the exercise - solution - support directories.

# Hands-On:

As this is the first project for Fuse Integration Services, we will be building this completely from scratch \(and without the Developer Studio\). The reason for this approach is to get some practice going and understanding what the wizards in Developer Studio are doing for us.

## Preparation:

Open a shell and position yourself in the **Labs/Lab 3/exercise directory.**

if needed, you can now copy all commands from this page and execute them in the shell.

## Creating a new Project

We will start off a new Project by using the Maven Archetyp that is created for fis-karaf. The base project used for this approach is located [here](https://gitlab.com/rh-emea-ssa-fuse-tutorial/fis-configmap-karaf).

```
mvn org.apache.maven.plugins:maven-archetype-plugin:2.4:generate -DarchetypeCatalog=https://maven.repository.redhat.com/ga/io/fabric8/archetypes/archetypes-catalog/2.2.195.redhat-000007/archetypes-catalog-2.2.195.redhat-000007-archetype-catalog.xml -DarchetypeGroupId=org.jboss.fuse.fis.archetypes -DarchetypeArtifactId=karaf2-camel-log-archetype -DarchetypeVersion=2.2.195.redhat-000007
```

When executing this command \(ctrl-a and copy\), the following questions will come by \(Please fill in accordingly\):

---

Define value for property 'groupId': :** com.rhworkshop.msa    
**Define value for property 'artifactId': : **PuzzleStarter**  
Define value for property 'version': 1.0-SNAPSHOT: : **1.0.0-SNAPSHOT**  
Define value for property 'package': com.rhworkshop.msa: :  
Confirm properties configuration:  
groupId: com.rhworkshop.msa  
artifactId: PuzzleStarter  
version: 1.0.0-SNAPSHOT  
package: com.rhworkshop.msa  
Y: : **Y**

---

After a successful build, you will have now a project created called PuzzleStarter.![](/assets/puzzlestartercreated.png)

---



