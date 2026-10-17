#> asset:artifact/1421.toaster/trigger/charge
#
#
#
# @within function asset:artifact/1421.toaster/trigger/2.check_condition

# チャージ
    data modify storage api: Argument.ID set value 362
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
