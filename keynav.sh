#!/bin/bash
killall keynav
if [ $? = 0 ];then
	echo "was kill"
else [ $? != 0 ]
	keynav &
fi

# count=`ps -ef | grep keynav | wc -l`
# if [ $count -ne 0 ]
# then
# 	eval "keynav &"
# else
# 	eval "killall keynav"
# fi
