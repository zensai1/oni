#>oni:ability/leap/firing


##attribute戻す
    attribute @s jump_strength base reset
    execute if entity @s[team=nige] run attribute @s movement_speed base reset
    execute if entity @s[team=oni] run attribute @s movement_speed base set 0.15


##Tagとか
    tag @s remove Pre_Leap
    scoreboard players reset @s Znsi.LeapTime
    tag @s add Flying


##とばす
    execute unless score @s Znsi.CoolDown matches 1.. run scoreboard players set $x hb.Motion 0
    execute unless score @s Znsi.CoolDown matches 1.. run scoreboard players set $y hb.Motion 50000
    execute unless score @s Znsi.CoolDown matches 1.. run scoreboard players set $z hb.Motion 0
    execute unless score @s Znsi.CoolDown matches 1.. run function #p_motion:xyz
    execute unless score @s Znsi.CoolDown matches 1.. run loot replace entity @s armor.chest loot oni:elytra


##CoolDown
    scoreboard players set @s Znsi.CoolDown 40