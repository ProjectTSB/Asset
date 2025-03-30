#> asset:mob/0214.drone/tick/cruise_motion
#
# 
#
# @within function asset:mob/0214.drone/tick/

# 中心座標を中心に旋回
    execute unless entity @e[type=marker,tag=5X.Centre,distance=..50] facing entity @e[type=marker,tag=5X.Centre,distance=..128,limit=1] eyes rotated ~-80 0 run tp @s ~ ~ ~ ~ ~

# 直進
    tp @s ^ ^ ^0.25

# モデルの向きを合わせる
    execute rotated as @s on passengers positioned as @s run tp @s ~ ~ ~ ~ ~
