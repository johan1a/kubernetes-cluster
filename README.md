

### Run on Vagrant


vagrant up

ansible-playbook -K config-cluster.yaml -i test_hosts.ini -u vagrant

# If vagrant ssh doesn't work

If "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!", 
remove entries from your known_hosts.

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R 192.168.50.10
