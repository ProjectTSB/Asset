#> asset:object/2086.storm_shadow_cluster/kill/spread_marker
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/kill/summon_cluster.m

# 座標決定
    execute store result storage asset:temp args.random_x double 0.01 run random value -1400..1400 
    execute store result storage asset:temp args.random_z double 0.01 run random value -1400..1400 
    function asset:object/2086.storm_shadow_cluster/kill/spread_marker.m with storage asset:temp args

# reset
    data remove storage asset:temp args
