#> asset:artifact/0248.bow_of_vinderre/shot/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/248/shot/check

execute unless entity @s[tag=CanUsed] run kill @e[type=#arrows,tag=ShotArrow,distance=..5]
execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},PickupDelay:0s}
