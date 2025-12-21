#>oni:gui/minus


##前処理する
    item replace entity @s player.cursor with air


##魔法の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:27b}]}] if score *** Znsi.ability matches 1.. run scoreboard players remove *** Znsi.ability 1


##鬼の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:28b}]}] if score *** Znsi.oni matches 2.. run scoreboard players remove *** Znsi.oni 1


##残り時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:blue_stained_glass_pane",Slot:29b}]}] if score *** Znsi.time matches 60.. run scoreboard players remove *** Znsi.time 30


##内部処理
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function oni:gui/