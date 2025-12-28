#>oni:ticks/gaming


##アクションバー
    execute as @a[team=nige] at @s run title @s actionbar ["あなたは",{"color":"blue","text":"逃げ側"},{"color":"white","text":"です | CD："},{"color":"white","score":{"name":"@s","objective":"Znsi.CoolDown"}}]
    execute as @a[team=oni] at @s run title @s actionbar ["あなたは",{"color":"red","text":"鬼側"},{"color":"white","text":"です | CD："},{"color":"white","score":{"name":"@s","objective":"Znsi.CoolDown"}},{"color":"white","text":" | 気配："},{"color":"aqua","score":{"name":"@s","objective":"Znsi.Sign"}},{"color":"white","text":"人"}]


##異能
    kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]
    execute as @a[scores={Znsi.Drop.Carrotstick=1..}] at @s store result storage oni: Game.ID int 1.0 run scoreboard players get @s Znsi.ID
    execute as @a[scores={Znsi.Drop.Carrotstick=1..}] at @s run function oni:ability/ with storage oni: Game
    execute as @a[scores={Znsi.CoolDown=1..}] run scoreboard players add @s Znsi.Ticks 1
    execute as @a[team=nige,scores={Znsi.Ticks=20..}] at @s run scoreboard players remove @s Znsi.CoolDown 1
    execute as @a[team=nige,scores={Znsi.Ticks=20..}] at @s run scoreboard players reset @s Znsi.Ticks
    execute as @a[team=oni,scores={Znsi.Ticks=10..}] at @s run scoreboard players remove @s Znsi.CoolDown 1
    execute as @a[team=oni,scores={Znsi.Ticks=10..}] at @s run scoreboard players reset @s Znsi.Ticks


    ##天翔
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 0 run function oni:ability/tensho/

    ##隠遁
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 1 run function oni:ability/seclusion/
        execute as @a[predicate=oni:effect/invisibility,scores={Znsi.Ability=1}] at @s run scoreboard players add @s Znsi.Time 1
        execute as @a[predicate=oni:effect/invisibility,scores={Znsi.Ability=1,Znsi.Time=10}] at @s run function oni:ability/seclusion/particle
        execute as @a[predicate=!oni:effect/invisibility,scores={Znsi.Ability=1}] run scoreboard players reset @s Znsi.Time

    ##転移
        execute as @a[scores={Znsi.Use.Carrotstick=1},tag=!CanTP] at @s if score @s Znsi.Ability matches 2 run function oni:ability/teleport/pos_set
        execute as @a[scores={Znsi.Use.Carrotstick=1},tag=CanTP] at @s if score @s Znsi.Ability matches 2 run function #oh_my_dat:please
        execute as @a[scores={Znsi.Use.Carrotstick=1},tag=CanTP] at @s if score @s Znsi.Ability matches 2 run function oni:ability/teleport/tp with storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TP.Pos

    ##変装
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 3 run function oni:ability/disguise/
        execute as @a[team=nige,predicate=!oni:effect/luck] at @s run item replace entity @s armor.head with air
        execute as @a[predicate=!oni:effect/invisibility,predicate=!oni:effect/luck,team=oni,nbt=!{Inventory:[{id:"minecraft:leather_helmet",components:{"minecraft:unbreakable":{}}}]}] at @s run loot replace entity @s armor.head loot oni:oni

    ##探知
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 4 run function oni:ability/detection/

    ##偵察
        execute as @e[type=marker,tag=Reconnaissance] at @s run particle dust{color:[0.365,0.000,1.000],scale:1} ~ ~ ~ 0 0 0 1 10 force
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 5 run function oni:ability/reconnaissance/reconnaissance_01
        execute if entity @a[tag=Reconnaissance,predicate=!oni:reconnaissance] as @a[tag=Reconnaissance,predicate=!oni:reconnaissance] at @s run function oni:ability/reconnaissance/reconnaissance_04
        execute as @a[tag=Reconnaissance] run scoreboard players add @s Znsi.Time 1
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=200}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=220}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=240}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=260}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=280}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=300}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Reconnaissance,scores={Znsi.Time=300..}] at @s run function oni:ability/reconnaissance/reconnaissance_05

    ##抑制
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 6 run function oni:ability/restraint/
        execute as @a[tag=Restraint] run particle dust{color:[0.000,0.000,0.000],scale:1} ~ ~3 ~ 0 0 0 1 10 force
        execute as @a[tag=Restraint] run scoreboard players add @s Znsi.RestraintTime 1
        execute as @a[tag=Restraint,scores={Znsi.RestraintTime=100..}] at @s run function oni:ability/restraint/cancellation

    ##吸引
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 7 run function oni:ability/suction/

    ##無敵
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 8 run function oni:ability/invincible/

    ##飛躍
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 9 run function oni:ability/leap/
        execute as @a[tag=Pre_Leap] run scoreboard players add @s Znsi.LeapTime 1
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=1}] run attribute @s movement_speed base set 0
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=1}] run attribute @s jump_strength base set 0
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=20}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=40}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=60}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=80}] at @s run playsound minecraft:block.note_block.bell record @s
        execute as @a[tag=Pre_Leap,scores={Znsi.LeapTime=100..}] at @s run function oni:ability/leap/firing
        execute as @a[scores={Znsi.LeapTime=1..},predicate=oni:move/sneak] at @s run function oni:ability/leap/cancel
        execute as @a[predicate=oni:move/on_ground,tag=!Flying] at @s run item replace entity @s armor.chest with air
        execute as @a[predicate=oni:move/flying] at @s run tag @s remove Flying

    ##音爆 
        execute as @a[scores={Znsi.Use.Carrotstick=1}] at @s if score @s Znsi.Ability matches 10 run function oni:ability/sound_explosion/
        execute as @a[tag=Sound_Explosion] run scoreboard players add @s Znsi.SoundTime 1
        execute as @a[scores={Znsi.SoundTime=40}] at @s positioned ~ ~ ~ run playsound minecraft:item.trident.thunder record @a[distance=..15] ~ ~ ~ 1 1.5
        execute as @a[scores={Znsi.SoundTime=80}] at @s positioned ~ ~ ~ run playsound minecraft:item.trident.thunder record @a[distance=..15] ~ ~ ~ 1 1.5
        execute as @a[scores={Znsi.SoundTime=120}] at @s positioned ~ ~ ~ run playsound minecraft:item.trident.thunder record @a[distance=..15] ~ ~ ~ 1 1.5
        execute as @a[scores={Znsi.SoundTime=160}] at @s positioned ~ ~ ~ run playsound minecraft:item.trident.thunder record @a[distance=..15] ~ ~ ~ 1 1.5
        execute as @a[scores={Znsi.SoundTime=200}] at @s positioned ~ ~ ~ run playsound minecraft:item.trident.thunder record @a[distance=..15] ~ ~ ~ 1 1.5
        execute as @a[scores={Znsi.SoundTime=200}] run function oni:ability/sound_explosion/cancellation


##気配
    execute as @a[team=oni] at @s positioned ~-25 ~-25 ~-25 store result score @s Znsi.Sign as @a[team=nige] if entity @s[dx=49,dy=49,dz=49]


##常時実行
    effect give @a saturation infinite 255 true
    effect give @a resistance infinite 255 true
    effect give @a[team=nige] weakness infinite 255 true


##鬼交代時
    execute as @a[tag=Chenge] run scoreboard players add @s Znsi.ChengeTime 1
    execute as @a[team=oni,tag=Chenge,scores={Znsi.ChengeTime=1}] run attribute @s movement_speed base set 0
    execute as @a[team=oni,tag=Chenge,scores={Znsi.ChengeTime=1}] run attribute @s jump_strength base set 0
    execute as @a[team=oni,tag=Chenge,scores={Znsi.ChengeTime=200..}] run attribute @s movement_speed base set 0.15
    execute as @a[team=oni,tag=Chenge,scores={Znsi.ChengeTime=200..}] run attribute @s jump_strength base reset
    execute as @a[team=oni,tag=Chenge,scores={Znsi.ChengeTime=200..}] run tag @s remove Chenge
    execute as @a[team=oni,scores={Znsi.ChengeTime=200..}] run scoreboard players reset @s Znsi.ChengeTime
