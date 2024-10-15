#> asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/6.predict_summon.m
#
# 偏差で召喚
#
# args:
#    X: double
#    Z: double
#
# @within function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/5.predict

# 召喚
    $execute positioned ~$(X) ~ ~$(Z) if entity @s[distance=..30] if entity @e[type=marker,tag=1N.SpawnMarker,distance=..14] run function asset:mob/0059.jack_o_lantern/tick/skill/pumpkin_rain/7.summon
