#> asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move
#
#
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/dash_punch/move_stacked

# 移動
    tp @s ^ ^ ^0.5

# パーティクル
    execute at @e[type=marker,tag=8N.ModelLocator.RightHand,sort=nearest,limit=1] run particle minecraft:flame ~ ~ ~ 0.2 0.2 0.2 0 5 force @a[distance=..64]
    execute at @e[type=marker,tag=8N.ModelLocator.RightHand,sort=nearest,limit=1] run particle minecraft:smoke ~ ~ ~ 0.2 0.2 0.1 0 5 force @a[distance=..64]
