#> 変装
execute if entity @s[team=nige] run loot replace entity @s armor.head loot oni:disguise_oni
execute if entity @s[team=oni] run item replace entity @s armor.head with air
effect give @s luck 20 1 true
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 30