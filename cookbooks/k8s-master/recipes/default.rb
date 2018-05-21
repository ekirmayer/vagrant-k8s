execute "kubeadm init --pod-network-cidr=10.244.0.0/16 --apiserver-advertise-address=192.168.19.40 --token=r8g5uq.afporszs987ticbe"

# copy the join token and keep it
execute "mkdir -p /home/vagrant/.kube"
execute "cp -i /etc/kubernetes/admin.conf /home/vagrant/.kube/config"
execute "chown vagrant:vagrant /home/vagrant/.kube/config"

#Start CNI
#copy the join token and keep it
execute "mkdir -p $HOME/.kube"
execute "cp -i /etc/kubernetes/admin.conf $HOME/.kube/config"
execute "chown $(id -u):$(id -g) $HOME/.kube/config"
execute "kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml"

# remove taint node-role.kubernetes.io/master:NoSchedule
#execute "kubectl taint node base-dev node-role.kubernetes.io/master-"