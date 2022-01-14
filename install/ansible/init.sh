#!/bin/bash

# Gerardo Ocampos

# Instalar AWX

yum install -y epel-release
yum install -y ansible
yum install -y yum-utils device-mapper-persistent-data lvm2 ansible git python-devel python-pip python-docker-py vim-enhanced
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install docker-ce -y
systemctl start docker
systemctl enable docker
git clone -b 12.0.0 https://github.com/ansible/awx.git
cd awx/
git clone https://github.com/ansible/awx-logos.git
cd installer/
yum install -y python3
cd /home/vagrant/awx/installer/
ansible-playbook install.yml -i inventory
yum install -y libselinux-python3
pip3 install --upgrade pip
pip3 install docker
pip3 install docker-compose
ansible-playbook install.yml -i inventory

