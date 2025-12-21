#> 転移1
execute if entity @s[tag=!pre_tp] run summon marker ~ ~ ~ {Tags:["Znsi.tp"]}
execute if entity @s[tag=!pre_tp] run playsound minecraft:entity.arrow.hit_player record @s ~ ~ ~ 1 1.5
execute if entity @s[tag=!pre_tp] run scoreboard players operation @e[type=marker,tag=Znsi.tp,limit=1,sort=nearest] Znsi.entityid = @s Znsi.id
tag @s add cooltime
execute if score *** Znsi.gamemode matches 2.. run scoreboard players set @s Znsi.cooltime 5
execute if score *** Znsi.gamemode matches 1 run scoreboard players set @s Znsi.cooltime 1
forceload add ~ ~
tellraw @s {"color":"aqua","text":"座標を登録しました"}
execute if entity @s[tag=!pre_tp] run tag @s add pre_tp