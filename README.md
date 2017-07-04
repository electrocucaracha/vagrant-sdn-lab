# Software-Defined Networking Lab on Vagrant

This vagrant project pretends to deploy a SDN lab using [OpenDaylight][1]
as Controller and [Mininet][2] as Virtualized Infrastructure Manager (VIM).
The openDayLight User eXperience feature is installed during the
provisioning script, as consequence it's possible to visualize the topology
thru the following URL -> http://10.0.0.2:8181/index.html#/topology

## Requirements:

* Vagrant
* VirtualBox

## Steps for execution:

    $ git clone https://github.com/electrocucaracha/vagrant-sdn-lab.git
    $ cd vagrant-sdn-lab
    $ vagrant up

## Destroy:

    $ vagrant destroy

### Examples

The ~/topologies folder contains python scripts to create custom topologies.
For example, the following command uses the example01.py file to create a
linear topology of 2 connected hosts and uses the ODL deployed locally as
remote SDN controller.

    $ sudo mn --custom ~/topologies/example01.py --topo mytopo --controller=remote,ip=127.0.0.1,port=6633
    mininet> pingall

[1]: https://www.opendaylight.org/
[2]: http://mininet.org/
