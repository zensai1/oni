#> 無敵
playsound minecraft:block.anvil.use record @s ~ ~ ~ 1 2.0
effect give @s hero_of_the_village 5 1 false
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 50