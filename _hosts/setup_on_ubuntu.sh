#!/bin/bash

cp "/etc/hosts" "/etc/hosts_bak"
del "/etc/hosts"
type "/etc/hosts_bak" "~/Github/SETUP-note/_hosts/hosts_for_ubuntu" > "/etc/hosts"