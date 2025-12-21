execute if score *** Znsi.temp matches ..0 run clear @s leather_helmet
execute if score *** Znsi.temp matches ..0 run loot replace entity @s inventory.17 loot oni:gui/oni_set
execute if score *** Znsi.temp matches ..0 run playsound minecraft:entity.arrow.hit_player record @s
execute if score *** Znsi.temp matches ..0 run team empty oni
execute if score *** Znsi.temp matches ..0 run scoreboard players operation *** Znsi.temp = *** Znsi.oni
execute if score *** Znsi.temp matches 1.. run team join oni @r[team=!oni]
execute if score *** Znsi.temp matches 1.. run scoreboard players remove *** Znsi.temp 1
function oni:game/oni_set2