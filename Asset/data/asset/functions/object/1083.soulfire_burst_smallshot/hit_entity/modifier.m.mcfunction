#> asset:object/1083.soulfire_burst_smallshot/hit_entity/modifier.m
#
#
#
# @within function asset:object/1083.soulfire_burst_smallshot/hit_entity/

$execute as @p[scores={UserID=$(UserID)},distance=..128] run function api:damage/modifier
