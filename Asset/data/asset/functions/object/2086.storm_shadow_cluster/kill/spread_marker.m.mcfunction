#> asset:object/2086.storm_shadow_cluster/kill/spread_marker.m
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/kill/spread_marker

# 移動
    $execute positioned ~$(random_x) ~ ~$(random_z) run tp @s ~ ~ ~ ~ ~
        #$say execute positioned ~$(random_x) ~ ~$(random_z) run tp @s ~ ~ ~ ~ ~
        #tellraw @p [{"nbt":"Pos","entity":"@s"}]
