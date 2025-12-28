#>glance:ability/reconnaissance/reconnaissance_04
#@execution -> glance:system/game


##プレイヤー関連
    tag @s remove Reconnaissance
    effect clear @s invisibility
    attribute @s scale base reset
    #scoreboard players remove @s Znsi.MP 3


##
    scoreboard players operation TMP Znsi.ID = @s Znsi.ID
    execute as @e[type=marker,tag=Reconnaissance] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select
    execute as @e[type=happy_ghast,tag=Znsi.Reconnaissance] if score @s Znsi.ID = TMP Znsi.ID run tag @s add select


##乗ってるやつをkill
    kill @e[tag=Znsi.Reconnaissance,tag=select]


##元の位置に戻す
    tp @s @e[type=marker,tag=Reconnaissance,limit=1,tag=select]
    kill @e[tag=select]