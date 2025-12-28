#>oni:ability/cancel


##attribute戻す
    attribute @s jump_strength base reset
    execute if entity @s[team=nige] run attribute @s movement_speed base reset
    execute if entity @s[team=oni] run attribute @s movement_speed base set 0.15


##Tagとか
    tag @s remove Pre_Leap
    scoreboard players reset @s Znsi.LeapTime
    playsound minecraft:entity.generic.extinguish_fire record @s