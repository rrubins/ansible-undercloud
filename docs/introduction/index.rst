Introduction
============
This is yet another way to deploy tripleo undercloud using ansible.
There are many other playbooks and roles available to choose from. See the References section for links.

OSP Versions
------------
In its current state, ansible-undercloud will build a fully functional undercloud for:

* OpenStack Platform 10 (Newton)
* OpenStack Platform 11 (Ocata)
* OpenStack Platform 12 (Pike)

Operating System Images
-----------------------
The operating system image used for undercloud is the latest **Red Hat Enterprise Linux 7** cloud image.

Satellite Server
----------------
**Red Hat Satellite 6** server is used for accessing yum repos.

Ansible Variables
-----------------
To keep things simple, the ansible variables are all centralized in ``group_vars/all/vars.yaml`` file.
Edit those variables to fit your environment.  See Deployment for more details.

Run Time
--------
When all the prereqs are met and variables modified, run:

``time ansible-playbook -v site.yaml``

On average, the ansible-undercloud playbook completion on a KVM based undercloud (4 vcpus/16GB ram) is ~60min.
