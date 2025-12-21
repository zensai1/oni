#>oni:gui/plus
#@execution -> oni:rick/wait


##前処理する
    item replace entity @s player.cursor with air

##魔法の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:9b}]}] run scoreboard players add *** Znsi.ability 1

##鬼の数
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:10b}]}] run scoreboard players add *** Znsi.oni 1

##時間
    execute as @s[nbt=!{Inventory:[{id:"minecraft:red_stained_glass_pane",Slot:11b}]}] run scoreboard players add *** Znsi.time 30


##内部処理
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function oni:gui/