#>oni:ability/suction/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##吸い込む人たちの選定
    execute if entity @s[team=nige] at @s positioned ~-5 ~-5 ~-5 as @a[dx=9,dy=9,dz=9,team=oni] run tag @s add Suction
    execute if entity @s[team=oni] at @s positioned ~-5 ~-5 ~-5 as @a[dx=9,dy=9,dz=9,team=nige] run tag @s add Suction
    execute if entity @s[team=nige] run tp @a[tag=Suction,team=oni] @s
    execute if entity @s[team=oni] run tp @a[tag=Suction,team=nige] @s
    execute as @a[tag=Suction] at @s run playsound minecraft:entity.breeze.idle_ground record @s


##吸い込んだ人たちへ
    effect give @a[tag=Suction] darkness 5 0 true
    effect give @a[tag=Suction] weakness 5 255 true
    effect give @a[tag=Suction] slowness 5 5 true
    tag @a remove Suction


##内部処理
    playsound minecraft:entity.breeze.idle_ground record @s
    scoreboard players set @s Znsi.CoolDown 40