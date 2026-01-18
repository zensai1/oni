#>oni:game/reset


##Scoreboard
    scoreboard players reset @a Znsi.CoolDown
    scoreboard players reset @a Znsi.Array
    scoreboard players reset @a Znsi.RestraintTime
    scoreboard players reset @a Znsi.Time
    scoreboard players reset @a Znsi.ChengeTime
    scoreboard players reset @a Znsi.Ticks
    scoreboard players reset @a Znsi.OniTime


##Tag 
    tag @a remove CanTP
    tag @a remove Chenge
    tag @a remove Reconnaissance
    tag @a remove Restraint


##attribute
    execute as @a at @s run attribute @s scale base reset
    execute as @a at @s run attribute @s movement_speed base reset
    execute as @a at @s run attribute @s jump_strength base reset


##Info
    scoreboard objectives setdisplay sidebar


##Storage
    data modify storage oni: State set value waiting
    data modify storage oni: pool set value [0,1,2,3,4,5,6,7,8,9,10,11,12]
    data modify storage temp: pool set from storage oni: pool
    data remove storage temp: result
    data modify storage oni: ability.name set value ["天翔","隠遁","転移","変装","探知","偵察","抑制","吸引","無敵","飛躍","音爆","安寧","蒼穹"]
    data remove storage oni: ability.pool
    data remove storage oni: ability.poolname


##GUi
    execute as @a[tag=op] run function oni:gui/


##Entity
    kill @e[type=happy_ghast]


##Effect
    effect give @a saturation infinite 255 true
    effect give @a weakness infinite 255 true
    effect give @a resistance infinite 255 true


##Worldboarder
    worldborder set 10000000