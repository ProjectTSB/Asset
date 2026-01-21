#> asset:object/2136.blazing_bomb/tick/homing.m
#
# 追尾
#
# @within function asset:object/2136.blazing_bomb/tick/

# 追尾
    $execute facing entity @p[gamemode=!spectator,scores={UserID=$(TargetID)}] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~
