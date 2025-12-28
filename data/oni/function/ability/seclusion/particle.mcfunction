#>oni:ability/seclusion/particle


##パーティクルを表示させる
    execute if entity @s[team=nige] run particle dust{color:[0.031,0.000,1.000],scale:1} ~ ~1 ~ 0 0 0 1 1 force
    execute if entity @s[team=oni] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 1 1 force
    scoreboard players reset @s Znsi.Time
