#> asset:artifact/1325.calamity_chain/trigger/debuff
#
#
#
# @within function
#   asset:artifact/1325.calamity_chain/trigger/3.main
#   asset:artifact/1325.calamity_chain/trigger/dis_equip/not_in_hotbar

# 演出

# デバフを得る
    data modify storage api: Argument.ID set value 360
    data modify storage api: Argument.Duration set value 200
    data modify storage api: Argument.FieldOverride.Modifier.Attack set value -1
    data modify storage api: Argument.FieldOverride.Modifier.MPHeal set value -1
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
