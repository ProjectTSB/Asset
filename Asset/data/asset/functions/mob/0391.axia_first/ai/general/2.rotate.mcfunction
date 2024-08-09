#> asset:mob/0391.axia_first/ai/general/2.rotate
#
# 汎用・方向回転コマンド
#
# @within function asset:mob/0391.axia_first/**

# 予め自身に tag = AV.Temp.This を付与すること
# 実行者は向く対象

# タグ付与
    tag @s add AV.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-2 facing entity @e[tag=AV.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
    execute as @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^1 facing entity @e[tag=AV.Temp.Target,distance=..66,limit=1] feet rotated ~ 0 positioned ^ ^ ^1 if entity @e[type=wither_skeleton,tag=AV.Temp.This,distance=..0.1,sort=nearest,limit=1] at @s positioned ^ ^ ^1000 facing entity @e[tag=AV.Temp.Target,limit=1] feet positioned ^ ^ ^1000 facing entity @s feet positioned as @s positioned ^ ^ ^0.1 rotated as @s positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ ~
# 終了
    tag @s remove AV.Temp.Target
    tag @e[type=wither_skeleton,tag=AV.Temp.This,distance=..64] remove AV.Temp.This
