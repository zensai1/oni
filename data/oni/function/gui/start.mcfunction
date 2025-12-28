#>oni:gui/start


##State
    data modify storage oni: State set value gaming
    scoreboard objectives setdisplay sidebar Znsi.Info


#PLAYER
    clear @a
    effect clear @a
    effect give @a saturation infinite 255 true
    effect give @a resistance infinite 255 true
    effect give @a[team=nige] weakness infinite 255 true
    tp @a @s
    loot give @a loot oni:magic_rod
    effect give @a[team=oni] blindness 10 0 true
    effect give @a[team=oni] weakness 10 255 true
    execute as @a[team=oni] run tag @s add Chenge
    execute as @a[team=oni] run scoreboard players set @s Znsi.CoolDown 20


##制限時間  
    $scoreboard players set *** Znsi.Time $(Time)
    $team modify time suffix {"color":"green","text":"$(Time)秒"}


##範囲
    worldborder center ~ ~
    $worldborder set $(Range)


##Time
    schedule function oni:timer/remove 1s


##異能抽選
    scoreboard players operation $Ability Znsi.Temp = $Ability Znsi.Setting
    execute if score $Ability Znsi.Temp matches 1.. run function oni:game/lottery/pre
    tellraw @a [{"color":"aqua","text":"今回使える異能は"},{"color":"aqua","interpret":true,"nbt":"ability.poolname[]","storage":"oni:"},"です"]
    


##逃げ側
    team join nige @a[team=]