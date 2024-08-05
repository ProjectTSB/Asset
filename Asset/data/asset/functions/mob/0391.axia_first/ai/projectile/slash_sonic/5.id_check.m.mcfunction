#> asset:mob/0391.axia_first/ai/projectile/slash_sonic/5.id_check.m
#
# ID検知
#
# @input args
#   Temp : int
# @within function asset:mob/0391.axia_first/ai/projectile/slash_sonic/4.damage

# 自身のIDが既にあればヒットタグ削除
    $execute if data storage asset:temp AV.ID.$(Temp) run tag @s remove AV.Temp.Target

# データがなければ追加しておく
    $execute unless data storage asset:temp AV.ID.$(Temp) run data modify storage asset:temp AV.ID.$(Temp) set value 0b
