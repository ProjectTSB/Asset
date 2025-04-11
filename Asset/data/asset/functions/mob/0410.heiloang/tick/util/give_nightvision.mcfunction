#> asset:mob/0410.heiloang/tick/util/give_nightvision
#
# 汎用処理 暗視
#
# @within asset:mob/0410.heiloang/tick/event/**

# 暗視
    data modify storage api: Argument set value {ID:191,Duration:300,Stack:5}
    execute as @a[distance=..160] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
