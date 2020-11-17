#!/bin/sh -eux

curl -o bootstrap-salt.sh -L https://bootstrap.saltstack.com
sh bootstrap-salt.sh -X -p git -x python3 stable 3000
