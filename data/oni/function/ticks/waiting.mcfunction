#>oni:ticks/waiting


##GUi
    execute as @a[tag=op] at @s if items entity @s player.cursor red_stained_glass_pane run function oni:gui/plus
    execute as @a[tag=op] at @s if items entity @s player.cursor blue_stained_glass_pane run function oni:gui/minus
    execute as @a[tag=op] at @s if items entity @s player.cursor leather_helmet run function oni:gui/preset
    execute as @a[tag=op] at @s if items entity @s player.cursor bell run function oni:gui/start with storage oni: Setting


##Effect
    #effect give @a saturation infinite 255 true
    #effect give @a weakness infinite 255 true
    #effect give @s resistance infinite 255 true


##actionbar
    execute as @a at @s run title @s actionbar [{"color":"light_purple","text":"異能："},{"color":"white","interpret":false,"nbt":"Setting.Ability","storage":"oni:"},{"color":"white","text":"個  |  "},{"color":"red","text":"鬼："},{"color":"white","interpret":false,"nbt":"Setting.Oni","storage":"oni:"},{"color":"white","text":"人  |  "},{"color":"aqua","text":"時間："},{"color":"white","interpret":false,"nbt":"Setting.Time","storage":"oni:"},{"color":"white","text":"秒  |  "},{"color":"gold","text":"範囲："},{"color":"white","interpret":false,"nbt":"Setting.Range","storage":"oni:"},{"color":"white","text":" × "},{"color":"white","interpret":false,"nbt":"Setting.Range","storage":"oni:"}]