#> asset:object/2110.heiloang_heavenly_spike/tick/summon_vfx
#
# Objectのtick時の処理
#
# @within asset:object/2110.heiloang_heavenly_spike/tick/

# 演出
    data modify storage api: Argument.ID set value 2127
    data modify storage api: Argument.FieldOverride.OverrideScale set value [16f,16f,16f]
    execute positioned ~ ~-3 ~ run function api:object/summon
