#> asset:artifact/1655.ocean_heart/trigger/buff
#
# @within function asset:artifact/1655.ocean_heart/trigger/3.main

# 20秒間のバフを付与する
    data modify storage api: Argument.ID set value 406
    data modify storage api: Argument.Duration set value 300
    data modify storage api: Argument.FieldOverride.Modifier set value 0.05d
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
