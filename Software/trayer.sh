#!/bin/bash
# result=$(ps ax|grep -v grep|grep trayer)
# if [ "$result" == "1" ]; then
# 	eval "trayer --transparent true --expand false --align left --width 20 --SetDockType false --tint 0x66ccff &"
# 
# else
# 	eval "killall trayer"
# fi
killall trayer
if [ $? = 0 ];then
	echo "W kill"
else [ $? != 0 ]
	trayer --transparent flase --expand false --align center --width 60 --height 60 --SetDockType false --tint 0x00 &
fi
