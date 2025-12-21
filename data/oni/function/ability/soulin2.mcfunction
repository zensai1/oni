#> 魂抜3
$tp @s @e[type=marker,scores={Znsi.entityid=$(id)},limit=1] 
execute positioned as @s run playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1 0.5
gamemode adventure @s
tag @s remove soulless
$kill @e[type=marker,scores={Znsi.entityid=$(id)},limit=1] 
scoreboard players reset @s Znsi.soullesstimer
forceload remove ~ ~
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 30