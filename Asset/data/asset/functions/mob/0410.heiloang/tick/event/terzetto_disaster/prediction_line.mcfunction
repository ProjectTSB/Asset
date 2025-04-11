#> asset:mob/0410.heiloang/tick/event/terzetto_disaster/prediction_line
#
# テルツェット・ディザスター
#
# @within asset:mob/0410.heiloang/tick/event/terzetto_disaster/attack_main

# 予告
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [12f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 175
    execute positioned ^15 ^0. ^-25 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~90 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [12f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 175
    execute at @s positioned ^15 ^0.1 ^-25 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~90 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [12f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 175
    execute at @s positioned ^15 ^0. ^-25 run function api:object/summon

# 回転
    execute at @s run tp @s ~ ~ ~ ~90 ~
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 16761175
    data modify storage api: Argument.FieldOverride.Scale set value [12f,50f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 175
    execute at @s positioned ^15 ^0.1 ^-25 run function api:object/summon

# 回転戻す
    tp @s ~ ~ ~ ~ ~
