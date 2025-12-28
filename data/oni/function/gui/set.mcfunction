#>oni:gui/set


##鬼を選出
    team join oni @r[team=]


##score
    scoreboard players remove $TEMP Znsi.Setting 1


##分岐処理  
    execute if score $TEMP Znsi.Setting matches 0 run tellraw @a [{"color":"green","text":"[Announce]　今回の鬼は"},{"color":"green","selector":"@a[team=oni]"},"です"]
    execute if score $TEMP Znsi.Setting matches 1.. run function oni:gui/set