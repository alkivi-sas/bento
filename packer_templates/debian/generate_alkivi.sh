#!/bin/sh

for i in 3002.1; do 
    for j in 10.6; do 
        echo "packer build -only=virtualbox-iso -var 'box_basename=debian-$j-salt-$i-py3' -var 'salt_version=$i' -var 'salt_python_version=py3' debian-$j-amd64-salt.json"; 
    done ; 
done;
