FROM fedora:31
LABEL maintainer="YaoXimfeng<yaoxf1@aliyun.com>"
RUN yum install -y wget
RUN cd /etc/yum.repos.d/ && mv fedora.repo fedora.repo.backup && mv fedora-updates.repo fedora-updates.repo.backup && wget -O /etc/yum.repos.d/fedora.repo http://mirrors.aliyun.com/repo/fedora.repo && wget -O /etc/yum.repos.d/fedora-updates.repo http://mirrors.aliyun.com/repo/fedora-updates.repo && dnf clean all && dnf makecache 
RUN yum update -y
RUN yum install -y opencv opencv-contrib opencv-core opencv-devel opencv-doc opencv-java python3-opencv
RUN mkdir -p /home/apps
WORKDIR /home/apps
