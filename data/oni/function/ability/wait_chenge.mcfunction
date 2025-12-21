playsound minecraft:block.dispenser.dispense record @s
execute if score @s Znsi.ability matches 10.. run scoreboard players set @s Znsi.ability -1
scoreboard players add @s Znsi.ability 1
tag @s remove pre_tp
effect clear @s[tag=leap] slowness
tag @s remove leap
tag @s remove child
attribute @s scale base reset
$kill @e[type=marker,limit=1,scores={Znsi.entityid=$(id)}]
execute if score @s Znsi.ability matches 0 run loot replace entity @s weapon.mainhand loot oni:ability/boost
execute if score @s Znsi.ability matches 1 run loot replace entity @s weapon.mainhand loot oni:ability/invisibility
execute if score @s Znsi.ability matches 2 run loot replace entity @s weapon.mainhand loot oni:ability/teleport
execute if score @s Znsi.ability matches 3 run loot replace entity @s weapon.mainhand loot oni:ability/disguise
execute if score @s Znsi.ability matches 4 run loot replace entity @s weapon.mainhand loot oni:ability/detection
execute if score @s Znsi.ability matches 5 run loot replace entity @s weapon.mainhand loot oni:ability/soulless
execute if score @s Znsi.ability matches 6 run loot replace entity @s weapon.mainhand loot oni:ability/restraint
execute if score @s Znsi.ability matches 7 run loot replace entity @s weapon.mainhand loot oni:ability/suction
execute if score @s Znsi.ability matches 8 run loot replace entity @s weapon.mainhand loot oni:ability/invincible
execute if score @s Znsi.ability matches 9 run loot replace entity @s weapon.mainhand loot oni:ability/leap_forward
execute if score @s Znsi.ability matches 10 run loot replace entity @s weapon.mainhand loot oni:ability/child
scoreboard players reset @s Znsi.dropstick