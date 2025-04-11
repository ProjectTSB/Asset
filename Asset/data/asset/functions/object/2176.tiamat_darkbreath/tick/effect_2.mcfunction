#> asset:object/2176.tiamat_darkbreath/tick/effect_2
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# 演出
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [6f, 6f, 6f]
    execute positioned ^-2.2 ^0.52 ^-1 run function api:object/summon
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [5.2f, 5.2f, 5.2f]
    execute positioned ^2.2 ^0.51 ^1 run function api:object/summon
