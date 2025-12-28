#>oni:ticks/


##firstlogin
execute if entity @a[tag=!firstlogin] as @a[tag=!firstlogin] at @s run function oni:firstlogin


##GAMEMODE
    execute if data storage oni: {State:waiting} run function oni:ticks/waiting
    execute if data storage oni: {State:gaming} run function oni:ticks/gaming