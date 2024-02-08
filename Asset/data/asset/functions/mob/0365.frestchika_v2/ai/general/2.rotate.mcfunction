#> asset:mob/0365.frestchika_v2/ai/general/2.rotate
#
# 汎用・方向回転コマンド
#
# @within function asset:mob/0365.frestchika_v2/**

# 予め自身に tag = A5.Temp.This を付与すること
# 実行者は向く対象

# タグ付与
    tag @s add A5.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=A5.Temp.This,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @a[tag=A5.Temp.Target] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
# 終了
    tag @s remove A5.Temp.Target
    tag @e[type=wither_skeleton,tag=A5.Temp.This] remove A5.Temp.This