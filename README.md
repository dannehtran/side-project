
# Welcome to My Side Project
## Vagrant Documentation
### Setup Vagrant on Windows
#### Download appropriate package from Vagrant https://www.vagrantup.com/downloads
#### Run the Installer
#### Verify you have vagrant installed by running 'vagrant'
Create your working directory

CD to WD
Run vagrant init hashicorp/bionic 64 to initiate the directory
Provision VM with Virtualbox

## Nginx Documentation

## Samba Documentation (TBC)
### Go into docker running docker exec -it samba_pdc bash
#### Run the following commands user 
addgroup sysadmin
net groupmap add ntgroup="Domain Admins" unixgroup=sysadmin rid=512 type=d
useradd admin
smbpasswd -a admin
Enter password for Samba User Admin
net rpc rights grant -U admin "Domain Admins" SeMachineAccountPrivilege \
SePrintOperatorPrivilege SeAddUsersPrivilege SeDiskOperatorPrivilege \
SeRemoteShutdownPrivilege