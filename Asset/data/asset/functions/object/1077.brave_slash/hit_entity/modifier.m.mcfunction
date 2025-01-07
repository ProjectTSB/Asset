#> asset:object/1077.brave_slash/hit_entity/modifier.m
#
# ダメージ補正
#
# @within function asset:object/1077.brave_slash/hit_entity/

$execute as @p[scores={UserID=$(UserID)},distance=..128] run function lib:damage/modifier
