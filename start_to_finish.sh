#!/usr/bin/env bash
set -o errexit
PLYBK=( $(ls -1 j163.*yaml) )
for itm in ${PLYBK[*]}
  do
    printf '\n%s %s  %s\n' '>>>j163' "$(date -R)" "$itm"
    ls -l $itm
    time  ansible-playbook --inventory inventory.yaml "$itm"
    printf '\n%s %s  %s\n' '<<<j163' "$(date -R)" "$itm"
  done
set +o errexit