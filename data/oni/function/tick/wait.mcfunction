#effect
effect give @a saturation infinite 255 true
effect give @a resistance infinite 255 true
effect give @a weakness infinite 255 true

#gui
    execute as @a[tag=op] if items entity @s player.cursor red_stained_glass_pane run function oni:gui/plus
    execute as @a[tag=op] if items entity @s player.cursor blue_stained_glass_pane run function oni:gui/minus

execute as @a[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:17b}]},tag=op] at @s run function oni:gui/magic_rod
execute as @a[nbt=!{Inventory:[{id:"minecraft:leather_helmet",Slot:26b}]},tag=op] at @s run function oni:game/oni_set
execute as @a[nbt=!{Inventory:[{id:"minecraft:bell",Slot:35b}]},tag=op] at @s run function oni:game/start



