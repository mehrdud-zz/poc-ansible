Vagrant.configure("2") do |config|
	config.vm.define "control" do  |ctl|
		ctl.vm.box = "ubuntu/trusty64"
		ctl.vm.hostname = "control"
		ctl.vm.network "private_network", ip: "10.0.0.2"
		ctl.vm.provider: azure do |azure, override|
			vb.memory = 1024
		end
   	    ctl.vm.provision "shell", path: "Setup.bash"
	end
	
	config.vm.define "DarkCocoaAPP01" do |web01| 
		web01.vm.box = "jptoto/Windows2012R2"
		web01.vm.hostname = "DarkCocoaAPP01"
		web01.vm.communicator = "winrm"
		web01.winrm.username = "vagrant"
		web01.winrm.password = "vagrant"
		web01.vm.network "private_network", ip: "10.0.0.3"		
		web01.vm.provider "virtualbox" do |vb|
			vb.memory = 1024 
			vb.gui = false
		end
		web01.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
	end
	
	config.vm.define "DarkCocoaAPP02" do |web02|
		web02.vm.box = "jptoto/Windows2012R2"
		web02.vm.hostname = "DarkCocoaAPP02"
		web02.vm.communicator = "winrm"
		web02.winrm.username = "vagrant"
		web02.winrm.password = "vagrant"
		web02.vm.network "private_network", ip: "10.0.0.4"
		web02.vm.provider "virtualbox" do |vb|
			vb.memory = 1024 
			vb.gui = false
		end
		web02.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
	end	
	
    config.vm.define "DarkCocoaAPI01" do |api01|
		api01.vm.box = "jptoto/Windows2012R2"
		api01.vm.hostname = "DarkCocoaAPI01"
		api01.vm.communicator = "winrm"
		api01.winrm.username = "vagrant"
		api01.winrm.password = "vagrant"
		api01.vm.network "private_network", ip: "10.0.0.5"
		api01.vm.provider "virtualbox" do |vb|
			vb.memory = 1024 
			vb.gui = false
		end
		api01.vm.provision "shell", path: "ConfigureRemotingForAnsible.ps1"
	end		
end
