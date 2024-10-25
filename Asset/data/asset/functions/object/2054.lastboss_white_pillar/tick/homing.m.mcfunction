#> asset:object/2054.lastboss_white_pillar/tick/homing.m
#
#
#
# @within function asset:object/2054.lastboss_white_pillar/tick/

# 追尾
    $execute facing entity @p[scores={UserID=$(TargetID)}] eyes positioned ^ ^ ^-100 rotated as @s positioned ^ ^ ^-800 facing entity @s eyes rotated ~ 0 positioned as @s run tp @s ^ ^ ^0.25 ~ ~
#    $execute facing entity @p[scores={UserID=$(TargetID)}] eyes rotated ~ 0 run tp @s ^ ^ ^0.1
