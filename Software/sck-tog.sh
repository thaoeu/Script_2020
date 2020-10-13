#!/bin/bash

result=$(ps ax|grep -v grep|grep screenkey)
if [ "$result" == "" ]; then
	#  eval "screenkey --bg-color white --font-color black &"
	eval "screenkey"
else
	eval "killall screenkey"
fi
