#> asset:object/2086.storm_shadow_cluster/kill/summon_cluster.m
#
# 
#
# @within function asset:object/2086.storm_shadow_cluster/kill/

#> Summon
# @private
    #declare tag SummonPos

# 召喚用マーカー生成
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}
    $execute positioned $(x) $(y) $(z) run summon marker ~ ~ ~ {Tags:["SummonPos"]}

# 拡散
    $execute positioned $(x) $(y) $(z) as @e[type=marker,tag=SummonPos,distance=..1] at @s run function asset:object/2086.storm_shadow_cluster/kill/spread_marker

# 拡散地点に攻撃範囲表示とクラスター弾頭生成
    $execute positioned $(x) $(y) $(z) as @e[type=marker,tag=SummonPos,distance=..30] at @s run function asset:object/2086.storm_shadow_cluster/kill/summon_munitions

# reset
    $execute positioned $(x) $(y) $(z) run kill @e[type=marker,tag=SummonPos,distance=..30]
