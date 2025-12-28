#>oni:ability/teleport/tp

##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0
    

##TPさせる
    $tp @s $(x) $(y) $(z)
    execute positioned as @s run playsound block.respawn_anchor.deplete record @s


##内部処理
    tag @s remove CanTP
    data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TP.Pos
    scoreboard players set @s Znsi.CoolDown 60
    