#> asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_destination
#
# 目的地を向く
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 目的地の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @e[type=area_effect_cloud,tag=CO.Aec.Destination,distance=..80,limit=1] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
