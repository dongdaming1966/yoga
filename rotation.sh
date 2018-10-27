case $1 in
	0 | normal)
		xrandr -o 0
		xinput set-prop 10 'Coordinate Transformation Matrix' 1 0 0 0 1 0 0 0 1
		;;
	1| left)
		xrandr -o 1
		xinput set-prop 10 'Coordinate Transformation Matrix' 0 -1 1 1 0 0 0 0 1
		;;
	2 | invert)
		xrandr -o 2
		xinput set-prop 10 'Coordinate Transformation Matrix' -1 0 1 0 -1 1 0 0 1
		;;
	3 | right)
		xrandr -o 3
		xinput set-prop 10 'Coordinate Transformation Matrix' 0 1 0 -1 0 1 0 0 1
		;;
	*)
		echo 'help'
		;;
esac
