#! /bash/bin -x

ran=$((RANDOM % 2 + 1))
   
case $ran in
	2) echo "Tails Wins!" ;;

	1) echo "Heads Wins!" ;;

	*) echo "No one won" ;;
esac

