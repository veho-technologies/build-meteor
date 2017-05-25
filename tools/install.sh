#!/bin/bash

/opt/tools/install-git-crypt.sh
/opt/tools/install-meteor.sh
/opt/tools/install-yarn.sh
/opt/tools/setup-user.sh

# clean up
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
