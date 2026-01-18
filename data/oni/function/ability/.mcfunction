#>oni:ability/


playsound minecraft:block.dispenser.dispense record @s
clear @s carrot_on_a_stick

##配列をいじる準備
    scoreboard players add @s Znsi.Array 1
    execute if score @s Znsi.Array = $Ability Znsi.Setting run scoreboard players set @s Znsi.Ability -1
    execute if score @s Znsi.Array >= $Ability Znsi.Setting run scoreboard players set @s Znsi.Array 0
    execute store result storage oni: ability.leagth int 1.0 run scoreboard players get @s Znsi.Array
    function oni:ability/.2 with storage oni: ability


##内部処理
    scoreboard players reset @s Znsi.Drop.Carrotstick
    tag @s remove CanTP
    scoreboard players reset @s Znsi.LeapTime