#> 小人2
attribute @s scale base reset
playsound minecraft:entity.puffer_fish.blow_up record @s
tag @s remove child
effect give @s slowness 10 10 true
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 40
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime