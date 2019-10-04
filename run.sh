#!/bin/sh

yum update &&
  yum -y groupinstall "Development Tools" &&
  yum install -y yum-utils   device-mapper-persistent-data   lvm2 &&
  # 安装fish
  yum -y install wget && cd /etc/yum.repos.d/ && wget https://download.opensuse.org/repositories/shells:fish/RHEL_7/shells:fish.repo &&
  yum -y install fish && chsh -s /usr/bin/fish && fish && exit && 
  cd && mkdir -p ~/.config && cd .config && yum -y install git && git clone https://github.com/CapBarbossa/fish_terminal.git &&
  rm -rf fish && mv fish_terminal fish && 
  # 安装docker
  yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo &&
  yum -y install docker-ce-19.03.2 docker-ce-cli-19.03.2 containerd.io &&
   curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
    chmod +x /usr/local/bin/docker-compose && 
    systemctl start docker && 
    docker-compose up -d
    




