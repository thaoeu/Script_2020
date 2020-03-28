#!/bin/bash
count=`ps -ef | grep keynav | wc -l`
if [ $count -ne 0 ]
then
	eval "keynav &"
else
	eval "killall keynav"
fi
