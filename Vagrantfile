Vagrant.require_version ">= 1.4.3"
VAGRANTFILE_API_VERSION = "2"

BOX='centos/7'

BOX_OPENSTACK='openstack'
BOX_URL_OPENSTACK='https://www.dropbox.com/s/azww4ud3ti910os/openstack.box?dl=1'

CLIENT_NODE='ubuntu/trusty64'



ceph_node1= 'ceph-node1'
ceph_node1_disk2 = './ceph-node1/ceph-node1_disk2.vdi'
ceph_node1_disk3 = './ceph-node1/ceph-node1_disk3.vdi'
ceph_node1_disk4 = './ceph-node1/ceph-node1_disk4.vdi'

ceph_node2= 'ceph-node2'
ceph_node2_disk2 = './ceph-node2/ceph-node2_disk2.vdi'
ceph_node2_disk3 = './ceph-node2/ceph-node2_disk3.vdi'
ceph_node2_disk4 = './ceph-node2/ceph-node2_disk4.vdi'

ceph_node3= 'ceph-node3'
ceph_node3_disk2 = './ceph-node3/ceph-node3_disk2.vdi'
ceph_node3_disk3 = './ceph-node3/ceph-node3_disk3.vdi'
ceph_node3_disk4 = './ceph-node3/ceph-node3_disk4.vdi'

ceph_node4= 'ceph-node4'
ceph_node4_disk2 = './ceph-node4/ceph-node4_disk2.vdi'
ceph_node4_disk3 = './ceph-node4/ceph-node4_disk3.vdi'
ceph_node4_disk4 = './ceph-node4/ceph-node4_disk4.vdi'

os_host= 'os-node1'
client_host= 'client-node1'

rgw_node1_hostname= 'rgw-node1.cephcookbook.com'
rgw_node1_machine_name= 'rgw-node1'

us_east_rgw_hostname= 'us-east-1.cephcookbook.com'
us_east_rgw_machine_name= 'us-east-1'

us_west_rgw_hostname= 'us-west-1.cephcookbook.com'
us_west_rgw_machine_name= 'us-west-1'

oc_hostname= 'owncloud.cephcookbook.com'
oc_name= 'owncloud'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

##################################### Configuration for ceph-node1 #####################################################

config.vm.define :"ceph-node1" do |node1|
    node1.vm.box = BOX
    node1.vm.network :private_network, ip: "192.168.1.101"
    node1.vm.hostname = ceph_node1
    node1.vm.synced_folder ".", "/vagrant", disabled: true
    node1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    node1.vm.provision "shell", path: "post-deploy.sh" ,run: "always"
    node1.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "1300"]
            v.name = ceph_node1
            v.gui = false

            unless File.exist?(ceph_node1_disk2)
            v.customize ['createhd', '--filename', ceph_node1_disk2, '--size', 1 * 20480]
            v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk2]
            end

            unless File.exist?(ceph_node1_disk3)
            v.customize ['createhd', '--filename', ceph_node1_disk3,'--size', 1 * 20480]
            v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk3]
            end

            unless File.exist?(ceph_node1_disk4)
            v.customize ['createhd', '--filename', ceph_node1_disk4,'--size', 1 * 20480]
            v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node1_disk4]
            end

    end

end


##################################### Configuration for ceph-node2 #####################################################

config.vm.define :"ceph-node2" do |node2|
        node2.vm.box = BOX
        node2.vm.network :private_network, ip: "192.168.1.102"
        node2.vm.hostname = ceph_node2
        node2.vm.synced_folder ".", "/vagrant", disabled: true
        node2.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node2.vm.provision "shell", path: "post-deploy.sh",run: "always"
        node2.vm.provider "virtualbox" do |v|

                v.customize ["modifyvm", :id, "--memory", "1024"]
                v.name = ceph_node2
                v.gui = false

                unless File.exist?(ceph_node2_disk2)
                v.customize ['createhd', '--filename', ceph_node2_disk2,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk2]
                end

                unless File.exist?(ceph_node2_disk3)
                v.customize ['createhd', '--filename', ceph_node2_disk3,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk3]
                end

                unless File.exist?(ceph_node2_disk4)
                v.customize ['createhd', '--filename', ceph_node2_disk4,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node2_disk4]
                end

        end

end

##################################### Configuration for ceph-node3 #####################################################

config.vm.define :"ceph-node3" do |node3|
        node3.vm.box = BOX
        node3.vm.network :private_network, ip: "192.168.1.103"
        node3.vm.hostname = ceph_node3
        node3.vm.synced_folder ".", "/vagrant", disabled: true
        node3.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node3.vm.provision "shell", path: "post-deploy.sh",run: "always"
        node3.vm.provider "virtualbox" do |v|

                v.customize ["modifyvm", :id, "--memory", "1024"]
                v.name = ceph_node3
                v.gui = false

                unless File.exist?(ceph_node3_disk2)
                v.customize ['createhd', '--filename', ceph_node3_disk2,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk2]
                end

                unless File.exist?(ceph_node3_disk3)
                v.customize ['createhd', '--filename', ceph_node3_disk3,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk3]
                end

                unless File.exist?(ceph_node3_disk4)
                v.customize ['createhd', '--filename', ceph_node3_disk4,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node3_disk4]
                end

        end

end

##################################### Configuration for ceph-node4 #####################################################

config.vm.define :"ceph-node4" do |node4|
        node4.vm.box = BOX
        node4.vm.network :private_network, ip: "192.168.1.104"
        node4.vm.hostname = ceph_node4
        node4.vm.synced_folder ".", "/vagrant", disabled: true
        node4.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
        node4.vm.provision "shell", path: "post-deploy.sh",run: "always"
        node4.vm.provider "virtualbox" do |v|

                v.customize ["modifyvm", :id, "--memory", "750"]
                v.name = ceph_node4
                v.gui = false

                unless File.exist?(ceph_node4_disk2)
                v.customize ['createhd', '--filename', ceph_node4_disk2,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk2]
                end

                unless File.exist?(ceph_node4_disk3)
                v.customize ['createhd', '--filename', ceph_node4_disk3,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 2, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk3]
                end

                unless File.exist?(ceph_node4_disk4)
                v.customize ['createhd', '--filename', ceph_node4_disk4,'--size', 1 * 20480]
                v.customize ['storageattach', :id,  '--storagectl', 'SATA', '--port', 3, '--device', 0, '--type', 'hdd', '--medium', ceph_node4_disk4]
                end

        end

end

##################################### Configuration for OpenStack node #####################################################

config.vm.define :"openstack-node1" do |os|
    os.vm.box = BOX_OPENSTACK
    os.vm.box_url = BOX_URL_OPENSTACK
    os.vm.network :private_network, ip: "192.168.1.111"
    os.vm.hostname = os_host
    os.vm.synced_folder ".", "/vagrant", disabled: true
    os.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    os.vm.provision "shell", path: "post-deploy.sh",run: "always"
    os.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "4096"]
            v.name = os_host
            v.gui = false

    end
end

##################################### Configuration for client node #####################################################

config.vm.define :"client-node1" do |os|
    os.vm.box = CLIENT_NODE
    os.vm.box_url = BOX_URL_OPENSTACK
    os.vm.network :private_network, ip: "192.168.1.110"
    os.vm.hostname = client_host
    os.vm.synced_folder ".", "/vagrant", disabled: true
    os.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    os.vm.provision "shell", path: "post-deploy.sh"
    os.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = client_host
            v.gui = false

    end
end

##################################### Configuration for rgw-node1 #####################################################

config.vm.define :"rgw-node1" do |rgw|
    rgw.vm.box = BOX
    rgw.vm.network :private_network, ip: "192.168.1.106"
    rgw.vm.hostname = rgw_node1_hostname
    rgw.vm.synced_folder ".", "/vagrant", disabled: true
    rgw.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    rgw.vm.provision "shell", path: "post-deploy.sh",run: "always"
    rgw.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = rgw_node1_machine_name
            v.gui = false

    end
end

##################################### Configuration for us-east-1 Rados Gateway Node #######################################

config.vm.define :"us-east-1" do |use1|
    use1.vm.box = BOX
    use1.vm.network :private_network, ip: "192.168.1.107"
    use1.vm.hostname = us_east_rgw_hostname 
    use1.vm.synced_folder ".", "/vagrant", disabled: true
    use1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    use1.vm.provision "shell", path: "post-deploy.sh",run: "always"
    use1.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = us_east_rgw_machine_name 
            v.gui = false

    end
end

##################################### Configuration for us-west-1 Rados Gateway Node #######################################

config.vm.define :"us-west-1" do |usw1|
    usw1.vm.box = BOX
    usw1.vm.network :private_network, ip: "192.168.1.108"
    usw1.vm.hostname = us_west_rgw_hostname
    usw1.vm.synced_folder ".", "/vagrant", disabled: true
    usw1.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    usw1.vm.provision "shell", path: "post-deploy.sh",run: "always"
    usw1.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = us_west_rgw_machine_name
            v.gui = false

    end
end

##################################### Configuration for owncloud Node #######################################

config.vm.define :"owncloud" do |oc|
    oc.vm.box = BOX
    oc.vm.network :private_network, ip: "192.168.1.120"
    oc.vm.hostname = oc_hostname
    oc.vm.synced_folder ".", "/vagrant", disabled: true
    oc.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"
    oc.vm.provision "shell", path: "post-deploy.sh",run: "always"
    oc.vm.provider "virtualbox" do |v|

            v.customize ["modifyvm", :id, "--memory", "512"]
            v.name = oc_name
            v.gui = false

    end
end
###############################################################################################################
end
