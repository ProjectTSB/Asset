#> asset:artifact/1365.shaved_ice_blue_hawaii/trigger/heal_and_buff
#
#
#
# @within function asset:artifact/1365.shaved_ice_blue_hawaii/trigger/3.main

# 体力を回復する
    data modify storage api: Argument.Heal set value 5
    function api:heal/modifier
    function api:heal/
    function api:heal/reset

# バフ
    data modify storage api: Argument.ID set value 348
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
