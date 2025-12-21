#殴った側
execute if entity @a[tag=ehp] run effect clear @s saturation
execute if entity @a[tag=ehp] run team join nige @s
execute if entity @a[tag=ehp] run scoreboard players set @s Znsi.cooltime 0
execute if entity @a[tag=ehp] run effect give @s speed 10 3 true
execute if entity @a[tag=ehp] run effect give @s hero_of_the_village 10 1 false
execute if entity @a[tag=ehp] run tellraw @a [{"color":"green","text":"[Announce] 鬼が"},{"color":"green","selector":"@s"},"から",{"color":"green","selector":"@a[tag=ehp]"},"に変わりました"]

execute if entity @a[tag=no_chenge] run playsound minecraft:block.anvil.place record @s ~ ~ ~ 1 1.5

advancement revoke @s only oni:phe
tag @a remove ehp
tag @a remove no_chenge