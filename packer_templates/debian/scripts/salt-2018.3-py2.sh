#!/bin/sh -eux

curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sh bootstrap-salt.sh -X -p git stable 2018.3
