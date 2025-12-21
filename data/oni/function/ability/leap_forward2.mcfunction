#> 飛躍2
effect clear @s slowness
scoreboard players set $y hb.Motion 50000
function #p_motion:xyz
playsound minecraft:entity.generic.explode record @s
tag @s remove leap
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 30
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime