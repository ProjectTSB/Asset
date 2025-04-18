#> asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_line
#
# テルツェット・ラグナレク
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_ragnarok/prediction_0

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [6f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 40
    data modify storage api: Argument.FieldOverride.Tick set value 189
    execute at @s positioned ~ ~-2.4 ~ run function api:object/summon
