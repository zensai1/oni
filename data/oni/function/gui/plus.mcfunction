#>oni:gui/plus


##前処理する
    item replace entity @s player.cursor with air


##異能の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add $Ability Znsi.Setting 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] store result storage oni: Setting.Ability int 1 run scoreboard players get $Ability Znsi.Setting


##鬼の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add $Oni Znsi.Setting 1
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] store result storage oni: Setting.Oni int 1 run scoreboard players get $Oni Znsi.Setting


##制限時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add $Time Znsi.Setting 30
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] store result storage oni: Setting.Time int 1 run scoreboard players get $Time Znsi.Setting


##範囲
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] run scoreboard players add $Range Znsi.Setting 50
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:12b}]}] store result storage oni: Setting.Range int 1 run scoreboard players get $Range Znsi.Setting


##元に戻す
    playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function oni:gui/