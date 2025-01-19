#> asset:object/1080.meteor_rain/kill/modifier.m
#
#
#
# @within function asset:object/1080.meteor_rain/kill/

$execute as @p[scores={UserID=$(UserID)},distance=..128] run function api:damage/modifier
