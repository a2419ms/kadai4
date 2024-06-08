#!/bin/bash
#実行結果を取得
result=$(./kadai4.sh)

#実行結果が整数値であるかを確認
if [[ $result =~ ^[0-9]+$ ]]; then
	echo "ok"
	exit 0
#実行時において、xよりyが大きくないかを確認
elif [[ $result = "error 1" ]]; then
	echo "x < y : ng"
	exit 1
#失敗時について、0以上の整数値であることを確認
elif [[ $result = "error 2" ]]; then
	echo "(x | y) is 0 > ( x | y )"
	exit 2
fi

#



