#!/bin/bash

#Register HashiCorp GPG keys
 curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

#Add HashiCorp package repository

 sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

#Update "Ubuntu" packages list
 
 sudo apt update

#Install Terraform on Ubuntu
 sudo apt install terraform

# Check version of Terraform 
 terraform -v
 
# Check PATH of Terraform 
 which