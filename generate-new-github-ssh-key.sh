#!/bin/bash
#
# Script Name   : generate-new-github-ssh-key (Generate New Github SSH-Key)
# Author        : Andrew Jackson
# Creation Date : 5 Oct, 2023
# Description   : This script is used to generate a new SSH-KEY for github.
# Modified 1    : 22 Oct, 2023
#

# FUNCTIONS
about_ssh_key_passphrases(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                        *\n"
    printf "*                                 About SSH key passphrases                                              *\n"
    printf "*                                                                                                        *\n"
    printf "* You can access and write data in repositories on GitHub.com using SSH (Secure Shell Protocol).         *\n"
    printf "* When you connect via SSH, you authenticate using a private key file on your local machine.             *\n"
    printf "* For more information, see \"About SSH:\"                                                                 *\n"
    printf "* https://docs.github.com/en/authentication/connecting-to-github-with-ssh/about-ssh                      *\n"
    printf "*                                                                                                        *\n"
    printf "* When you generate an SSH key, you can add a passphrase to further secure the key.                      *\n"
    printf "* Whenever you use the key, you must enter the passphrase. If your key has a passphrase you don't want   *\n"
    printf "* to enter the passphrase every time you use the key, you can add your key to the SSH agent.             *\n"
    printf "* The SSH agent manages your SSH keys and remembers your passphrase.                                     *\n"
    printf "*                                                                                                        *\n"
    printf "* If you don't already have an SSH key, you must generate a new SSH key to use for authentication.       *\n"
    printf "* If you're unsure whether you already have an SSH key, you can check for existing keys.                 *\n"
    printf "* For more information, see \"Checking for existing SSH keys.\"                                            *\n"
    printf "* https://docs.github.com/en/authentication/connecting-to-github-with-ssh/checking-for-existing-ssh-keys *\n"
    printf "*                                                                                                        *\n"
    printf "* If you want to use a hardware security key to authenticate to GitHub, you must generate a new          *\n"
    printf "* SSH key for your hardware security key. You must connect your hardware security key to your            *\n"
    printf "* computer when you authenticate with the key pair.                                                      *\n"
    printf "* For more information, see the \"OpenSSH 8.2 release notes\". https://www.openssh.com/txt/release-8.2     *\n"
    printf "*                                                                                                        *\n"
    printf "**********************************************************************************************************\n"
}
generating_a_new_ssh_key_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                        *\n"
    printf "* You can generate a new SSK key on your local machine. After you generate the key, you can add the      *\n"
    printf "* public key to your account on Github.com to enable authentication for Git operations over SSH.         *\n"
    printf "*                                                                                                        *\n"
    printf "**********************************************************************************************************\n"
}
generating_a_new_ssh_key_notice_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                  *\n"
    printf "*                                 NOTICE                                                           *\n"
    printf "*                                                                                                  *\n"
    printf "* Note: GitHub improved security by dropping older, insecure key types on March 15, 2022.          *\n"
    printf "*                                                                                                  *\n"
    printf "* As of that date, DSA keys( ssh-dss ) are no longer supported. You cannot add new                 *\n"
    printf "* DSA keys to your personal account on GitHub.com.                                                 *\n"
    printf "*                                                                                                  *\n"
    printf "* RSA keys( ssh-rsa ) with a valid_after before November 2, 2021 may continue to use any           *\n"
    printf "* signature algorithm. RSA keys generated after that date must use a SHA-2 signature algorithm.    *\n"
    printf "* Some older clients may need to be upgraded in order to use SHA-2 signatures.                     *\n"
    printf "*                                                                                                  *\n"
    printf "**********************************************************************************************************\n"
}
key_agent_notice_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                  *\n"
    printf "*                                 NOTICE                                                           *\n"
    printf "*                                                                                                  *\n"
    printf "* When you're prompted to \"Enter a file in which to save the key\", you can press Enter to accept *\n"
    printf "* the default file location. Please note that if you created SSH keys previously, ssh-keygen may   *\n"
    printf "* ask you to rewrite another key, in which case we recommend creating a custom-named SSH key.      *\n"
    printf "* To do so, type the default file location and replace id_ssh_keyname with your custom key name.   *\n"
    printf "*                                                                                                  *\n"
    printf "* > Enter a file in which to save the key (/home/YOU/.ssh/ALGORITHM\):[Press enter]                 *\n"
    printf "*                                                                                                  *\n"
    printf "**********************************************************************************************************\n"
}
intro_to_script_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                  *\n"
    printf "* Description: This script is used to generate a new Github SSH-Key.                               *\n"
    printf "*                                                                                                  *\n"
    printf "**********************************************************************************************************\n"
}
ask_if_using_legacy_system_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                  *\n"
    printf "* Are you using a legacy system that doesn't support the ( Ed25519 ) algorithm?                    *\n"
    printf "*                                                                                                  *\n"
    printf "* If you are unsure exit the program before proceeding further.                                    *\n"
    printf "*                                                                                                  *\n"
    printf "*  Enter (y/N)                                                                                     *\n"
    printf "                                                                                                    \n"
    
    read answer

    printf "                                                                                                    \n"
}
ask_for_email_prompt(){
    printf "**********************************************************************************************************\n"
    printf "*                                                                                                  *\n"
    printf "* Enter your GitHub email address.                                                                 *\n"
    printf "*                                                                                                  *\n"
    printf "* Example: example.email4@example.com                                                              *\n"
    printf "*                                                                                                  *\n"
    printf "**********************************************************************************************************\n"
    printf "                                                                       \n"

    read email

    printf "                                                                       \n"
}

# # Intro to script
about_ssh_key_passphrases
# generating_a_new_ssh_key_prompt
# generating_a_new_ssh_key_notice_prompt
# intro_to_script_prompt
# ask_if_using_legacy_system_prompt
# if [ $answer == "N" ];
# then
#     ask_for_email_prompt
#     key_agent_prompt
#     # ssh-keygen -t ed25519 -C "$email"
# else
#     ask_for_email_prompt
#     key_agent_prompt
#     # ssh-keygen -t rsa -b 4096 -C "$email"
# fi

# # printf "* Enter the package manager you use.           * \n"
# # read pm

