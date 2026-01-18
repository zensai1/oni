#>oni:ability/detection


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##逃げ側
    execute if entity @s[team=nige] at @s as @a[distance=..15,team=oni] run effect give @s glowing 20 0 true
    execute if entity @s[team=nige] at @s as @a[distance=..15,team=oni] run playsound minecraft:block.glass.break record @s ~ ~ ~ 1 1.5


##鬼側
    execute if entity @s[team=oni] at @s as @a[distance=..15,team=nige] run effect give @s glowing 20 0 true
    execute if entity @s[team=oni] at @s as @a[distance=..15,team=nige] run playsound minecraft:block.glass.break record @s ~ ~ ~ 1 1.5

##
    playsound entity.illusioner.prepare_blindness record @s
    scoreboard players set @s Znsi.CoolDown 20