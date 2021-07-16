#!/bin/bash

banner () {
    printf "
 ▄▀▀▀▀▄  ▄▀▀▄ ▄▄   ▄▀▀█▄   ▄▀▀▄ █  ▄▀▀▀█▀▀▄  ▄▀▀█▀▄   
█ █   ▐ █  █   ▄▀ ▐ ▄▀ ▀▄ █  █ ▄▀ █    █  ▐ █   █  █  
   ▀▄   ▐  █▄▄▄█    █▄▄▄█ ▐  █▀▄  ▐   █     ▐   █  ▐  
▀▄   █     █   █   ▄▀   █   █   █    █          █     
 █▀▀▀     ▄▀  ▄▀  █   ▄▀  ▄▀   █   ▄▀        ▄▀▀▀▀▀▄  
 ▐       █   █    ▐   ▐   █    ▐  █         █       █ 
         ▐   ▐            ▐       ▐         ▐       ▐           
    "
    echo "Cosmic alias"
}

list () {
    banner
    echo -e "\n\nShortcut\t|\tCommand"
    echo -e "========================================================"
    echo -e "list\t\t-\tList all commands"
    echo -e "add [shotcut] [cmd]-\tAdd or modify existing shortcut"
    echo -e "dell [shortcut]\t-\tDelete shorcut"
    echo -e "info [shortcut]\t-\tGet Shortcut info details"
    awk -F: '{ print $1 "\t\t-\t" $3 }' shakti.db
    echo
    echo
}

add () {
    echo "$1"
    find=`awk -v var="iex" -F: '$1 == var { print $1 }' shakti.db`
    echo "$find"
    
}

case "$1" in 
"list") list;;
"add") find=`awk -v var="$2" -F: '$1 == var { print $1 }' shakti.db`;
    if [ -z "$find" ]
        then
            echo "$2:$3:$4" >> shakti.db
            echo "Shortcut $2 added"
        else
            grep -v "$find" shakti.db > .tmp.db
            mv .tmp.db shakti.db
            echo "$2:$3:$4" >> shakti.db
            echo "Shortcut $2 changed"
    fi;;
"del") grep -ve "^$2:" shakti.db > .tmp.db; mv .tmp.db shakti.db; echo "Shortcut $2 deleted";;
"info") banner; awk -v var="$2" -F: '$1 == var { print "\n\nShortcut :"$1"\nCommand: "$2"\n\nDescription: "$3"\n\n" }' shakti.db;;
    
"aaa") cmd=`awk -F':' '$1 == "iex" { print $3}' shakti.db`;eval echo "$cmd";;
*) cmd=`awk -v var="$1" -F: '$1 == var { print $2 }' shakti.db`;eval $cmd;;
esac

