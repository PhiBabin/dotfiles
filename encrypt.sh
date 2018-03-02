#!/bin/bash

FILE_TO_ENCRYPT=~/.ssh/config

gpg --symmetric $FILE_TO_ENCRYPT
mv ${FILE_TO_ENCRYPT}.gpg ~/repos/dotfiles/ssh_config.gpg

