#>oni:gui/magic_rod


##前処理する
    item replace entity @s player.cursor with air


##配布する
    loot give @a loot oni:ability/magic


##内部処理
    execute at @s run playsound minecraft:block.dispenser.dispense record @s ~ ~ ~ 1 1.5
    function oni:gui/
