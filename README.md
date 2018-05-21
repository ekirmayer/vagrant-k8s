# Vagrant K8s Cluster #

This repository contains a small vagrant environment that allows easy testing on K8s cluster.

## Stack ##
- Vagrant
- Docker
- K8s

## default: ##
* 1 master on IP 192.168.19.40
* 2 nodes on IP's 192.168.19.4# (# is the number id of the node)


## How to use ##
Run ```Vagrant up``` and wait for the cluster to start.


## Default values ##
* Machine image - ubuntu/xenial64
* Base Ip - 192.168.19
* CPU - 1
* RAM - 1024MB