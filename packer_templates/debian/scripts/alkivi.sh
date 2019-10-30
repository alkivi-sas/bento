#!/bin/sh -eux

# Delete apache2
apt-get -y remove --purge apache2 apache2-bin apache2-data

# Delete exim
apt-get -y remove --purge exim4
