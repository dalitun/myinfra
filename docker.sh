#!/bin/bash
docker run -ti -v "$(pwd)":/tmp --workdir="/tmp" ansible/centos7-ansible ansible-playbook deploy_nodes.yml
docker run -ti -v "$(pwd)":/tmp --workdir="/tmp" williamyeh/ansible:centos7 bash
