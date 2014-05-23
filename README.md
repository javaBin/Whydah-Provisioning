Whydah-Provisioning
===================

Whydah Provisioning Example

Prerequisites
-------------
* Ansible [http://www.ansible.com/get-started] on local (via apt-get on ubuntu, yum on Red hat and brew on Mac)
* One or more Red Hat servers to be installed on
* SSH authentication keys (.pem /.ppk) available for servers

Getting started
---------------
Copy hosts_example to hosts. Enter server IP/addresses.

Provisioning
------------
ansible-playbook provision-whydah.yml

Alternatives:

* --private-key=~/mykeyfile.pem
* -vvvv <- For debugging
* --help
* --tags uib | token | sso | adminapp <- To run one of the setups