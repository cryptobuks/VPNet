#!/usr/bin/env bats
#
# VPNet.io - Virtual Private Network Essential Toolbox
#
# https://github.com/acrossfw/vpnet
#
# Unit Test by BATS/TAP
#
source "$ACROSSFW_HOME/vpnet-functions.sh"
vpnet::init_bash ${BASH_SOURCE[0]} # set all the magic
#set +o errexit
#set +o pipefail
set +o nounset # bats need this to run correctly

@test "DNS resolve should be ok" {
  nslookup google.com
}
