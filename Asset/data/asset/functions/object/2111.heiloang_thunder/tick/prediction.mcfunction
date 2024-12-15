#> asset:object/2111.heiloang_thunder/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2111.heiloang_thunder/tick/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [6f,50f]
    data modify storage api: Argument.FieldOverride.Duration set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 15
    execute positioned ~ ~-2.4 ~ run function api:object/summon
