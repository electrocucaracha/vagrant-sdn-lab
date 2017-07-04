#!/bin/bash

apt-get update -y
apt-get install -y software-properties-common
add-apt-repository -y ppa:openjdk-r/ppa
apt-get update -y
apt-get install -y git openjdk-8-jdk maven git


# Mininet installation
git clone https://github.com/mininet/mininet
bash mininet/util/install.sh

# ODL Installation
wget https://nexus.opendaylight.org/content/groups/public/org/opendaylight/integration/distribution-karaf/0.6.0-Carbon/distribution-karaf-0.6.0-Carbon.tar.gz
tar xvf distribution-karaf-0.6.0-Carbon.tar.gz
cd distribution-karaf-0.6.0-Carbon

cat <<EOL > data/cache/org.eclipse.osgi/bundles/20/data/FeaturesServiceState.properties
#FeaturesService State
#Fri Jun 30 23:51:42 UTC 2017
features.pax-war_split_for_name_and_version_3.2.9=239,250,251,252,253,254,255,256,257,258,259,260,261
repositories.item.45=mvn\:org.apache.jclouds.karaf/jclouds-karaf/1.8.1/xml/features
repositories.item.44=mvn\:org.opendaylight.bgpcep/features-pcep/0.7.0-Carbon/xml/features
features.odl-yangtools-yang-data_split_for_name_and_version_1.1.0-Carbon=81,82,83,84
repositories.item.43=mvn\:org.apache.karaf.features/standard/3.0.8/xml/features
repositories.item.42=mvn\:org.opendaylight.mdsal/features-mdsal/2.2.0-Carbon/xml/features
repositories.item.41=mvn\:org.opendaylight.bgpcep/features-rsvp/0.7.0-Carbon/xml/features
repositories.item.40=mvn\:org.opendaylight.iotdm/onem2mall-features/0.3.0-Carbon/xml/features
features.odl-openflowplugin-app-topology_split_for_name_and_version_0.4.0-Carbon=225,226,227
features.odl-aaa-encryption-service_split_for_name_and_version_0.5.0-Carbon=264
features.kar_split_for_name_and_version_3.0.8=54,55,56
features.odl-aaa-shiro_split_for_name_and_version_0.5.0-Carbon=266,270,271,273,274,275,276,277,278,279,280,284,293,296,297
features.odl-mdsal-models_split_for_name_and_version_0.10.0-Carbon=100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117
repositories.item.39=mvn\:com.github.aenniw/jrobot-features/3.4.1/xml/features
repositories.item.38=mvn\:org.opendaylight.ovsdb/hwvtepsouthbound-features/1.4.0-Carbon/xml/features
repositories.item.37=mvn\:org.opendaylight.openflowplugin/features-openflowplugin-he/0.4.0-Carbon/xml/features
repositories.item.36=mvn\:org.opendaylight.controller/features-extras/1.8.0-Carbon/xml/features
repositories.item.35=mvn\:org.opendaylight.topoprocessing/features-topoprocessing/0.3.0-Carbon/xml/features
features.odl-netty_split_for_name_and_version_4.1.7.Final=
repositories.item.34=mvn\:org.opendaylight.packetcable/features-packetcable-policy/1.5.0-Carbon/xml/features
repositories.item.33=mvn\:org.opendaylight.bier/features-bier/0.1.0-Carbon/xml/features
features.pax-jetty_split_for_name_and_version_8.1.19.v20160209=8,232,233,234,235,236,237,238
repositories.item.32=mvn\:org.apache.karaf.cellar/apache-karaf-cellar/3.0.3/xml/features
repositories.item.31=mvn\:org.opendaylight.lacp/features-lacp/1.3.0-Carbon/xml/features
features.odl-config-persister_split_for_name_and_version_0.6.0-Carbon=88,123,124,128,129,130,131,132,133,134,135,136
repositories.item.30=mvn\:org.opendaylight.integration/features3-distribution/0.6.0-Carbon/xml/features
features.odl-mdsal-eos-binding_split_for_name_and_version_2.2.0-Carbon=157,158
repositories.item.29=mvn\:org.opendaylight.aaa/features-aaa/0.5.0-Carbon/xml/features
features.odl-akka-system-2.4_split_for_name_and_version_1.8.0-Carbon=177,178,179,180
repositories.item.28=mvn\:org.opendaylight.controller/features-protocol-framework/0.9.0-Carbon/xml/features
repositories.item.27=mvn\:org.apache.karaf.features/spring/3.0.8/xml/features
repositories.item.26=mvn\:org.opendaylight.yangtools/features-yangtools/1.1.0-Carbon/xml/features
repositories.item.25=mvn\:org.opendaylight.openflowplugin/features-openflowplugin-extension-he/0.4.0-Carbon/xml/features
repositories.item.24=mvn\:org.opendaylight.eman/eman-features/1.1.0-Carbon/xml/features
repositories.item.23=mvn\:org.opendaylight.integration/features-integration-index/0.6.0-Carbon/xml/features
repositories.item.22=mvn\:org.opendaylight.netconf/features-restconf/1.5.0-Carbon/xml/features
repositories.item.21=mvn\:org.opendaylight.iotdm/iotdmkaraffeatureloader-features/0.1.0-Carbon/xml/features
repositories.item.20=mvn\:org.opendaylight.iotdm/iotdmbundleloader-features/0.1.0-Carbon/xml/features
repositories.item.9=mvn\:org.opendaylight.netconf/features-netconf/1.2.0-Carbon/xml/features
repositories.item.8=mvn\:org.opendaylight.sdninterfaceapp/features-sdninterfaceapp/1.8.0-Carbon/xml/features
repositories.item.7=mvn\:org.opendaylight.didm/features-didm-hp/0.4.0-Carbon/xml/features
repositories.item.6=mvn\:org.apache.cxf.karaf/apache-cxf/3.0.2/xml/features
repositories.item.5=mvn\:org.opendaylight.aaa/features-aaa-shiro/0.5.0-Carbon/xml/features
repositories.item.4=mvn\:org.opendaylight.bgpcep/features-bgp/0.7.0-Carbon/xml/features
repositories.item.3=mvn\:org.opendaylight.mdsal.model/features-mdsal-model/0.10.0-Carbon/xml/features
repositories.item.2=mvn\:org.opendaylight.infrautils/infrautils-features/1.1.0-Carbon/xml/features
repositories.item.1=mvn\:org.opendaylight.netide/netide-features/0.3.0-Carbon/xml/features
features.odl-dluxapps-topology_split_for_name_and_version_0.5.0-Carbon=313
repositories.item.0=mvn\:org.opendaylight.lispflowmapping/features-lispflowmapping/1.5.0-Carbon/xml/features
features.odl-mdsal-binding-dom-adapter_split_for_name_and_version_2.2.0-Carbon=99
repositories.item.19=mvn\:org.opendaylight.unimgr/unimgr-features/0.2.0-Carbon/xml/features
repositories.item.18=mvn\:org.opendaylight.snmp4sdn/features-snmp4sdn/0.5.0-Carbon/xml/features
repositories.item.17=mvn\:org.opendaylight.iotdm/onem2msimpleadapter-features/0.3.0-Carbon/xml/features
repositories.item.16=mvn\:org.opendaylight.snmp/features-snmp/1.3.0-Carbon/xml/features
repositories.item.15=mvn\:org.opendaylight.odlparent/features-odlparent/1.8.0-Carbon/xml/features
repositories.item.14=mvn\:org.opendaylight.ovsdb/library-features/1.4.0-Carbon/xml/features
features.odl-openflowplugin-flow-services_split_for_name_and_version_0.4.0-Carbon=
repositories.item.13=mvn\:org.opendaylight.sfc/features-sfc/0.5.0-Carbon/xml/features
repositories.item.12=mvn\:org.ops4j.pax.cdi/pax-cdi-features/0.11.0/xml/features
repositories.item.11=mvn\:org.opendaylight.didm/features-common/0.4.0-Carbon/xml/features
repositories.item.10=mvn\:org.opendaylight.odlparent/features-akka/1.8.0-Carbon/xml/features
features.odl-akka-clustering-2.4_split_for_name_and_version_1.8.0-Carbon=174,184,186,187,188,189,190,191,192,193,194,195,196
features.standard_split_for_name_and_version_3.0.8=40,41,42,43,44,45,46,47,48,20,24,27,28,29
features.odl-yangtools-yang-parser_split_for_name_and_version_1.1.0-Carbon=74,75,76,77,78,79,80
features.odl-akka-persistence-2.4_split_for_name_and_version_1.8.0-Carbon=174,184,185
features.config_split_for_name_and_version_3.0.8=38,39
features.odl-mdsal-distributed-datastore_split_for_name_and_version_1.5.0-Carbon=201,202,203,204,205,206
features.odl-config-netty_split_for_name_and_version_0.6.0-Carbon=146,147,148,149,150
features.odl-mdsal-binding-base_split_for_name_and_version_2.2.0-Carbon=85,86
features.odl-mdsal-clustering-commons_split_for_name_and_version_1.5.0-Carbon=197,198,199
features.odl-mdsal-common_split_for_name_and_version_1.5.0-Carbon=119,120,121,122
features.odl-mdsal-eos-dom_split_for_name_and_version_2.2.0-Carbon=156
features.odl-mdsal-eos-common_split_for_name_and_version_2.2.0-Carbon=154,155
features.odl-mdsal-dom-api_split_for_name_and_version_2.2.0-Carbon=97,98
features.odl-restconf_split_for_name_and_version_1.5.0-Carbon=303
features.odl-openflowplugin-flow-services-ui_split_for_name_and_version_0.4.0-Carbon=
features.odl-netty-4_split_for_name_and_version_1.8.0-Carbon=137,138,139,140,141,142,143,144
features.http_split_for_name_and_version_3.0.8=248,249
features.odl-aaa-cert_split_for_name_and_version_0.5.0-Carbon=265,266,267
features.odl-mdsal-singleton-common_split_for_name_and_version_2.2.0-Carbon=159
features.odl-mdsal-common_split_for_name_and_version_2.2.0-Carbon=93
features.ssh_split_for_name_and_version_3.0.8=57,58,30
features.pax-http-whiteboard_split_for_name_and_version_3.2.9=250,251
features.odl-openflowplugin-nsf-model_split_for_name_and_version_0.4.0-Carbon=212,213,214,215,216
features.odl-restconf-noauth_split_for_name_and_version_1.5.0-Carbon=82,83,298,299,300,301,302
features.odl-mdsal-remoterpc-connector_split_for_name_and_version_1.5.0-Carbon=200
features.odl-mdsal-dom-broker_split_for_name_and_version_2.2.0-Carbon=152,153
features.odl-config-core_split_for_name_and_version_0.6.0-Carbon=123,124,125,126
features.odl-mdsal-binding-runtime_split_for_name_and_version_2.2.0-Carbon=87,88,89,90,91,92
features.odl-mdsal-apidocs_split_for_name_and_version_1.5.0-Carbon=229,230,268,276,288,289,290,291,292,293,294,314
repositories.item.89=mvn\:org.opendaylight.ocpplugin/features-ocpplugin/0.2.0-Carbon/xml/features
features.odl-config-manager_split_for_name_and_version_0.6.0-Carbon=127
repositories.item.88=mvn\:org.opendaylight.honeycomb.vbd/vbd-features/1.1.0-Carbon/xml/features
repositories.item.87=mvn\:org.opendaylight.ocpplugin.ocpjava/features-ocpjava/0.2.0-Carbon/xml/
repositories.item.86=mvn\:org.opendaylight.tsdr/features-tsdr/1.3.0-Carbon/xml/features
repositories.item.85=mvn\:org.opendaylight.genius/genius-features/0.2.0-Carbon/xml/features
features.package_split_for_name_and_version_3.0.8=52,53
features.odl-dlux-core_split_for_name_and_version_0.5.0-Carbon=304,305,306,307,308,309,310,311,312
repositories.item.84=mvn\:org.opendaylight.of-config/southbound-features/1.2.0-Carbon/xml/features
repositories.item.83=mvn\:org.opendaylight.usc/usc-features/1.3.0-Carbon/xml/features
features.odl-akka-scala-2.11_split_for_name_and_version_1.8.0-Carbon=174,175,176
repositories.item.82=mvn\:org.opendaylight.netvirt/vpnservice-features/0.4.0-Carbon/xml/features
features.odl-mdsal-broker_split_for_name_and_version_1.5.0-Carbon=
repositories.item.81=mvn\:org.opendaylight.alto/features-alto-release/0.4.0-Carbon/xml/features
repositories.item.80=mvn\:org.opendaylight.ovsdb/southbound-features/1.4.0-Carbon/xml/features
features.odl-config-startup_split_for_name_and_version_0.6.0-Carbon=
features.odl-lmax-3_split_for_name_and_version_1.8.0-Carbon=151
features.odl-mdsal-broker-local_split_for_name_and_version_1.5.0-Carbon=161,162,163,164,165,166,167,168,169,170,171,172,173
features.startup_split_for_name_and_version_0.0.0=0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37
repositories.item.79=mvn\:org.opendaylight.groupbasedpolicy/features-groupbasedpolicy/0.5.0-Carbon/xml/features
repositories.item.78=mvn\:org.opendaylight.controller/features-mdsal-benchmark/1.3.0-Carbon/xml/features
features.pax-http_split_for_name_and_version_3.2.9=8,239,240,241,242,243,244,245,246,247
repositories.item.77=mvn\:org.opendaylight.controller/features-mdsal/1.5.0-Carbon/xml/features
repositories.item.76=mvn\:org.opendaylight.faas/features-faas/1.2.0-Carbon/xml/features
features.odl-mdsal-binding-api_split_for_name_and_version_2.2.0-Carbon=94,95,96
repositories.item.75=mvn\:org.opendaylight.federation/federation-features/0.2.0-Carbon/xml/features
repositories.item.74=mvn\:io.fabric8/karaf-features/2.0.20/xml/features
repositories.item.73=mvn\:org.opendaylight.ttp/features-ttp/0.4.0-Carbon/xml/features
features.odl-openflowplugin-app-config-pusher_split_for_name_and_version_0.4.0-Carbon=224
features.odl-mdsal-dom_split_for_name_and_version_2.2.0-Carbon=
repositories.item.72=mvn\:org.opendaylight.nic/features-nic/1.3.0-Carbon/xml/features
repositories.item.71=mvn\:org.opendaylight.iotdm/iotdmcsitdist-features/0.3.0-Carbon/xml/features
repositories.item.70=mvn\:org.opendaylight.bgpcep/features-extras/0.7.0-Carbon/xml/features
features.odl-openflowjava-protocol_split_for_name_and_version_0.9.0-Carbon=207,208,209,210,211
features.odl-yangtools-common_split_for_name_and_version_1.1.0-Carbon=67,68,69,70,71,72,73
features.odl-openflowplugin-southbound_split_for_name_and_version_0.4.0-Carbon=217,218,219,220,221,222,223
features.odl-config-api_split_for_name_and_version_0.6.0-Carbon=118
repositories.count=90
features.odl-openflowplugin-app-forwardingrules-manager_split_for_name_and_version_0.4.0-Carbon=228
repositories.item.69=mvn\:org.opendaylight.openflowjava/features-openflowjava/0.9.0-Carbon/xml/features
features.odl-openflowplugin-flow-services-rest_split_for_name_and_version_0.4.0-Carbon=
repositories.item.68=mvn\:org.opendaylight.controller/features-config/0.6.0-Carbon/xml/features
features.management_split_for_name_and_version_3.0.8=64,59,60,61,62,63
repositories.item.67=mvn\:org.opendaylight.sxp/features/1.4.0-Carbon/xml/features
repositories.item.66=mvn\:org.opendaylight.controller/features-config-netty/0.6.0-Carbon/xml/features
repositories.item.65=mvn\:org.opendaylight.of-config/features-of-config/1.2.0-Carbon/xml/features
repositories.item.64=mvn\:org.opendaylight.nemo/nemo-features/1.2.0-Carbon/xml/features
repositories.item.63=mvn\:org.opendaylight.vtn/features-vtn-manager/0.6.0-Carbon/xml/features
repositories.item.62=mvn\:org.opendaylight.neutron/features-neutron/0.8.0-Carbon/xml/features
features.region_split_for_name_and_version_3.0.8=49,50,51
repositories.item.61=mvn\:org.apache.karaf.features/enterprise/3.0.8/xml/features
repositories.item.60=mvn\:org.opendaylight.dlux/features-dlux/0.5.0-Carbon/xml/features
features.odl-aaa-api_split_for_name_and_version_0.5.0-Carbon=229,230,231
features.odl-akka-leveldb-0.7_split_for_name_and_version_1.8.0-Carbon=65,181,182,183
features.odl-config-netty-config-api_split_for_name_and_version_0.6.0-Carbon=145
repositories.item.59=mvn\:org.opendaylight.bgpcep/features-bmp/0.7.0-Carbon/xml/features
features.odl-aaa-authn_split_for_name_and_version_0.5.0-Carbon=88,229,230,266,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,2
93,294,295
repositories.item.58=mvn\:org.opendaylight.iotdm/onem2moic-features/0.3.0-Carbon/xml/features
repositories.item.57=mvn\:org.opendaylight.iotdm/onem2mexample-features/0.3.0-Carbon/xml/features
repositories.item.56=mvn\:org.opendaylight.controller/features-config-persister/0.6.0-Carbon/xml/features
repositories.item.55=mvn\:org.ops4j.pax.web/pax-web-features/3.2.9/xml/features
repositories.item.54=mvn\:org.opendaylight.netconf/features-netconf-connector/1.2.0-Carbon/xml/features
repositories.item.53=mvn\:org.opendaylight.didm/features-didm-ovs/0.4.0-Carbon/xml/features
repositories.item.52=mvn\:org.opendaylight.dluxapps/features-dluxapps/0.5.0-Carbon/xml/features
repositories.item.51=mvn\:org.opendaylight.cardinal/cardinal-features/0.2.0-Carbon/xml/features
repositories.item.50=mvn\:org.opendaylight.iotdm/onem2m-features/0.3.0-Carbon/xml/features
features.odl-triemap-0.2_split_for_name_and_version_1.8.0-Carbon=66
features.odl-mdsal-singleton-dom_split_for_name_and_version_2.2.0-Carbon=160
features.odl-guava-18_split_for_name_and_version_1.8.0-Carbon=65
features.war_split_for_name_and_version_3.0.8=262,263
repositories.item.49=mvn\:org.opendaylight.l2switch/features-l2switch/0.5.0-Carbon/xml/features
repositories.item.48=mvn\:org.opendaylight.didm/features-didm/0.4.0-Carbon/xml/features
repositories.item.47=mvn\:org.opendaylight.openflowplugin/features-openflowplugin/0.4.0-Carbon/xml/features
repositories.item.46=mvn\:org.opendaylight.openflowplugin/features-openflowplugin-extension/0.4.0-Carbon/xml/features
EOL

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre
./bin/start

# mn --test pingall
# mn --topo linear,3 --mac --controller=remote,ip=127.0.0.1,port=6633 --switch ovs,protocols=OpenFlow13
