#> asset:object/2176.tiamat_darkbreath/tick/effect_1
#
# Objectのtick時の処理
#
# @within asset:object/2176.tiamat_darkbreath/tick/

# 演出
    data modify storage api: Argument.ID set value 2175
    data modify storage api: Argument.FieldOverride.OverrideScale set value [7f, 7f, 7f]
    execute positioned ~ ~0.5 ~ run function api:object/summon
