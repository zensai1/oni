#>oni:game/glowing


    tellraw @a [{"color":"green","text":"[Announce]  "},{"selector":"@s"},"が発光玉を使用しました。"]
    effect give @a[team=nige] glowing 10 0 true
    scoreboard players reset @s Znsi.Use.SnowBall