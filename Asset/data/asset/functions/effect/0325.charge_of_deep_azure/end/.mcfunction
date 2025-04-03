#> asset:effect/0325.charge_of_deep_azure/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0325.charge_of_deep_azure/_/end

# バフを付与
    data modify storage api: Argument.ID set value 326
    data modify storage api: Argument.Stack set from storage asset:context Stack
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
