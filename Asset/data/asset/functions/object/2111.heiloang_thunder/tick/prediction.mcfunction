#> asset:object/2111.heiloang_thunder/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2111.heiloang_thunder/tick/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Item set value "yellow_stained_glass"
    data modify storage api: Argument.FieldOverride.ScaleX set value 6f
    data modify storage api: Argument.FieldOverride.ScaleZ set value 50f
    data modify storage api: Argument.FieldOverride.Duration set value 10
    data modify storage api: Argument.FieldOverride.KillTick set value 15
    execute positioned ~ ~-1.5 ~ run function api:object/summon
