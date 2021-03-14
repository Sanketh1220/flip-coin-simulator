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

if [ $heads -ge 21 -a  $tails -ge 21 ]
then
	echo "Tie as both won 21 times."
	while [ $heads -lt $(($tails+2)) -a $tails -lt $(($heads+2))$
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
elif (( $heads >= 21 ))
then
	res=$(( $heads - $tails ))
	echo "Heads wins 21 times and defeated tails by "$res" times."
elif (( $tails >= 21 ))
then
	res=$(( $tails - $heads ))
	echo "Tails wins 21 times and defeated heads by "$res" times."
fi
