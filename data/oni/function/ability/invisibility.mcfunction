#> 気化
playsound minecraft:entity.generic.extinguish_fire record @s
effect clear @s glowing
effect give @s invisibility 10 0 true
item replace entity @s armor.head with air
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 30
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime
scoreboard players reset @s Znsi.usecarrot