#!/bin/bash

# Gerardo Ocampos

# Deploy JBOSS

yum install -y epel-release
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
systemctl enable --now docker

# RUN DOCKER JBOSS
docker run -p 8080:8080 -p 9990:9990 --name wildfly -d -it jboss/wildfly /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 
