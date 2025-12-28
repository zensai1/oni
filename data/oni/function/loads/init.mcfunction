#>oni:load/init


##Scoreboard
    scoreboard objectives add Znsi.Use.Carrotstick used:carrot_on_a_stick "魔法の杖"
    scoreboard objectives add Znsi.Ability dummy "異能"
    scoreboard objectives add Znsi.Drop.Carrotstick dropped:carrot_on_a_stick "杖投げ"
    scoreboard objectives add Znsi.CoolDown dummy "cooldown"
    scoreboard objectives add Znsi.ID dummy "ID"
    scoreboard objectives add Znsi.CoreID dummy "統括ID"
    scoreboard objectives add Znsi.Info dummy {"color":"aqua","italic":false,"text":"Infomation"}
    scoreboard objectives add Znsi.Array dummy "配列用スコア"
    scoreboard objectives add Znsi.Setting dummy "セッティング用スコア"
    scoreboard objectives add Znsi.Temp dummy "仮置き"
    scoreboard objectives add Znsi.Time dummy "残り時間"
    scoreboard objectives add Znsi.Sign dummy "気配"
    scoreboard objectives add Znsi.Ticks dummy "tick"
    scoreboard objectives add Znsi.RestraintTime dummy "抑制用"
    scoreboard objectives add Znsi.LeapTime dummy "飛躍用"
    scoreboard objectives add Znsi.SoundTime dummy "音爆用"
    scoreboard objectives add Znsi.ChengeTime dummy "鬼交代"


##Team
    team add oni
    team modify oni color red
    team modify oni collisionRule never
    team modify oni friendlyFire false
    team modify oni nametagVisibility hideForOtherTeams

    team add nige
    team modify nige color blue
    team modify nige collisionRule never
    team modify nige friendlyFire false
    team modify nige nametagVisibility hideForOtherTeams

    team add time
    team modify time color green
    team modify time suffix {text:"0秒",color:green}
    team join time 残り時間：


##Storage
    data modify storage oni: State set value waiting
    data modify storage oni: pool set value [0,1,2,3,4,5,6,7,8,9,10]
    data modify storage temp: pool set from storage oni: pool
    data remove storage temp: result
    data modify storage oni: ability.name set value ["天翔","隠遁","転移","変装","探知","偵察","抑制","吸引","無敵","飛躍","音爆"]
    data remove storage oni: ability.pool
    data remove storage oni: ability.poolname


##Info
    scoreboard players set 残り時間： Znsi.Info 1


##GAMEMODE
    gamerule locatorBar false
    gamerule fallDamage false