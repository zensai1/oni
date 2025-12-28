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
    execute if entity @s[team=nige] at @s positioned ~-15 ~-15 ~-15 as @a[dx=29,dy=29,dz=29,team=oni] run effect give @s glowing 20 0 true


##鬼側
    execute if entity @s[team=oni] at @s positioned ~-15 ~-15 ~-15 as @a[dx=29,dy=29,dz=29,team=nige] run effect give @s glowing 20 0 true


##
    playsound entity.illusioner.prepare_blindness record @s
    scoreboard players set @s Znsi.CoolDown 20