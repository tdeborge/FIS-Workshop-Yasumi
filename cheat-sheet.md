# Cheat Sheet

This page provides a couple of cheat shortcuts:

# Lightning Speed

Here you find all the needed commands to make the workshop deploy, leaving step 6 to start testing.

* cd to your home directory
  * **cd**
* **git clone **[https://github.com/tdeborge/FIS-Workshop-Yasumi.git](https://github.com/tdeborge/FIS-Workshop-Yasumi.git)** FISLAB**

* **cd FISLAB/Labs**

* Edit the setenv.sh script to provide the needed global information: \(vi setenv.sh\)  
  `#!/bin/sh`

  `#PLEASE VALIDATE THE IP`

  `export OCP_IP=`

  `export USERNAME=`

  `export PASSWORD=`

* **cd Lab\ 1/Solution;source configureAMQ.sh;cd ../..**

* **cd** **Lab\ 3/solution/PuzzleStarter;source deployPuzzleStarter.sh;cd ../../..**

* **cd Lab\ 4/Solution/PuzzleBox/;source deployPuzzleBox.sh;cd ../../..**

* **cd Lab\ 5/Solution/PuzzleCalculator/;source deployPuzzleCalculator.sh;cd ../../..**





