tellraw @a [{"color":"gold","text":"今回の勝者は["},{"bold":true,"color":"gold","selector":"@a[team=nige]"},{"color":"gold","text":"]です"}]
clear @a
effect clear @a
gamemode adventure @a
effect give @a[team=nige] glowing 30 1 true
team leave @a
function oni:game/reset