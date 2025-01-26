#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_summon.m
#
# 偏差で召喚
#
# @input args:
#    X: double
#    Z: double
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/predict_set

# 召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @e[type=marker,tag=1N.SpawnMarker,distance=..15] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/summon/summon
