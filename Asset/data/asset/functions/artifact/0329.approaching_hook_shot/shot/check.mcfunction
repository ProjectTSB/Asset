#> asset:artifact/0329.approaching_hook_shot/shot/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/329/shot/check

#> private
# @private
    #declare score_holder $isBanTPArea

execute if predicate lib:is_ban_tp_area run function lib:message/artifact/can_not_use_here
execute if predicate lib:is_ban_tp_area run tag @s remove CanUsed

execute if entity @e[type=#arrows,tag=ShotArrow,nbt={crit:0b},distance=..5] run tag @s remove CanUsed
execute unless entity @s[tag=CanUsed] run summon item ~ ~ ~ {Item:{id:"minecraft:arrow",Count:1b},PickupDelay:0s}

kill @e[type=#arrows,tag=ShotArrow,distance=..5]
