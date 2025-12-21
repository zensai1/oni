#> 探知
execute if entity @s[team=nige] run effect give @a[distance=..30,team=oni] glowing 20 1 true
execute if entity @s[team=oni] run effect give @a[distance=..60,team=nige] glowing 10 1 true
execute as @a[predicate=oni:effect/invisibility] at @s run effect clear @s glowing
playsound minecraft:block.beacon.activate record @s
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 5
execute if score *** Znsi.gamemode matches 2.. if entity @s[team=nige] if entity @a[distance=..30,team=oni] run scoreboard players set @s Znsi.cooltime 20
execute if score *** Znsi.gamemode matches 2.. if entity @s[team=oni] if entity @a[distance=..50,team=nige] run scoreboard players set @s Znsi.cooltime 20
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime