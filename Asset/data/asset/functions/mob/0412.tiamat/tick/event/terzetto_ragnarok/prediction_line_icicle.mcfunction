#> asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_line_icicle
#
# テルツェット・ラグナレク
#
# @within asset:mob/0412.tiamat/tick/event/terzetto_ragnarok/prediction_0_icicle

# 予告
    tp @s ~ ~ ~ ~ 0
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [16f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 20
    execute positioned ^ ^-0.3 ^11.5 run function api:object/summon
