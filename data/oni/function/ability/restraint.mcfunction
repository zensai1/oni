#> 抑制
playsound minecraft:block.chain.break record @s
tag @s add no_resraint
execute if entity @s[team=nige] run scoreboard players add @a[distance=..30,team=oni] Znsi.cooltime 20
execute if entity @s[team=oni] run scoreboard players add @a[distance=..30,team=nige] Znsi.cooltime 20
execute if entity @s[team=nige] run tag @a[distance=..30,team=oni] add resraint
execute if entity @s[team=oni] run tag @a[distance=..30,team=nige] add resraint
tag @s remove no_resraint
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 40
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime