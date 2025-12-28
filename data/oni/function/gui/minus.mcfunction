#>oni:gui/minus


#>oni:gui/plus


##前処理する
    item replace entity @s player.cursor with air

    
##MP
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] if score $MP Znsi.Setting matches 1.. run scoreboard players remove $MP Znsi.Setting 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] store result storage oni: Setting.MP int 1 run scoreboard players get $MP Znsi.Setting


##異能の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] if score $Ability Znsi.Setting matches 1.. run scoreboard players remove $Ability Znsi.Setting 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] store result storage oni: Setting.Ability int 1 run scoreboard players get $Ability Znsi.Setting


##鬼の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] if score $Oni Znsi.Setting matches 2.. run scoreboard players remove $Oni Znsi.Setting 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] store result storage oni: Setting.Oni int 1 run scoreboard players get $Oni Znsi.Setting


##制限時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] if score $Time Znsi.Setting matches 60.. run scoreboard players remove $Time Znsi.Setting 30
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] store result storage oni: Setting.Time int 1 run scoreboard players get $Time Znsi.Setting


##範囲
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] if score $Range Znsi.Setting matches 100.. run scoreboard players remove $Range Znsi.Setting 50
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:30b}]}] store result storage oni: Setting.Range int 1 run scoreboard players get $Range Znsi.Setting


##元に戻す
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function oni:gui/