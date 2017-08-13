#!/bin/bash

ansible-playbook -K config-cluster.yaml -i inventory/test/hosts.ini -u vagrant

