scoreboard players set *** Znsi.gamemode 2
effect clear @a
playsound minecraft:entity.arrow.hit_player record @s
scoreboard players operation *** Znsi.temp2 = *** Znsi.ability
execute if score *** Znsi.temp2 matches 1.. run function oni:game/lottery_pre
execute if score *** Znsi.ability matches 1.. run tellraw @a [{"color":"aqua","text":"今回使える魔法は"},{"color":"aqua","interpret":true,"nbt":"ability.poolname[]","storage":"oni:"},"です"]
effect clear @a saturation
effect clear @a weakness
tp @a @s
team join nige @a[team=]
scoreboard players operation 残り時間： Znsi.timer = *** Znsi.time
schedule function oni:timer/remove 1s
scoreboard players set @a Znsi.ability -1
scoreboard players set @a Znsi.array -1
effect give @a[team=oni] blindness 20 1 true
effect give @a[team=oni] jump_boost 20 250 true
effect give @a[team=oni] slowness 20 255 true
effect give @a[team=oni] unluck 20 255 true
scoreboard players set @a[team=oni] Znsi.cooltime 35
scoreboard objectives setdisplay sidebar Znsi.info
gamemode adventure @a
schedule function oni:game/start2 1t