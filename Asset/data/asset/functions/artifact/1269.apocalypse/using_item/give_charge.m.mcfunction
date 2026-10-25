#> asset:artifact/1269.apocalypse/using_item/give_charge.m
#
#
#
# @within function asset:artifact/1269.apocalypse/using_item/update_stack

# チャージ用エフェクトを付与
    data modify storage api: Argument.ID set value 334
    $data modify storage api: Argument.Stack set value $(Stack)
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
