#! /bash/bin -x

ran=$((RANDOM % 2 + 1))
   
case $ran in
	1) echo "Heads Wins!" ;;

	2) echo "Tails Wins!" ;;

	*) echo "No one won" ;;
esac

