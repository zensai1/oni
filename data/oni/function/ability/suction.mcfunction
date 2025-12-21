#> 吸引
playsound minecraft:entity.breeze.idle_ground record @s
tag @a[distance=..30] add suction
tag @s remove suction
execute as @a[tag=suction] at @s run playsound minecraft:entity.breeze.idle_ground record @s
execute if entity @s[team=oni] run tp @a[tag=suction,team=nige] @s
execute if entity @s[team=oni] run effect give @s unluck 1 1 false
execute if entity @s[team=oni] run scoreboard players add @a[tag=suction] Znsi.cooltime 5
execute if entity @s[team=nige] run tp @a[tag=suction,team=oni] @s
execute if entity @s[team=nige] run effect give @a[tag=suction] blindness 6 1 false
execute if entity @s[team=nige] run effect give @a[tag=suction] jump_boost 6 250 true
execute if entity @s[team=nige] run effect give @a[tag=suction] slowness 6 255 true
execute if entity @s[team=nige] run effect give @a[tag=suction] unluck 6 1 false
tag @a remove suction
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 50
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime