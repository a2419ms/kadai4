#!/bin/bash

#echo "任意の自然数xを入力してください"
#read x
#echo "任意の自然数yを入力してください。1つ目より小さい数字にしてください"
#read y
x=600
y=120
if [ $y -ge $x ] && [ $x -ge 0 ] ; then
        echo "error 1"
                exit 1
	elif [ 0 -ge $x ] || [ 0 -ge $y ]; then
		echo "error 2"
		exit 2
else
        #echo "x > y check ok"
        #echo $x "," $y
        #ここから計算
        a=$x
        b=$y
        mod=$(($x%$y))
        #echo $mod
        while :
                do
                        r=$(($a%$b))
                        if [ $r -eq 0 ]; then
                                break
                else
			:
			#計算中はなにもしない
                        #echo "現在の余り: " $mod
                        fi
                a=$b
                b=$r
        done
                echo $b
		exit 0
                #echo "x:"$x "," "y:"$y ",""G.C.D." $b
fi
