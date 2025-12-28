#>oni:lottery/get
#@execution -> oni:lottery/set


##抽選した要素を別の場所に保存しておく
    $data modify storage temp: result.pool set from storage temp: pool[$(index)]
    data modify storage oni: ability.pool append from storage temp: result.pool
    function oni:game/lottery/ with storage temp: result

##A[B]を削除
$data remove storage temp: pool[$(index)]

    execute if score $Ability Znsi.Temp matches 1.. run scoreboard players remove $Ability Znsi.Temp 1
    execute if score $Ability Znsi.Temp matches 1.. run function oni:game/lottery/pre