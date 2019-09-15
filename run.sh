#!/bin/sh

yum update &&
  yum -y groupinstall "Development Tools" &&
  yum install -y yum-utils   device-mapper-persistent-data   lvm2 &&
  yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo &&
  yum install docker-ce-19.03.2 docker-ce-cli-19.03.2 containerd.io &&
   curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
    chmod +x /usr/local/bin/docker-compose && 
    docker-compose up -d
    




