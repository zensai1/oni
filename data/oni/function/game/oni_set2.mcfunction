execute if score *** Znsi.temp matches 1.. run team join oni @r[team=!oni]
execute if score *** Znsi.temp matches 1.. run scoreboard players remove *** Znsi.temp 1
execute if score *** Znsi.temp matches 1.. run function oni:game/oni_set2
execute if score *** Znsi.temp matches ..0 run tellraw @a [{"color":"green","text":"[Announce]　今回の鬼は"},{"color":"green","selector":"@a[team=oni]"},"です"]