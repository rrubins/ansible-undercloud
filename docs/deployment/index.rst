Deployment
============

Prereqs
-------
Add DNS entries for undercloud and overcloud's virtual IP.
Ensure your git server is functional and contains the correct templates (only required if you want to download your customized overcloud tripleo-heat-templates) 
Ensure your Satellite content views and activation keys are setup and operational/tested.

Step 1
------
Edit ``group_vars/all/vars.yaml`` and adjust the variables to fit your environment.

Step 2
------
Edit ``inventory/hosts`` and add an entry for undercloud.
This should match ``{{ undercloud_public_host }}`` value ``group_vars/all/vars.yaml`` and should be a FQDN resolvable in DNS.

Step 3
------
``ssh stack@<undercloud_public_host> uname -n``

*Ensure you get a FQDN as response and are not(!) prompted for a password.*

Step 4
------
``cd ansible-undercloud; time ansible-playbook -v site.yaml``
