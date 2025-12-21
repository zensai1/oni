#> 魂抜1
execute if score 残り時間： Znsi.timer matches 51.. run summon marker ~ ~ ~ {Tags:["Znsi.soulless"]}
execute if score 残り時間： Znsi.timer matches 51.. run playsound minecraft:entity.enderman.teleport record @s ~ ~ ~ 1 1.5
execute if score 残り時間： Znsi.timer matches 51.. run scoreboard players operation @e[type=marker,tag=Znsi.soulless,limit=1,sort=nearest] Znsi.entityid = @s Znsi.id
execute if score 残り時間： Znsi.timer matches 51.. run gamemode spectator @s
execute if score 残り時間： Znsi.timer matches 51.. run tag @s add soulless
execute if score 残り時間： Znsi.timer matches 51.. run forceload add ~ ~
execute if score 残り時間： Znsi.timer matches ..50 run tellraw @s {"text":"[System Error] 残り時間が50秒以下なので使えません","color":"red"}