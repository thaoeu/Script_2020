result=$(ps ax|grep -v grep|grep trayer)
if [ "$result" == "1" ]; then
	eval "trayer --transparent true --expand false --align left --width 20 --SetDockType false --tint 0x66ccff &"
else
	eval "killall trayer"
fi
