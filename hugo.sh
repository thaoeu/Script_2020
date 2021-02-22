#!/usr/bin/env bash
cd ~/Template/Hugo
#mkdir ~/Picture/post/$1
hugo new post/$1.md
nvim ~/Template/Hugo/content/post/$1.md
#cd ~/Template/Hugo
