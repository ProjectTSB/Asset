#> asset:mob/0380.haruclaire_v3/tick/util/rotate_to_center
#
# 汎用処理 中心を向く
#
# @within asset:mob/0380.haruclaire_v3/tick/event/**

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @e[type=marker,tag=AK.CenterPosition,distance=..80,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
