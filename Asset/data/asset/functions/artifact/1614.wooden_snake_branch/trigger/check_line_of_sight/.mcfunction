#> asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/
#
# 視線確認
#
# @within function asset:artifact/1614.wooden_snake_branch/trigger/2.check_condition

#視線が合っている敵にLineHitタグを付与
    function asset:artifact/1614.wooden_snake_branch/trigger/check_line_of_sight/loop

#tagを持っているならスコアを増加。そうでなければ0にリセット
    scoreboard players add @e[type=#lib:living_without_player,tag=Enemy,tag=LineHit,tag=!Uninterferable,distance=..8] 18U.StareTime 1
    scoreboard players reset @e[type=#lib:living_without_player,tag=Enemy,tag=!LineHit,tag=!Uninterferable,distance=..64] 18U.StareTime

#リセット
    tag @e[type=#lib:living_without_player,tag=LineHit,distance=..64] remove LineHit
