#!/bin/bash

file="$1"
gpg --encrypt --armor --recipient ragi-v1@oci.ksrgte.ch "$file"
