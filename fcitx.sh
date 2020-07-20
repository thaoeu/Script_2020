#!/bin/bash
killall fcitx
if [ $? != 0 ];then
	fcitx &
fi

# result=$(ps ax|grep -v grep|grep fcitx)
# if [ "result" == "" ]; then
# 	echo "fcitx"
# else
# 	eval "killall fcitx"
# fi
