#! /bin/bash

mkdir -p /opt
mkdir -p /t
cd /opt
wget https://github.com/github/hub/releases/download/v2.11.2/hub-linux-amd64-2.11.2.tgz
mv hub*.tgz hub.tgz
tar xf hub.tgz && mv hub.tgz /t

wget https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz
mv go*.tar.gz go.tar.gz
tar xf go.tar.gz && mv go.tar.gz /t

wget https://nodejs.org/dist/v10.15.3/node-v10.15.3-linux-x64.tar.xz
mv node*.tar.xz node.tar.xz
tar xf node.tar.xz && mv node.tar.xz /t

ln -s /opt/go/bin/* /usr/local/bin/
ln -s /opt/node/bin/* /usr/local/bin/
ln -s /hub/bin/* /usr/local/bin/
for bin in /opt/* ;do
    if [[ -f $bin ]];then echo $bin; ln -s /$bin /usr/local/bin/; fi
done

