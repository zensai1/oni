#>oni:firstlogin


# プレイヤーに数値IDを割り振る
scoreboard players add *** Znsi.CoreID 1
scoreboard players operation @s Znsi.ID = *** Znsi.CoreID

scoreboard players set @s Znsi.Ability 1
tag @s add firstlogin


##Waiting中
    execute if data storage oni: {State:waiting} run effect give @a weakness infinite 255 true


    effect give @a saturation infinite 255 true
    effect give @a resistance infinite 255 true