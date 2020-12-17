#!/bin/bash/ -x
#set all pos
start () {
	echo welcome to snake and ladder game
	Players=1
	StartPos=0
	PlayerPos=0
	FinalPos=100
}
start


rolldice () {
	Dice=$((RANDOM%6+1))
	echo dice value $Dice
	}
rolldice


CheckOptions () {
while [ $PlayerPos -le $FinalPos ]
do
	Opt=$((RANDOM%3))
	if [ $Opt -eq 0 ]
	then
		echo no play

	elif [ $Opt -eq 1 ]
	then
		((PlayerPos -= $Dice))
		echo snake

	elif [ $Opt -eq 2 ]
	then
		((PlayerPos += $Dice))
		echo Ladder
	fi

	if [ $PlayerPos -lt 0 ]
	then
	PlayerPos=0
	fi
echo Player Pos is $PlayerPos
done
}
rolldice
start
CheckOptions
