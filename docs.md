# AWS EC2 Server Administration Setup Guide

## Introduction

This document describes the process followed to provision and administer an Amazon EC2 Ubuntu server on AWS.

---

# Step 1: Launch an EC2 Instance

An Ubuntu Linux Amazon Machine Image (AMI) was selected during the EC2 launch process.

A new SSH key pair (`.pem`) was generated and downloaded to enable secure authentication when connecting to the instance.

---

# Step 2: Configure the Security Group

A Security Group was configured with the following rules.

## Inbound Rule

| Type | Protocol | Port | Source        |
| ---- | -------- | ---- | ------------- |
| SSH  | TCP      | 22   | My IP Address |

### Reason

Restricting SSH access to **My IP** ensures that only the administrator's current public IP address can remotely access the server. This significantly reduces exposure to unauthorized login attempts and improves the overall security posture of the EC2 instance.

## Outbound Rule

| Type        | Protocol | Port | Destination |
| ----------- | -------- | ---- | ----------- |
| All Traffic | All      | All  | 0.0.0.0/0   |

### Reason

Allowing outbound traffic enables the EC2 instance to communicate with external repositories and services required for:

* System updates
* Downloading software packages
* Installing Docker
* Accessing Docker repositories

---

# Step 3: Connect to the EC2 Instance

The EC2 instance was accessed securely using SSH authentication and the downloaded private key.

ssh -i "docker.pem" ubuntu@ec2-52-90-179-136.compute-1.amazonaws.com

This established a secure encrypted connection to the Linux server.

---

# Step 4: Install Docker

Docker was installed from Docker's official repository.

After installation, the installation was verified by checking the Docker version.


docker --version


Successful installation returned the installed Docker version.

---

# Step 5: Create a New Linux User

A new Linux user named **David** was created.

The user was subsequently added to the **sudo** group to grant administrative privileges.

The user account was verified after creation.

---

# Step 6: Evidence

The **screenshots** directory contains evidence demonstrating successful completion of the project, including:

* EC2 instance details
* Security Group configuration
* Successful SSH login
* Docker installation
* Linux user creation

---

# Conclusion

This project demonstrates the deployment and basic administration of an AWS EC2 Ubuntu server using secure configuration practices. The server was successfully provisioned, secured using Security Group rules, accessed through SSH, configured with Docker, and administered by creating an additional privileged Linux user.

