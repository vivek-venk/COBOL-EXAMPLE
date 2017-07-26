#!/bin/bash

sudo apt-get update

#
#Install nginx
#
sudo apt-get install nginx

#
#Install default JDK
#
sudo apt-get install openjdk-7-jdk

#
# Jenkins will be launched as a daemon up on start. 
# See /etc/init.d/jenkins for more details.
# The 'jenkins' user is created to run this service.
# Log file will be placed in /var/log/jenkins/jenkins.log. 
# Check this file if you are troubleshooting Jenkins. 
# /etc/default/jenkins will capture configuration parameters for the launch 
# like e.g JENKINS_HOME
# By default, Jenkins listen on port 8080. Access this port with your 
# browser to start configuration.
#

wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
