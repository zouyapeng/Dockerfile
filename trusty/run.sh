#!/bin/bash

if [ $# == 1 ];then
    echo $1
elif [ $# == 2 ];then
    echo $2
elif [ $# == 3 ];then
    echo $3
else
    echo '----'
fi
