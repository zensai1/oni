#firstlogin
execute if entity @a[tag=!firstlogin] as @a[tag=!firstlogin] at @s run function oni:firstlogin

#gamemode
execute if score *** Znsi.gamemode matches 1 run function oni:tick/wait
execute if score *** Znsi.gamemode matches 2 run function oni:tick/game

#cooltime
execute as @a[scores={Znsi.cooltime=0}] at @s run scoreboard players reset @s Znsi.tickcooltime
execute as @a[scores={Znsi.cooltime=1..}] at @s run scoreboard players add @s Znsi.tickcooltime 1
execute as @a[scores={Znsi.cooltime=1..},team=oni] at @s run scoreboard players add @s Znsi.tickcooltime 1
execute as @a[scores={Znsi.tickcooltime=20..}] at @s run scoreboard players remove @s Znsi.cooltime 1
execute as @a[scores={Znsi.tickcooltime=20..}] at @s run scoreboard players reset @s Znsi.tickcooltime
execute as @a[scores={Znsi.cooltime=0},tag=cooltime] at @s run playsound minecraft:entity.arrow.hit_player record @s
execute as @a[scores={Znsi.cooltime=0},tag=resraint] at @s run tag @s remove resraint
execute as @a[scores={Znsi.cooltime=0},tag=cooltime] at @s run tag @s remove cooltime

#abillty
execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=0}] at @s run function oni:ability/boost

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=1}] at @s run function oni:ability/invisibility
execute as @a[predicate=oni:effect/invisibility] at @s run scoreboard players add @s Znsi.invtimer 1
execute as @a[predicate=oni:effect/invisibility,team=nige,scores={Znsi.invtimer=10}] at @s run particle dust{color:[0.031,0.000,1.000],scale:1} ~ ~1 ~ 0 0 0 1 1 force
execute as @a[predicate=oni:effect/invisibility,team=oni,scores={Znsi.invtimer=10}] at @s run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1 ~ 0 0 0 1 1 force
execute as @a[predicate=oni:effect/invisibility,scores={Znsi.invtimer=11..}] at @s run scoreboard players set @s Znsi.invtimer 0
execute as @a[predicate=!oni:effect/invisibility] at @s run scoreboard players reset @s Znsi.invtimer

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=2},tag=!pre_tp] at @s run function oni:ability/teleport
execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=2},tag=pre_tp] at @s run function oni:ability/teleport2

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=3}] at @s run function oni:ability/disguise

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=4}] at @s run function oni:ability/detection

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=5}] at @s run function oni:ability/soulless
execute as @a[tag=soulless] at @s run scoreboard players add @s Znsi.soullesstimer 1
execute as @a[tag=soulless,scores={Znsi.soullesstimer=240}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=soulless,scores={Znsi.soullesstimer=260}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=soulless,scores={Znsi.soullesstimer=280}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=soulless,scores={Znsi.soullesstimer=300}] at @s run function oni:ability/soulin
execute as @e[type=marker,tag=Znsi.soulless] at @s run particle dust{color:[0.365,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 1 10 force

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=6}] at @s run function oni:ability/restraint
execute as @a[scores={Znsi.cooltime=1..},tag=resraint] at @s run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~3 ~ 0 0 0 1 10 force

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=7}] at @s run function oni:ability/suction

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=8}] at @s run function oni:ability/invincible

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=9}] at @s run function oni:ability/leap_forward
execute as @a[tag=leap] at @s run scoreboard players add @s Znsi.leap_forward 1
execute as @a[tag=leap,scores={Znsi.leap_forward=20}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=leap,scores={Znsi.leap_forward=40}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=leap,scores={Znsi.leap_forward=60}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=leap,scores={Znsi.leap_forward=80}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=leap,scores={Znsi.leap_forward=100..}] at @s run function oni:ability/leap_forward2
execute as @a[tag=!leap,scores={Znsi.leap_forward=1..}] at @s run scoreboard players reset @s Znsi.leap_forward

execute as @a[scores={Znsi.usecarrot=1..,Znsi.cooltime=0,Znsi.ability=10}] at @s run function oni:ability/child
execute as @a[tag=child] at @s run scoreboard players add @s Znsi.child 1
execute as @a[tag=child,scores={Znsi.child=220}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=child,scores={Znsi.child=240}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=child,scores={Znsi.child=260}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=child,scores={Znsi.child=280}] at @s run playsound minecraft:block.note_block.bell record @s
execute as @a[tag=child,scores={Znsi.child=300..}] at @s run function oni:ability/child2
execute as @a[tag=!child,scores={Znsi.child=1..}] at @s run scoreboard players reset @s Znsi.child

execute as @a[scores={Znsi.usecarrot=1..}] at @s run scoreboard players reset @s Znsi.usecarrot

#chenge
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick",count:1}}]
execute as @a[scores={Znsi.dropstick=1..}] at @s store result storage oni: score.id int 1.0 run scoreboard players get @s Znsi.id
execute as @a[scores={Znsi.dropstick=1..}] at @s if score *** Znsi.gamemode matches 2 run function oni:ability/chenge with storage oni: score
execute as @a[scores={Znsi.dropstick=1..}] at @s if score *** Znsi.gamemode matches 1 run function oni:ability/wait_chenge with storage oni: score
