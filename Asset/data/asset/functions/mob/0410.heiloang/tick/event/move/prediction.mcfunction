#> asset:mob/0410.heiloang/tick/event/move/prediction
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/move/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.ScaleX set value 49f
    data modify storage api: Argument.FieldOverride.ScaleZ set value 18f
    data modify storage api: Argument.FieldOverride.Duration set value 20
    data modify storage api: Argument.FieldOverride.KillTick set value 35
    execute positioned ~ ~ ~ run function api:object/summon
