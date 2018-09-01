Method 1 : hostnamectl
To get the current hostname of the system :

# hostnamectl status
   Static hostname: localhost.localdomain
         Icon name: computer
           Chassis: n/a
        Machine ID: 55cc1c57c7f24ed0b0d352648024cea6
           Boot ID: a12ec8e04e6b4534841d14dc8425e38c
    Virtualization: vmware
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-123.el7.x86_64
      Architecture: x86_64
To set new hostname (geeklab) for the machine :

# hostnamectl set-hostname geeklab    ## static
# hostnamectl set-hostname "Geeks LAB"   ## pretty
Re-login and verify the new hostname :

# hostnamectl
   Static hostname: geekslab
   Pretty hostname: Geeks LAB
         Icon name: computer
           Chassis: n/a
        Machine ID: 55cc1c57c7f24ed0b0d352648024cea6
           Boot ID: a12ec8e04e6b4534841d14dc8425e38c
    Virtualization: vmware
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-123.el7.x86_64
      Architecture: x86_64
Method 2 : nmcli
To view the current hostname :

# nmcli general hostname
localhost.localdomain
To change the hostname to geeklab :

# nmcli general hostname geeklab
We need to restart the systemd-hostnamed service for the changes to take effect :

# service systemd-hostnamed restart
Re-login and erify the hostname change :

# hostname
geeklab
Method 3 : nmtui
We can also change the hostname using the nmtui tool :

nmtui
Select the option to “set the hostname” and hit enter

change hostname nmtui

Set the hostname

set hostname nmtui

Confirm the hostname change

confirm hostname nmtui

Restart the systemd-hostnamed service for the changes to take effect.

# service systemd-hostnamed restart
Re-login and verify the hostname change.

# hostnamectl
   Static hostname: geeklab
         Icon name: computer
           Chassis: n/a
        Machine ID: 55cc1c57c7f24ed0b0d352648024cea6
           Boot ID: a12ec8e04e6b4534841d14dc8425e38c
    Virtualization: vmware
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-123.el7.x86_64
      Architecture: x86_64
Method 4 : Edit /etc/hostname
This method requires a reboot of the system. View the current content of the file /etc/hostname.

# cat /etc/hostname
localhost.localdomain
To change the hostname to “geeklab”, replace the content of the /etc/hostname file with “geeklab”

# echo "geeklab" > /etc/hostname
# cat /etc/hostname
geeklab
Restart the system and verify.

# shutdown -r now
# hostname
geeklab
Filed Under: CentOS/RHEL 7, Linux
Some more articles you might also be interested in …
CentOS / RHEL 6 : How to change the verbosity of debug logs during booting
CentOS / RHEL : Exclusion with Yum For Kernel Updates
CentOS / RHEL 7 : How to install and configure telnet
Understanding SELinux Booleans
CentOS / RHEL : Managing password ageing for users using chage (with practical Examples)
CentOS / RHEL : How to restore/recover a deleted volume group in LVM
How to delete a partition using fdisk
RedHat / CentOS : Managing software RAID with mdadm
CentOS / RHEL : How to find free space in a Volume Group in LVM
CentOS / RHEL : How to configure alias (virtual interface) of bond interface (bondx:y)
