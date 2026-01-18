#>oni:timer/remove


##減少
    execute if score *** Znsi.Time matches 1.. run scoreboard players remove *** Znsi.Time 1


##反映させる
    execute store result storage oni: Game.Time int 1 run scoreboard players get *** Znsi.Time
    function oni:timer/ with storage oni: Game


##eraseと同じだったらサイドバー削除
    execute if score *** Znsi.Time = $erase Znsi.Time run scoreboard objectives setdisplay sidebar


##1秒以上だったら再帰
    execute if score *** Znsi.Time matches 1.. run schedule function oni:timer/remove 1s


##0秒
    execute if score *** Znsi.Time matches 0 run schedule function oni:game/finish 1s
