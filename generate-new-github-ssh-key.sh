#!/bin/bash
#
# Script Name   : generate-new-github-ssh-key (Generate New Github SSH-Key)
# Author        : Andrew Jackson
# Creation Date : 5 Oct, 2023
# Description   : This script is used to generate a new SSH-KEY for github.
# Modified 1    : 22 Oct, 2023
# Modified 2    : 08 Nov, 2023
# Modified 3    : 12 Dec, 2023

# Start of Script with files in order.
. Prompts/about-ssh-key-passphrases.sh       # 1st
. Prompts/generating-a-new-ssh-key.sh        # 2nd
. Prompts/generating-a-new-ssh-key-notice.sh # 3rd
. Prompts/description.sh                     # 4th
. Asks/ask-for-email.sh                      # 5th
. Prompts/key-agent-notice.sh                # 6th
. Asks/ask-if-using-legacy-system.sh         # 7th

if [ $answer == "n" || $answer == "N" ]; 
then 
    . Prompts/secure-passphrase-notice.sh        # 8th
    echo "Generating SSH Key now."
    ssh-keygen -t ed25519 -C "$email"

elif [ $answer == "y" || $answer = "Y" ];
then
    echo "Generating SSH Key now."
    ssh-keygen -t rsa -b 4096 -C "$email"
else
    echo "Something went wrong. Exiting Program."
fi