# FIS Yasumi Workshop Introduction

This workshop document will walk you through a set of steps that I went through in order to get the FIS \(Fuse Integration Services\) Yasumi Application deployed on the OpenShift platform. 

By cloning the Workshop Git Repository, you will get access to a couple of LABS. In these labs you will find exercise, solution and support directories. In case there is no interest to complete a step, it is possible to setup the environment with minimal effort using the Solution Directions.

## Preparation

### Machine setup:

#### Red Hat Workshop

When in a Red Hat Workshop location, you will need to follow the instructions provided on site. That should take care of the needed configurations and software installations.

#### Off-Site Workshop

When you want to perform the workshop outside of the Red Hat provided environment, your machine will need to have the following items installed and in the PATH:

* JDK 1.8
* Maven 3.3
* Correctly configured settings.xml for maven that points to a Maven Repository that includes all the Red Hat locations
* CDK \(container Development Kit\) for OpenShift
  * This workshop has been developed on CDK 2.4
  * This workshop is also working on a MiniShift with OpenShift 3.3.5
  * This workshop should also run on CDK 3 that is based on MiniShift but is not tested

### Sources

The complete Workshop is located at:

[https://github.com/tdeborge/FIS-Workshop-Yasumi](https://github.com/tdeborge/FIS-Workshop-Yasumi)

You can get this environment with the following command:

**git clone **[https://github.com/tdeborge/FIS-Workshop-Yasumi.git](https://github.com/tdeborge/FIS-Workshop-Yasumi.git)** &lt;possible directory name&gt;**

Once you have cloned the repository, you are set to start the Workshop.

## Contributions

In case you would like to contribute, please Fork the repository and send in the pull requests!



