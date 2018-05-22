# Vagrant K8s Cluster - Nginx Ingress#

This repository contains a small vagrant environment that allows easy testing on K8s cluster. It is deployed directly using kubeadm for practice.
This branch is a playground for using the nginx ingress controller. It is using the documentation
 from  https://github.com/nginxinc/kubernetes-ingress.git
 To update the repository with its submodules:
 ```bash
 git submodule init
 git submodule update
```

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

## NginX Ingress (By NginX) ##
This branch contains a demo for nginx ingress controller behind nginx LB
The proxy machine will start a docker container of nginx with a map to the 2 K8s nodes and serve them using round Robin.

To deploy the ingress follow the steps from the [Ingress manual](kubernetes-ingress/docs/installation.md)

Under tge __container__ folder there is a simple node.js utility that return the name of the container.
If a change is needed, it can be rebuilt and pushed again.


Deploy the demo services by:
1. Follow the full example [here](kubernetes-ingress/examples/complete-example/README.md)
2. Deploy the demo container
```bash
kubectl apply -f nginx.yml
```
