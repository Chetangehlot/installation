# Java Install 7
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java7-installer
vim /etc/bash.bashrc 
export JAVA_HOME=/usr/lib/jvm/java-7-oracle

# Java Install 8
sudo apt-add-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

vim /etc/bash.bashrc 
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
