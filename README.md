# Project-4-Launch-and-Secure-Instance

# AWS EC2 Server Administration

## Project Overview

This project demonstrates the provisioning and administration of an Amazon EC2 Linux server on AWS. It covers the complete process of launching an EC2 instance, configuring secure network access, establishing a secure SSH connection, performing basic server administration by installing Docker, creating a new Linux user with administrative privileges, and documenting the deployment process.

The project was completed as part of a cloud administration exercise to demonstrate foundational AWS and Linux system administration skills.

## Objectives

The project accomplishes the following tasks:

* Launch an AWS EC2 instance using an Ubuntu Linux Amazon Machine Image (AMI).
* Configure a Security Group to provide secure remote access.
* Connect securely to the EC2 instance using SSH and a generated key pair.
* Install Docker on the Linux server.
* Create a new Linux user named **David** and grant the user sudo privileges.
* Document the deployment process.
* Create an architecture diagram illustrating the cloud deployment.

## Repository Structure
.
├── README.md
├── docs/
│   └── setup-guide.md
├── diagrams/
│   └── architecture-diagram.md
└── screenshots/
    ├── ec2-instance.png
    ├── security-group.png
    ├── ssh-connection.png
    ├── docker-installation.png
    └── user-creation.png


## Folder Description

### README.md

Provides an overview of the project, objectives, repository structure, and navigation guide.

### docs/

Contains a detailed walkthrough of the implementation process, including the rationale behind the selected security group configuration.

### screenshots/

Contains evidence of:

* EC2 instance details
* Security Group configuration
* Successful SSH connection
* Docker installation
* Linux user creation

### diagrams/

Contains a visual representation of the cloud architecture used for the deployment.

## Technologies Used

* Amazon Web Services (AWS)
* Amazon EC2
* Ubuntu Linux
* OpenSSH
* Docker
* Bash

## Author

Amaka-Joy Okolocha

