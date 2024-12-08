#> asset:mob/0410.heiloang/tick/event/sweep/prediction
#
# 移動攻撃
#
# @within asset:mob/0410.heiloang/tick/event/sweep/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.ScaleX set value 39f
    data modify storage api: Argument.FieldOverride.ScaleZ set value 39f
    data modify storage api: Argument.FieldOverride.Duration set value 30
    data modify storage api: Argument.FieldOverride.KillTick set value 60
    execute positioned ~ ~ ~ run function api:object/summon
