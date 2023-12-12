#!/bin/bash

# Script Name   : ask-if-using-legacy-system.sh
# Author        : Andrew Jackson
# Creation Date : 12 Dec, 2023
# Description   : This script asks if user is using a legacy system.

printf " **********************************************************************************************************\n"
printf " *                                                                                                        *\n"
printf " * Are you using a legacy system that doesn't support the ( Ed25519 ) algorithm?                          *\n"
printf " *                                                                                                        *\n"
printf " * If you are unsure, enter ( ctrl + c ) to exit the program before proceeding further.                   *\n"
printf " *                                                                                                        *\n"
printf " *  Enter (y/N)                                                                                           *\n"
printf " *                                                                                                        *\n"

read answer

printf " *                                                                                                        *\n"