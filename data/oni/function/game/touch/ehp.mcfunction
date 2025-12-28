#>oni:game/touch/ehp


##殴られた人の処理
    execute if entity @s[predicate=oni:effect/hero_of_the_village] run playsound minecraft:block.anvil.place record @s ~ ~ ~ 1 1.5
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run team join oni @s
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run attribute @s movement_speed base set 0.15
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect clear @s weakness
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run effect give @s blindness 10 0 true
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run scoreboard players set @s Znsi.CoolDown 20
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run tag @s add Chenge


##殴った人の処理    
    execute if entity @s[predicate=oni:effect/hero_of_the_village] on attacker run playsound minecraft:block.anvil.place record @s ~ ~ ~ 1 1.5
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run team join nige @s
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run attribute @s movement_speed base reset
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run effect give @s hero_of_the_village 5 0 true
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run effect give @s speed 5 2 true
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run item replace entity @s armor.head with air
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run scoreboard players set @s Znsi.CoolDown 0
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run tag @s add TEMP_Touch


##アナウンス
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] run tellraw @a [{"color":"green","text":"[Announce] 鬼が"},{"color":"green","selector":"@a[tag=TEMP_Touch]"},"から",{"color":"green","selector":"@s"},"に変わりました"]
    execute if entity @s[predicate=!oni:effect/hero_of_the_village] on attacker run tag @s remove TEMP_Touch


    advancement revoke @s only oni:ehp