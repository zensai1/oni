playsound minecraft:block.dispenser.dispense record @s
scoreboard players add @s Znsi.array 1
execute if score @s Znsi.array = *** Znsi.ability run scoreboard players set @s Znsi.ability -1
execute if score @s Znsi.array >= *** Znsi.ability run scoreboard players set @s Znsi.array 0

execute store result storage oni: ability.leagth int 1.0 run scoreboard players get @s Znsi.array
function oni:ability/chenge2 with storage oni: ability

tag @s remove pre_tp
effect clear @s[tag=leap] slowness
tag @s remove leap
tag @s remove child
attribute @s scale base set 1.0
$kill @e[type=marker,limit=1,scores={Znsi.entityid=$(id)}]
scoreboard players reset @s Znsi.dropstick