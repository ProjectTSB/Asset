#> asset:object/1082.soulfire_burst_bigshot/kill/modifier.m
#
#
#
# @within function asset:object/1082.soulfire_burst_bigshot/kill/

$execute as @p[scores={UserID=$(UserID)},distance=..128] run function api:damage/modifier
