#>oni:ability/blue_sky/


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##
    execute as @a store result score @s Znsi.Pos.Y run data get entity @s Pos[1]


##高い人を判別する
    scoreboard players operation $TMP Znsi.Pos.Y = @s Znsi.Pos.Y
    execute if entity @s[team=nige] as @a[team=oni] if score @s Znsi.Pos.Y > $TMP Znsi.Pos.Y run tag @s add BS
    execute if entity @s[team=oni] as @a[team=nige] if score @s Znsi.Pos.Y > $TMP Znsi.Pos.Y run tag @s add BS
    effect give @a[tag=BS] glowing 10 0 true
    execute as @a[tag=BS] at @s run playsound minecraft:block.glass.break record @s ~ ~ ~ 1 1.5
    playsound minecraft:block.conduit.activate record @s
    tag @a remove BS
    

##CoolDown
    scoreboard players set @s Znsi.CoolDown 35