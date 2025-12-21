#> 天翔
scoreboard players set $strength hb.Motion 25000
execute positioned as @s run playsound minecraft:entity.blaze.shoot record @s ~ ~ ~ 1 1.5
function #p_motion:looking
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 30
scoreboard players reset @s Znsi.usecarrot
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime