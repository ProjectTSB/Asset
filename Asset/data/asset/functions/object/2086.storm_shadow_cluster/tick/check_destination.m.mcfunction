#> asset:object/2086.storm_shadow_cluster/tick/check_destination.m
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/tick/

# 目標地点から半径5B以内にいたら起爆
    $execute positioned $(x) $(y) $(z) if entity @s[distance=..5] run function asset:object/2086.storm_shadow_cluster/kill/
