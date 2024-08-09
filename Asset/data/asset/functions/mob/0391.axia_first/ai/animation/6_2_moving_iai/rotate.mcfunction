#> asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/rotate
#
# 幾何学ローテーション
#
# @within function asset:mob/0391.axia_first/ai/animation/6_2_moving_iai/

# タグ付与
    tag @s add AV.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64] positioned ^ ^ ^1000 facing entity @e[tag=AV.Temp.Target,limit=1] feet positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 終了
    tag @s remove AV.Temp.Target
    tag @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64] remove AV.Temp.This
