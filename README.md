# SDN lab on Vagrant

This vagrant project pretends to deploy a Software-defined networking
lab using [OpenDaylight][1] as Controller and [Mininet][2] as
Virtualized Infrastructure Manager (VIM). The openDayLight User
eXperience feature is installed during the provisioning script, as
consequence it's possible to visualize the topology thru the following
URL -> http://10.0.0.2:8181/index.html#/topology

## Requirements:

* Vagrant
* VirtualBox

## Steps for execution:

    git clone https://github.com/electrocucaracha/vagrant-sdn-lab.git
    cd vagrant-sdn-lab
    vagrant up

## Destroy:

    vagrant destroy

### Examples

The following example creates a linear topology of 3 connected hosts
and using the ODL deployed locally as remote SDN controller 

    $ sudo mn --topo linear,3 --mac --controller=remote,ip=127.0.0.1,port=6633 --switch ovs,protocols=OpenFlow13
    mininet> pingall

[1]: https://www.opendaylight.org/
[2]: http://mininet.org/
