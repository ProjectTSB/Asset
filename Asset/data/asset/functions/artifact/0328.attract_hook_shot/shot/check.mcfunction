#> asset:artifact/0328.attract_hook_shot/shot/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/328/shot/check

execute if entity @e[type=#arrows,tag=ShotArrow,nbt={crit:0b},distance=..5] run tag @s remove CanUsed
execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},PickupDelay:0s}

kill @e[type=#arrows,tag=ShotArrow,distance=..5]
