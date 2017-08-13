

### Run on Vagrant


vagrant up

./vagrant_ansible.sh

# If vagrant ssh doesn't work

If "WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!", 
remove entries from your known_hosts.

ssh-keygen -f "/home/$USER/.ssh/known_hosts" -R 192.168.50.10
