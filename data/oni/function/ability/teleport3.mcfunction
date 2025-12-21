#> 転移3
$tp @s @e[type=marker,scores={Znsi.entityid=$(id)},tag=Znsi.tp,limit=1]
execute positioned as @s run playsound minecraft:block.respawn_anchor.deplete record @s
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 60
execute if score *** Znsi.gamemode matches 2.. run tag @s add cooltime
$execute as @e[type=marker,scores={Znsi.entityid=$(id)},tag=Znsi.tp,limit=1] at @s run forceload remove ~ ~
$kill @e[type=marker,scores={Znsi.entityid=$(id)},tag=Znsi.tp]
tag @s remove pre_tp
effect give @s glowing 10 1 true