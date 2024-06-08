#!/bin/bash
#実行結果の整数を取得
result=$(./kadai4.sh)

#実行結果が整数値であるかを確認
if [[ $result =~ ^[0-9]+$ ]]; then
	echo "ok"
	exit 0
	#array=("ok") 後で実装できたらやります
else if [[ $result = "error 1" ]]; then
	echo "x < y : ng"
	exit 1
fi

#



