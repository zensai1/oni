#>oni:ability/restraint/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##逃げ側
    execute if entity @s[team=nige] at @s as @a[distance=..30,team=oni] run tag @s add Restraint
    execute if entity @s[team=nige] at @s as @a[distance=..30,team=oni] run playsound minecraft:entity.elder_guardian.curse record @s


##鬼側
    execute if entity @s[team=oni] at @s as @a[distance=..30,team=nige] run tag @s add Restraint
    execute if entity @s[team=oni] at @s as @a[distance=..30,team=nige] run playsound minecraft:entity.elder_guardian.curse record @s


##
    playsound minecraft:block.chain.place record @s
    scoreboard players set @s Znsi.CoolDown 35