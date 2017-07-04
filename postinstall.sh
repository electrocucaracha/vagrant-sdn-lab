#!/bin/bash

apt-get update -y
apt-get install -y software-properties-common
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update -y
apt-get install -y openjdk-8-jdk git


# Mininet installation
git clone https://github.com/mininet/mininet
bash mininet/util/install.sh

# ODL Installation
wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.6.0-Carbon/distribution-karaf-0.6.0-Carbon.tar.gz
tar xvf distribution-karaf-0.6.0-Carbon.tar.gz
cd distribution-karaf-0.6.0-Carbon

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
./bin/start
sleep 180
./bin/client feature:install odl-dlux-core odl-dluxapps-topology odl-restconf odl-l2switch-switch
