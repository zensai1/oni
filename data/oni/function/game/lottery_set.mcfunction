#引数用のストレージを設定
data modify storage temp: args set value {}

#Aの要素数を取得
$execute store result storage temp: args.index int 1 run random value 0..$(length)

#Bの値を元に要素の取り出し、削除
function oni:game/lottery_get with storage temp: args