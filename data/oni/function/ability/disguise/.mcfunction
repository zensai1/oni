#>oni:ability/disguise/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##変装するよ
    execute if entity @s[team=nige] run loot replace entity @s armor.head loot oni:oni
    execute if entity @s[team=oni] run item replace entity @s armor.head with air
    effect give @s luck 20 1 true


##内部処理
    playsound minecraft:entity.creaking.activate record @s
    scoreboard players set @s Znsi.CoolDown 40
    