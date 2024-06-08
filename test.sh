#!/bin/bash
#実行結果の整数を取得
result=$(./kadai4.sh)
if [[ $result =~ ^[0-9]+$ ]]; then
	echo "ok"
	exit 0
else
	echo "ng"
	exit 1
fi

