#> asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_center
#
# 中心点を向く
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 中心点の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @e[type=marker,tag=CO.CenterPosition,distance=..80,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
