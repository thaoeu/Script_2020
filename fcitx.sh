#!/bin/bash
killall fcitx
if [ $? = 0 ];then
	echo "was kill"
else [ $? != 0 ]
	fcitx &
fi

# result=$(ps ax|grep -v grep|grep fcitx)
# if [ "result" == "" ]; then
# 	echo "fcitx"
# else
# 	eval "killall fcitx"
# fi
