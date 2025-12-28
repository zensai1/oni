#>oni:lottery/pre
#@execution -> oni:


    execute unless data storage temp: pool[0] run data modify storage temp: pool set from storage oni: pool
    data modify storage temp: args set value {}
    execute store result score *** Znsi.Ability run data get storage temp: pool
    scoreboard players remove *** Znsi.Ability 1
    execute store result storage temp: args.length int 1 run scoreboard players get *** Znsi.Ability
    function oni:game/lottery/set with storage temp: args