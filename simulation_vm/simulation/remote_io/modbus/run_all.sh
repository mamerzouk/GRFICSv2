#!/bin/bash
sudo ip addr add 192.168.95.10/24 dev eth0
sudo ip addr add 192.168.95.11/24 dev eth0
sudo ip addr add 192.168.95.12/24 dev eth0
sudo ip addr add 192.168.95.13/24 dev eth0
sudo ip addr add 192.168.95.14/24 dev eth0
sudo ip addr add 192.168.95.15/24 dev eth0
sim_path=/opt/simulation/simulation/remote_io/modbus
sudo pkill python
sudo python $sim_path/feed1.py &
sudo python $sim_path/feed2.py &
sudo python $sim_path/purge.py &
sudo python $sim_path/product.py &
sudo python $sim_path/tank.py &
sudo python $sim_path/analyzer.py &
