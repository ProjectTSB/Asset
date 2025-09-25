#> asset:mob/0378.red_knight_v3/tick/02.skill_plunge/loop_tp
#
#
#
# @within function
#   asset:mob/0378.red_knight_v3/tick/02.skill_plunge/main
#   asset:mob/0378.red_knight_v3/tick/02.skill_plunge/loop_tp

#> tag
# @private
    #declare tag SpreadMarker


# 演出発生させて
    function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/particle
# プレイヤーが来たらTP確定
    execute if entity @p[distance=..1] facing entity @p[gamemode=!spectator,distance=..1] feet run function asset:mob/0378.red_knight_v3/tick/common/absolute_tp_addtag
    execute if entity @p[distance=..1] at @s positioned ^ ^ ^3 run function asset:mob/0378.red_knight_v3/tick/common/tp
# 自分から離れ過ぎたらTP確定
    execute unless entity @s[distance=..14] run function asset:mob/0378.red_knight_v3/tick/common/absolute_tp_addtag
# マーカーが近くにいないなら前方に再帰。離れ過ぎたら終わる
    execute if entity @s[tag=!AI.TPConfirmed,distance=..14] unless entity @p[gamemode=!spectator,distance=..1] facing entity @p[gamemode=!spectator,distance=..100] feet positioned ^ ^ ^0.5 run function asset:mob/0378.red_knight_v3/tick/02.skill_plunge/loop_tp
# タグ消す
    tag @s remove AI.TPConfirmed
