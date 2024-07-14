#!/bin/bash

cp "/etc/hosts" "/etc/hosts_bak"
rm "/etc/hosts"
cat "/etc/hosts_bak" "~/Github/SETUP-note/_hosts/hosts_for_ubuntu" | sudo tee -a /etc/hosts