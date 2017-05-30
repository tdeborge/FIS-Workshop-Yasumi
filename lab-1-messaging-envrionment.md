# Creation of the Messaging layer

As the Yasumi Puzzle Solution on OCP is using the AMQ messaging layer, we will first go through a set of steps in order to deploy an AMQ Message Broker in the OpenShift environment. That way, all URI References within the FIS flow can reference an internal message broker.

---

**Looking at the LAB 1 directory, you will find only a Solution part as setting up the Broker in OpenShift is not considered a main objective in the workshop.**

---

## Configure the AMQ Creation Script

* Go into the Lab 1/Solution directory
* Edit the configureAMQ.sh script and set the OCP\_IP variable to the correct IP Address.
* Run the Script.

Upon successful execution of the script, you will find the OpenShift Console to be showing the following:

* Added a Project **Yasumi Puzzler**
* 


