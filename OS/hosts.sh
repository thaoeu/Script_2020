#!/bin/bash
sudo tee /etc/hosts <<< "# Host addresses
127.0.0.1  localhost
192.168.2.1 the
127.0.1.1  Thao
::1        localhost ip6-localhost ip6-loopback
ff02::1    ip6-allnodes
ff02::2    ip6-allrouters

# Github Hosts
# update: 2020-06-10

140.82.113.3 github.com
140.82.113.3 github.global.ssl.fastly.net
140.82.113.3 nodeload.github.com
140.82.113.3 api.github.com
140.82.113.3 training.github.com
140.82.113.3 codeload.github.com

185.199.108.153 assets-cdn.github.com
185.199.108.153 documentcloud.github.com
185.199.108.153 help.github.com
185.199.108.153 githubstatus.com

199.232.68.133 raw.github.com
199.232.68.133 cloud.githubusercontent.com
199.232.68.133 gist.githubusercontent.com
199.232.68.133 marketplace-screenshots.githubusercontent.com
199.232.68.133 raw.githubusercontent.com
199.232.68.133 repository-images.githubusercontent.com
199.232.68.133 user-images.githubusercontent.com
199.232.68.133 desktop.githubusercontent.com

199.232.68.133 avatars0.githubusercontent.com
199.232.68.133 avatars1.githubusercontent.com
199.232.68.133 avatars2.githubusercontent.com
199.232.68.133 avatars3.githubusercontent.com
199.232.68.133 avatars4.githubusercontent.com
199.232.68.133 avatars5.githubusercontent.com
199.232.68.133 avatars6.githubusercontent.com
199.232.68.133 avatars7.githubusercontent.com
199.232.68.133 avatars8.githubusercontent.com"
