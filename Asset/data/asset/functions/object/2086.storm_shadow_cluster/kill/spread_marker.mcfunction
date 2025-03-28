#> asset:object/2086.storm_shadow_cluster/kill/spread_marker
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/kill/summon_cluster.m

#> pos
# @within
#   function asset:object/2086.storm_shadow_cluster/kill/spread_marker
#   function asset:object/2086.storm_shadow_cluster/kill/spread_marker.m
    #declare score_holder $RandomX
    #declare score_holder $RandomZ

# 座標決定
    execute store result storage asset:temp args.random_x double 0.01 run random value -1400..1400 
    execute store result storage asset:temp args.random_z double 0.01 run random value -1400..1400 
    function asset:object/2086.storm_shadow_cluster/kill/spread_marker.m with storage asset:temp args

# reset
    data remove storage asset:temp args
