#!/bin/bash

# Script Name   : generating_a_new_ssh_key_notice_prompt.sh
# Author        : Andrew Jackson
# Creation Date : 12 Dec, 2023
# Description   : This script holds a Notice about Generating a New SSH Key .

printf " **********************************************************************************************************\n"
printf " *                                                                                                        *\n"
printf " *                                              NOTICE                                                    *\n"
printf " *                                                                                                        *\n"
printf " *      Note: GitHub improved security by dropping older, insecure key types on March 15, 2022.           *\n"
printf " *                                                                                                        *\n"
printf " *      As of that date, DSA keys( ssh-dss ) are no longer supported. You cannot add new                  *\n"
printf " *      DSA keys to your personal account on GitHub.com.                                                  *\n"
printf " *                                                                                                        *\n"
printf " *      RSA keys( ssh-rsa ) with a valid_after before November 2, 2021 may continue to use any            *\n"
printf " *      signature algorithm. RSA keys generated after that date must use a SHA-2 signature algorithm.     *\n"
printf " *      Some older clients may need to be upgraded in order to use SHA-2 signatures.                      *\n"
printf " *                                                                                                        *\n"