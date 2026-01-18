#>oni:ability/.2


    $execute store result score @s Znsi.Ability run data get storage oni: ability.pool[$(leagth)]


##対応した杖を渡す
    execute if score @s Znsi.Ability matches 0 run loot replace entity @s weapon.mainhand loot oni:ability/boost
    execute if score @s Znsi.Ability matches 1 run loot replace entity @s weapon.mainhand loot oni:ability/invisibility
    execute if score @s Znsi.Ability matches 2 run loot replace entity @s weapon.mainhand loot oni:ability/teleport
    execute if score @s Znsi.Ability matches 3 run loot replace entity @s weapon.mainhand loot oni:ability/disguise
    execute if score @s Znsi.Ability matches 4 run loot replace entity @s weapon.mainhand loot oni:ability/detection
    execute if score @s Znsi.Ability matches 5 run loot replace entity @s weapon.mainhand loot oni:ability/soulless
    execute if score @s Znsi.Ability matches 6 run loot replace entity @s weapon.mainhand loot oni:ability/restraint
    execute if score @s Znsi.Ability matches 7 run loot replace entity @s weapon.mainhand loot oni:ability/suction
    execute if score @s Znsi.Ability matches 8 run loot replace entity @s weapon.mainhand loot oni:ability/invincible
    execute if score @s Znsi.Ability matches 9 run loot replace entity @s weapon.mainhand loot oni:ability/leap_forward
    execute if score @s Znsi.Ability matches 10 run loot replace entity @s weapon.mainhand loot oni:ability/child
    execute if score @s Znsi.Ability matches 11 run loot replace entity @s weapon.mainhand loot oni:ability/pom
    execute if score @s Znsi.Ability matches 12 run loot replace entity @s weapon.mainhand loot oni:ability/blue_sky