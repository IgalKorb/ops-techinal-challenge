#!/bin/bash
#add fix to exercise5-server1 here
echo "StrictHostKeyChecking no" > /home/vagrant/.ssh/config
ssh-keygen -t rsa -f /home/vagrant/.ssh/id_rsa
sed 's/root/vagrant/' /home/vagrant/.ssh/id_rsa.pub | sudo tee /home/vagrant/.ssh/id_rsa.pub
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa* /home/vagrant/.ssh/config
