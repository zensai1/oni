tellraw @a {"text":"Oni gokko datapack reload complete!","color":"aqua"}
say reload

#scoreboard
scoreboard objectives add Znsi.usecarrot used:carrot_on_a_stick
scoreboard objectives add Znsi.ability dummy
scoreboard objectives add Znsi.cooltime dummy
scoreboard objectives add Znsi.tickcooltime dummy
scoreboard objectives add Znsi.gamemode dummy
scoreboard objectives add Znsi.dropstick dropped:carrot_on_a_stick
scoreboard objectives add Znsi.saturation dummy
scoreboard objectives add Znsi.food food
scoreboard objectives add Znsi.dummyfood dummy
scoreboard objectives add Znsi.id dummy
scoreboard objectives add Znsi.coreid dummy
scoreboard objectives add Znsi.entityid dummy
scoreboard objectives add Znsi.disguise dummy
scoreboard objectives add Znsi.soullesstimer dummy
scoreboard objectives add Znsi.time dummy
scoreboard objectives add Znsi.timer dummy
scoreboard objectives add Znsi.invtimer dummy
scoreboard objectives add Znsi.info dummy {"bold":true,"color":"aqua","italic":false,"text":"Infomation"}
scoreboard objectives add Znsi.var dummy
scoreboard objectives add Znsi.array dummy
scoreboard objectives add Znsi.maxability dummy
scoreboard objectives add Znsi.oni dummy
scoreboard objectives add Znsi.temp dummy
scoreboard objectives add Znsi.temp2 dummy
scoreboard objectives add Znsi.leap_forward dummy
scoreboard objectives add Znsi.sign dummy
scoreboard objectives add Znsi.child dummy
scoreboard objectives add Znsi.range dummy

scoreboard players set 残り時間： Znsi.info 1
scoreboard players set *** Znsi.temp 0
scoreboard players set *** Znsi.temp2 0

#team
team add oni
team add nige
team modify oni color red
team modify oni friendlyFire false
team modify oni nametagVisibility hideForOtherTeams
team modify oni collisionRule never
team modify nige color blue
team modify nige friendlyFire false
team modify nige nametagVisibility hideForOtherTeams
team modify nige collisionRule never

team add timer
team modify timer color green
team join timer 残り時間：

data modify storage oni: pool set value [0,1,2,3,4,5,6,7,8,9,10]
data modify storage temp: pool set from storage oni: pool
data remove storage temp: result
data modify storage oni: ability.name set value ["天翔","気化","転移","変装","探知","魂抜","抑制","吸引","無敵","飛躍","小人"]
data remove storage oni: ability.pool
data remove storage oni: ability.poolname

#gui