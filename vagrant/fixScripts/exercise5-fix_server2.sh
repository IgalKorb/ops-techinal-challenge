#!/bin/bash
#add fix to exercise5-server2 here
sudo apt-get install sshpass
sshpass -f <(printf '%s\n' vagrant) ssh -o "StrictHostKeyChecking=no" 192.168.100.10 'cat /home/vagrant/.ssh/id_rsa.pub' | cat >> /home/vagrant/.ssh/authorized_keys
echo "StrictHostKeyChecking no" > /home/vagrant/.ssh/config
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa
sed 's/root/vagrant/' /home/vagrant/.ssh/id_rsa.pub | sudo tee /home/vagrant/.ssh/id_rsa.pub
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa* /home/vagrant/.ssh/config
