#> asset:mob/0378.red_knight_v3/tick/90.tp/loop_tp
#
#
#
# @within function
#   asset:mob/0378.red_knight_v3/tick/90.tp/spread_facing_tp
#   asset:mob/0378.red_knight_v3/tick/90.tp/loop_tp

#> tag
# @private
    #declare tag SpreadMarker


# 演出発生させて
    function asset:mob/0378.red_knight_v3/tick/90.tp/particle
# マーカーが来たらTP確定
    execute if entity @e[type=marker,tag=SpreadMarker,distance=..1,sort=nearest,limit=1] facing entity @e[type=marker,tag=SpreadMarker,distance=..1,sort=nearest,limit=1] feet run function asset:mob/0378.red_knight_v3/tick/common/absolute_tp
# マーカーが近くにいないなら前方に再帰
    execute unless entity @e[type=marker,tag=SpreadMarker,distance=..1,sort=nearest,limit=1] facing entity @e[type=marker,tag=SpreadMarker,distance=..80,sort=nearest,limit=1] feet positioned ^ ^ ^0.5 run function asset:mob/0378.red_knight_v3/tick/90.tp/loop_tp
