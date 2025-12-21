execute unless data storage temp: pool[0] run data modify storage temp: pool set from storage oni: pool
data modify storage temp: args set value {}
execute store result score *** Znsi.array run data get storage temp: pool
scoreboard players remove *** Znsi.array 1
execute store result storage temp: args.length int 1 run scoreboard players get *** Znsi.array
function oni:game/lottery_set with storage temp: args