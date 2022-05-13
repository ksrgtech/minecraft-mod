#!/bin/bash

file="$1"
gpg --encrypt --armor --recipient marine@oci.ksrgte.ch "$file"
