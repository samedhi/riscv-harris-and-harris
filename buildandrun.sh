#!/bin/bash

# Set the shell to exit immediately if any command fails
set -e

# Set the shell to exit immediately if any variable is not set
set -u

# Set the shell to print commands before executing them
# set -x

# Set the IFS (Internal Field Separator) to a safe value
IFS=$'\n\t'

# Set the umask to a safe value
umask 022

# Set the PATH to a safe value
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Set the shell to use a safe locale
LC_ALL=C

iverilog -g2012 -o processor top.sv && vvp -N processor
