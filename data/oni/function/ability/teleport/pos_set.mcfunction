#>oni:ability/teleport/pos_set

##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##Oh My Dat
    function #oh_my_dat:please


##現在地点を入れとく
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TP.Pos.x int 1 run data get entity @s Pos[0]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TP.Pos.y int 1 run data get entity @s Pos[1]
    execute store result storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TP.Pos.z int 1 run data get entity @s Pos[2]


##内部処理
    tag @s add CanTP
    playsound entity.arrow.hit_player record @s
    scoreboard players set @s Znsi.CoolDown 10