#! /bin/bash
iwl=iwlwifi
mvm=iwlmvm
dvm=iwldvm

modprobe -r $mvm && modprobe -r $iwl
echo "removed $iwl and $mvm"
echo "reloading into kernel"
modprobe $mvm && modprobe $iwl
echo "reloaded $iwl and $mvm"
