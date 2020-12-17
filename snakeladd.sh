#!/bin/bash/ -x
#set all pos
start () {
echo welcome to snake and ladder game
Players=1
StartPos=0
PlayerPos=0
}
start

rolldice () {
Dice=$((RANDOM%6+1))
echo dice value $Dice
}
rolldice

CheckOptions () {
Opt=$((RANDOM%3))
if [ $Opt -eq 0 ]
then
echo no play
echo your position is $PlayerPos
elif [ $Opt -eq 1 ]
then
(($PlayerPos-$Dice ))
echo snake
echo your position is $PlayerPos
elif [ $Opt -eq 2 ]
then
(($PlayerPos+$Dice))
echo Ladder
echo your position is $PlayerPos
fi
return $PlayerPos
}
rolldice
start
CheckOptions
