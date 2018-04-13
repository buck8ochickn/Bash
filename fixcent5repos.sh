#!/bin/sh
#fix linebreaks
#fix depreciated centos 5 repos so yum will flow
cp /etc/yum.repos.d/CentOS-Base.repo /root/CentOS-Base.repo.bk
sed -i --regexp-extended 's/#?baseurl.*/baseurl=http:\/\/vault.centos.org\/5.11\/os\/i386\//g' /etc/yum.repos.d/CentOS-Base.repo


sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-Base.repo
