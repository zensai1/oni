# プレイヤーに数値IDを割り振る
scoreboard players add $Znsi.coreid Znsi.coreid 1
scoreboard players operation @s Znsi.id = $Znsi.coreid Znsi.coreid

scoreboard players set @s Znsi.cooltime 0
scoreboard players set @s Znsi.ability 1
tag @s add firstlogin