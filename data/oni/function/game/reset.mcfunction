tag @a remove pre_tp
kill @e[type=marker]
tag @a remove soulless

execute as @a[tag=op] at @s run loot replace entity @s inventory.0 loot oni:gui/plus_magic
execute as @a[tag=op] at @s run loot replace entity @s inventory.1 loot oni:gui/plus_oni
execute as @a[tag=op] at @s run loot replace entity @s inventory.2 loot oni:gui/plus_time

execute as @a[tag=op] at @s run loot replace entity @s inventory.9 loot oni:gui/gui_magic
execute as @a[tag=op] at @s run loot replace entity @s inventory.10 loot oni:gui/gui_oni
execute as @a[tag=op] at @s run loot replace entity @s inventory.11 loot oni:gui/gui_time

execute as @a[tag=op] at @s run loot replace entity @s inventory.8 loot oni:gui/magic_rod
execute as @a[tag=op] at @s run loot replace entity @s inventory.17 loot oni:gui/oni_set
execute as @a[tag=op] at @s run loot replace entity @s inventory.26 loot oni:gui/gamestart

execute as @a[tag=op] at @s run loot replace entity @s inventory.18 loot oni:gui/minus_magic
execute as @a[tag=op] at @s run loot replace entity @s inventory.19 loot oni:gui/minus_oni
execute as @a[tag=op] at @s run loot replace entity @s inventory.20 loot oni:gui/minus_time

scoreboard players set @a Znsi.ability 1
scoreboard players set @a Znsi.cooltime 0
scoreboard players set @a Znsi.tickcooltime 0
scoreboard players set @a Znsi.soullesstimer 0
scoreboard players set @a Znsi.array 0
scoreboard players set *** Znsi.gamemode 1
scoreboard objectives setdisplay sidebar

data modify storage oni: pool set value [0,1,2,3,4,5,6,7,8,9,10]
data modify storage temp: pool set from storage oni: pool
data remove storage temp: result
data modify storage oni: ability.name set value ["天翔","気化","転移","変装","探知","魂抜","抑制","吸引","無敵","飛躍","小人"]
data remove storage oni: ability.pool
data remove storage oni: ability.poolname