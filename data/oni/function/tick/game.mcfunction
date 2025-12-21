#>oni:tick/game


#stamina system
execute as @a[team=nige,scores={Znsi.food=..19},predicate=!oni:move/sprint] at @s run scoreboard players add @s Znsi.saturation 1
execute as @a[team=nige,scores={Znsi.food=..19},predicate=oni:move/sneak] at @s run scoreboard players add @s Znsi.saturation 2
execute if entity @a[team=nige,scores={Znsi.saturation=30..}] as @a[team=nige,scores={Znsi.saturation=30..}] at @s run effect give @s saturation 1 0 true
execute if entity @a[team=nige,scores={Znsi.saturation=30..}] as @a[team=nige,scores={Znsi.saturation=30..}] at @s run scoreboard players set @s Znsi.saturation 0
execute run effect give @a[team=nige,predicate=oni:move/sprint] minecraft:hunger 1 70 true
execute as @a[scores={Znsi.food=..3},team=nige] at @s run effect give @s slowness 3 3 true
effect give @a[team=oni] saturation infinite 255 true

#action bar
    execute as @a[team=nige] run title @s actionbar [{"color":"green","text":"あなたは逃げです　"},{"color":"aqua","text":"CT："},{"color":"aqua","score":{"name":"@s","objective":"Znsi.cooltime"}}]
    execute as @a[team=oni] run title @s actionbar [{"color":"green","text":"あなたは鬼です　"},{"color":"aqua","text":"CT："},{"color":"aqua","score":{"name":"@s","objective":"Znsi.cooltime"}},{"color":"red","text":"　気配："},{"color":"red","score":{"name":"@s","objective":"Znsi.sign"}},{"color":"red","text":"人"}]


effect give @a[team=nige] weakness infinite 255 true
effect give @a[team=oni,predicate=oni:effect/unluck] weakness infinite 255 true
effect clear @a[team=oni,predicate=!oni:effect/unluck] weakness

#head
    execute as @a[team=nige,predicate=!oni:effect/luck] at @s run item replace entity @s armor.head with air
    execute as @a[predicate=!oni:effect/invisibility,predicate=!oni:effect/luck,team=oni,nbt=!{Inventory:[{id:"minecraft:leather_helmet",components:{"minecraft:unbreakable":{}}}]}] at @s run loot replace entity @s armor.head loot oni:oni

#sign
    execute as @a[team=oni] at @s store result score @s Znsi.sign if entity @a[distance=..50,team=nige]