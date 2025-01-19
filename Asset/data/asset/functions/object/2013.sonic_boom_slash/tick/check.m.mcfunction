#> asset:object/2013.sonic_boom_slash/tick/check.m
#
# ID検知
#
# @input args
#   Temp : int
# @within function asset:object/2013.sonic_boom_slash/tick/damage

# 自身のIDが既にあればヒットタグ削除
    $execute if data storage asset:temp 2013.ID.$(Temp) run tag @s remove 2013.Temp.Target

# データがなければ追加しておく
    $execute unless data storage asset:temp 2013.ID.$(Temp) run data modify storage asset:temp 2013.ID.$(Temp) set value 0b
