FROM ubuntu:latest
RUN sudo apt-get update -y
RUN sudo apt-get install nfs-kernel-server apache2 git
COPY configs/smb.conf /etc/samba/smb.conf
RUN sudo mkdir -p /srv/samba/netlogon
RUN sudo touch /srv/samba/netlogon/logon.cmd
RUN sudo /etc/init.d/smbd restart
RUN sudo /etc/init.d/nmbd restart
RUN sudo addgroup sysadmin
RUN sudo adduser root sysadmin
RUN sudo net groupmap add ntgroup="Domain Admins" unixgroup=sysadmin rid=512 type=d