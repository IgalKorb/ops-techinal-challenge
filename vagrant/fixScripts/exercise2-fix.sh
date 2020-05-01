#!/bin/bash
#add fix to exercise2 here
sed '$d' /etc/hosts | sudo tee /etc/hosts
