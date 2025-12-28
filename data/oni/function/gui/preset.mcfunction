#>oni:gui/preset


##前処理する
    item replace entity @s player.cursor with air


##scoreboardリセット
    scoreboard players operation $TEMP Znsi.Setting = $Oni Znsi.Setting


##Teams
    team empty oni


##
    playsound entity.arrow.hit_player record @s
    function oni:gui/


##鬼を決める
    function oni:gui/set