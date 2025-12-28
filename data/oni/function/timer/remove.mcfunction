#>oni:timer/remove


##減少
    execute if score *** Znsi.Time matches 1.. run scoreboard players remove *** Znsi.Time 1


##反映させる
    execute store result storage oni: Game.Time int 1 run scoreboard players get *** Znsi.Time
    function oni:timer/ with storage oni: Game


##1秒以上だったら再帰
    execute if score *** Znsi.Time matches 1.. run schedule function oni:timer/remove 1s


##0秒
    execute if score *** Znsi.Time matches 0 run schedule function oni:game/finish 1s
