#!/bin/bash

# Setup Hostname 
sudo hostnamectl set-hostname "web.cloudbinary.io"

# Update the hostname part of Host File
echo "`hostname -I | awk '{ print $1 }'` `hostname`" >> /etc/hosts 

# Update Ubuntu Repository 
sudo apt-get update 

# Download, Install & Configure Apache2 WebServer 
sudo apt-get install apache2 -y 

# Enable the Service/Daemons at Boot Level and Start 
sudo systemctl enbale apache2
sudo systemctl restart apache2

# DocumentRoot : /var/www/html/  File : index.html 

# Enable the Service/Daemons at Boot Level and Start 
sudo systemctl enbale apache2
sudo systemctl restart apache2

# To Restart SSM Agent on Ubuntu 
sudo systemctl restart snap.amazon-ssm-agent.amazon-ssm-agent.service

# Attach Instance profile To EC2 Instance 
# aws ec2 associate-iam-instance-profile --iam-instance-profile Name=SA-EC2-SSM --instance-id ""


