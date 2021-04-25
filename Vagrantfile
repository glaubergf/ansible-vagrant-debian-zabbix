## Script a executar ao iniciar VM.
$script = <<-EOF
## Mudar a senha do usuário Vagrant.
#echo 'vagrant:zxc147' | sudo chpasswd
## Atualizar e instalar pacotes no sistema.
apt update
apt install -y tree neofetch python3-pymysql python-apt
EOF

servers=[
	{
	:vm_network => "enp3s0",
	:vm_hostname => "zabbix-server",
  :vm_ip => "192.168.0.120",
	:vm_box => "generic/debian10",
	:vm_cpus => 4,
	:vm_mem => 4096,
	},

	{
	:vm_network => "enp3s0",
	:vm_hostname => "node-02",
	:vm_ip => "192.168.0.121",
	:vm_box => "generic/debian10",
	:vm_cpus => 2,
	:vm_mem => 2048,
	},

	{
	:vm_network => "enp3s0",
	:vm_hostname => "node-03",
	:vm_ip => "192.168.0.122",
	:vm_box => "generic/debian10",
	:vm_cpus => 1,
	:vm_mem => 1024,
	}
]

Vagrant.configure("2") do |config|

  servers.each do |srv|

    config.vm.define srv[:vm_hostname] do |node|

      node.vm.box = srv[:vm_box]
      node.vm.hostname = srv[:vm_hostname]
      node.vm.network "public_network",
        ip: srv[:vm_ip],
        dev: srv[:vm_network]

      node.vm.provider :libvirt do |kvm|
        kvm.cpus = srv[:vm_cpus]
        kvm.memory = srv[:vm_mem]
        kvm.keymap = "pt-br"
        kvm.host = "localhost"
        kvm.uri = "qemu:///system"

      #node.vm.synced_folder ".", "/vagrant", disabled: false

    config.vm.box_check_update = false

    config.ssh.insert_key = true

    #config.ssh.private_key_path = ["~/Vagrant/ProjZabbix/AnsibleDebian/id_rsa-DebianDesktop"]

    config.vm.post_up_message = "BEM-VINDO AO PROJETO ZABBIX!!!"

    #config.vm.provision "shell", inline: $script

    #config.vm.provision "shell", path: "script_basic.sh"

    #config.vm.provision "shell", run: "always", inline: <<-SHELL
    #  echo "Seja bem-vindo ao Vangrant!"
    #SHELL

      end
    end
  end
end
