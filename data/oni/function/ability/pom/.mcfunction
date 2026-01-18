#>oni:ability/pom/
#安寧


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##逃げ側
    execute if entity @s[team=nige] run effect give @s hero_of_the_village 30 0 true
    execute if entity @s[team=nige] run tag @s add Nige_Pom


##鬼側
    execute if entity @s[team=oni] as @a[team=nige,predicate=oni:move/sprint] run effect give @s glowing 20 0 true


    playsound minecraft:item.mace.smash_ground record @s

    
##CoolDown
    execute if entity @s[team=nige] run scoreboard players set @s Znsi.CoolDown 45
    execute if entity @s[team=oni] run scoreboard players set @s Znsi.CoolDown 30