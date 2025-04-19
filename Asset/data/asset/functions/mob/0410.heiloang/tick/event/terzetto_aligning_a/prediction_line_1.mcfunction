#> asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/prediction_line_1
#
# テルツェット・ディザスター
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_aligning_a/attack_main

# 回転
    execute at @s run tp @s ~ ~ ~ ~135 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761125
    data modify storage api: Argument.FieldOverride.Scale set value [18f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 185
    execute at @s positioned ^ ^-0.1 ^-25 run function api:object/summon
# 回転
    execute at @s run tp @s ~ ~ ~ ~90 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761125
    data modify storage api: Argument.FieldOverride.Scale set value [18f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 185
    execute at @s positioned ^ ^-0.2 ^-25 run function api:object/summon
# 回転戻す
    tp @s ~ ~ ~ ~ ~
