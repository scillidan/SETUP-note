#!/bin/bash

cp "/etc/hosts" "/etc/hosts_temp"
rm "/etc/hosts"
cat "/etc/hosts_temp" "~/Github/SETUP-note/_hosts/hosts_for_ubuntu" | sudo tee -a /etc/hosts