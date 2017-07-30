

### Run on Vagrant

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R 192.168.50.4

ansible-playbook -K config-cluster.yaml -i test_hosts.ini -u vagrant -e vagrant=true

