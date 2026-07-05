# Architecture Diagram

The deployment architecture consists of the following components:


                    +----------------------+
                    |     My Laptop        |
                    |                      |
                    |   PowerShell / CLI)  |
                    +----------+-----------+
                               |
                               | SSH (TCP Port 22)
                               |
                    +----------v-----------+
                    |   AWS Security Group |
                    | Inbound: SSH (My IP) |
                    | Outbound: All Traffic|
                    +----------+-----------+
                               |
                               |
                    +----------v-----------+
                    |   Amazon EC2 Instance|
                    |    Ubuntu Linux AMI  |
                    |                      |
                    |  - Docker Installed  |
                    |  - User: David       |
                    |  - Sudo Privileges   |
                    +----------+-----------+
                               |
                               |
                    +----------v-----------+
                    | Docker Repository &  |
                    | Ubuntu Package Repos |
                    +----------------------+


## Architecture Description

The administrator securely connects from a local computer to an Ubuntu EC2 instance using SSH over TCP port 22. Access is restricted through an AWS Security Group that permits inbound SSH traffic only from the administrator's IP address. The EC2 instance communicates with external Ubuntu and Docker repositories through outbound internet access to download software packages and updates. Docker is installed on the instance, and an additional Linux user (**David**) is created with sudo privileges to perform administrative tasks.

