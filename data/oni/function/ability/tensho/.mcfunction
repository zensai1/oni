#>oni:ability/tensho/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0
    

##向いてる方向に飛ぶ
    scoreboard players set $strength hb.Motion 25000
    execute positioned as @s run playsound minecraft:entity.blaze.shoot record @s ~ ~ ~ 1 1.5
    function #p_motion:looking


##内部処理
    scoreboard players set @s Znsi.CoolDown 20