#殴られた側
execute if entity @s[predicate=oni:effect/hero_of_the_village] run playsound minecraft:block.anvil.place record @s ~ ~ ~ 1 1.5
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run team join oni @s
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect clear @s
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect give @s unluck 10 1 false
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect give @s blindness 10 1 true
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect give @s jump_boost 10 250 true
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect give @s slowness 10 255 true
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run scoreboard players set @s Znsi.cooltime 15
execute if entity @s[predicate=oni:effect/hero_of_the_village] run tag @s add no_chenge
execute if entity @s[predicate=!oni:effect/hero_of_the_village] run tag @s add ehp
advancement revoke @s only oni:ehp