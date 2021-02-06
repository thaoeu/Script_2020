#!/bin/sh

# 监视的目录。
filename=$1

# 监视发现更改执行的脚本。
script=$2

inotifywait -mrq --format '%e' --event create,delete,modify  $filename | while read event
  do
      case $event in MODIFY|CREATE|DELETE) bash $script ;;
      esac
  done
