#> asset:mob/0341.louvert/tick/general/2.rotate
#
# 汎用・実行者の方を向く
#
# @within function asset:mob/0341.louvert/**

# タグ付与
    tag @s add 9H.Temp.Target
# 滑らかに回転
    execute as @e[type=wither_skeleton,tag=9H.Temp.This,sort=nearest,limit=1] at @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @a[tag=9H.Temp.Target] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
# 終了
    tag @s remove 9H.Temp.Target
    tag @e[type=wither_skeleton,tag=9H.Temp.This] remove 9H.Temp.This