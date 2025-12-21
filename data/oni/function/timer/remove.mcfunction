#>oni:timer/remove


##残り時間を減らす
    scoreboard players remove 残り時間： Znsi.timer 1


##残り時間を取得する
    execute store result storage oni: info.timer int 1.0 run scoreboard players get 残り時間： Znsi.timer


##情報更新
    function oni:timer/timer with storage oni: info

    
##再帰する
execute if score 残り時間： Znsi.timer matches 0.. run schedule function oni:timer/remove 1s
execute if score 残り時間： Znsi.timer matches 0 run schedule function oni:game/finish 1s
