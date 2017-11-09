sudo apt-get -y update
sudo apt-get -y install python-pip 
sudo apt-get -y install python-dev 
sudo apt-get -y install build-essential
sudo apt-get -y install libffi-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install tree
sudo pip install markupsafe
sudo pip install xmltodict
sudo pip install pywinrm
sudo pip install paramiko 
sudo pip install PyYAML 
sudo pip install Jinja2 
sudo pip install httplib2 
sudo pip install six  
sudo pip install ansible
sudo apt-get update -y
sudo pip install ansible --upgrade


sudo mkdir /media/windows-share
sudo mount -t vboxsf Vagrant /media/windows-share

sudo mkdir DarkCocoa
sudo cp -a /media/windows-share/Ansible/* DarkCocoa/
