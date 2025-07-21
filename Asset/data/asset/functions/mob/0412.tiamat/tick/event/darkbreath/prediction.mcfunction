#> asset:mob/0412.tiamat/tick/event/darkbreath/prediction
#
# フレアブレス
#
# @within asset:mob/0411.behemoth/tick/event/flarebreath/

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16727040
    data modify storage api: Argument.FieldOverride.Scale set value [6f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 10
    data modify storage api: Argument.FieldOverride.Tick set value 15
    function api:object/summon
