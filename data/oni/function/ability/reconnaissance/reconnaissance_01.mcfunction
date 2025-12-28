#>oni:ability/reconnaissance/reconnaissance_01
#@execution -> oni:system/game


##
    scoreboard players reset @s Znsi.Use.Carrotstick


##cdあったら中止
    execute if score @s Znsi.CoolDown matches 1.. run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"CD中です"}]
    execute if score @s Znsi.CoolDown matches 1.. run return 0


##抑制中だったら中止
    execute if entity @s[tag=Restraint] run tellraw @s ["[",{"color":"red","text":"Error"},{"color":"white","text":"]　"},{"color":"red","text":"抑制中です"}]
    execute if entity @s[tag=Restraint] run return 0


##Marker召喚
    summon marker ~ ~ ~ {Tags:["Reconnaissance"]}
    scoreboard players operation @e[type=marker,tag=Reconnaissance,limit=1,sort=nearest] Znsi.ID = @s Znsi.ID
    

##偵察ドローンを召喚
    execute summon happy_ghast run function oni:ability/reconnaissance/reconnaissance_02


##その他処理
    effect give @s weakness 21 255 true
    effect give @s invisibility 21 0 true 
    effect give @s resistance 21 255 true
    item replace entity @s armor.head with air
    playsound minecraft:block.fire.extinguish record @s
    tag @s add Reconnaissance
    scoreboard players set @s Znsi.CoolDown 45