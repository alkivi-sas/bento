#!/bin/sh

for i in 3002; do 
    for j in 9 10; do 
        echo "packer build -only=virtualbox-iso -var 'box_basename=debian-$j-salt-$i-py3' -var 'salt_version=$i' -var 'salt_python_version=py3' debian-$j-amd64-salt.json"; 
    done ; 
done;
