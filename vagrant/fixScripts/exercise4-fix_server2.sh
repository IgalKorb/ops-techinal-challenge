#!/bin/bash
#add fix to exercise4-server2 here
sed '3i192.168.100.10 server1' /etc/hosts | sudo tee /etc/hosts
