#>oni:ability/sound_explosion/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##逃げ側
    execute if entity @s[team=nige] at @s positioned ~-20 ~-20 ~-20 as @a[dx=39,dy=39,dz=39,team=oni] run tag @s add Sound_Explosion


##鬼側
    execute if entity @s[team=oni] at @s positioned ~-20 ~-20 ~-20 as @a[dx=39,dy=39,dz=39,team=nige] run tag @s add Sound_Explosion


##内部処理
    scoreboard players set @s Znsi.CoolDown 30