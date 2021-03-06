#!/bin/bash
###########################################################################################
# Stormtrooper Project 
# MIT License - https://github.com/deltadan/stormtrooper
# Copyright (c) 2018 Dan Patrick - @deltadan
#
#Script Purpose
# - Run this script from anywhere that has access to the internet and will build a LAMP
#   in Azure.
# - To call remotely use curl -s https://raw.githubusercontent.com/deltadan/stormtrooper/master/lamp/lampstack.azcli | bash -s
#   from Bash (you will be prompted to paste a code into a URL to authenicate your CLI)
###########################################################################################
az login
build_lamp () {
curl -s https://raw.githubusercontent.com/deltadan/stormtrooper/master/lamp/lampnetwork.azcli | bash -s
curl -s https://raw.githubusercontent.com/deltadan/stormtrooper/master/lamp/lampcompute.azcli | bash -s
}
build_lamp