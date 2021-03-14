#! /bash/bin -x

ran=$((RANDOM % 2 + 1))
   
   case $ran in
      1) echo "Heads Wins!" ;;

      2) echo "Tails Wins!" ;;

      *) echo "No one won" ;;
   esac

heads=0
tails=0

while [ $heads -lt 21 -a $tails -lt 21  ] 
do
	ran=$((RANDOM % 2 + 1))
	
	case $ran in 
		1) ((heads++)) ;;

		2) ((tails++)) ;;

		*) echo "No one won" ;;
	esac
done

echo "Heads wins "$heads" times."
echo "Tails wins "$tails" times."

