execute "curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -"
#add the correct repo
execute'Execute a shell' do
  command 'cat <<EOF >/etc/apt/sources.list.d/kubernetes.list
deb http://apt.kubernetes.io/ kubernetes-xenial main
EOF'
end
execute "apt -y remove docker docker-engine docker.io"
execute "apt -y update"
execute "apt -y upgrade"

#execute "apt install -y docker.io"
execute "apt install -y apt-transport-https ca-certificates curl software-properties-common"
execute "curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -"
execute " add-apt-repository \\
        \"deb [arch=amd64] https://download.docker.com/linux/ubuntu \\
   $(lsb_release -cs) \\
   stable\""
execute "apt -y update"
execute "apt -y install docker-ce"
execute "usermod -aG docker vagrant"
execute "systemctl enable docker"

execute "apt install -y kubelet kubeadm kubectl"