#> asset:mob/0411.behemoth/tick/util/rotate_to_center
#
# 汎用処理 中心を向く
#
# @within asset:mob/0411.behemoth/tick/event/**

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @e[type=marker,tag=BE.CenterPosition,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
