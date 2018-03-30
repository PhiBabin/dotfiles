#!/bin/bash

mkdir ~/.ssh
gpg --decrypt ~/repos/dotfiles/ssh_config.gpg > ~/.ssh/config

