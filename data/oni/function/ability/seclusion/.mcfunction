#>oni:ability/seclusion/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0
    

##透明化状態になる
    effect give @s invisibility 10 0 true
    playsound minecraft:entity.generic.extinguish_fire record @s
    effect clear @s glowing
    item replace entity @s armor.head with air


##内部処理
    scoreboard players set @s Znsi.CoolDown 45