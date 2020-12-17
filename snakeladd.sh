#!/bin/bash/ -x
#set all pos
start () {
echo welcome to snake and ladder game
Players=1
StartPos=0
}
start

rolldice () {
dice=$((RANDOM%6+1))
echo dice value $dice
}
rolldice

