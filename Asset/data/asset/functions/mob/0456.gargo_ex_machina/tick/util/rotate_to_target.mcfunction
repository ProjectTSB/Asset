#> asset:mob/0456.gargo_ex_machina/tick/util/rotate_to_target
#
# ターゲットを向く
#
# @within asset:mob/0456.gargo_ex_machina/tick/**

# 対象の方を向く
    execute rotated ~ 0 positioned ^ ^ ^-1 facing entity @p[tag=CO.MainTarget] feet rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s positioned ^ ^ ^-1 rotated as @s rotated ~ 0 positioned ^ ^ ^-1 facing entity @s feet positioned as @s run tp @s ^ ^ ^ ~ 0
