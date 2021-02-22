#!/usr/bin/env bash
cd ~/Template/thaoeu
mkdir ~/Picture/posts/$1
hugo new posts/$1.md
nvim ~/Template/thaoeu/content/posts/$1.md
