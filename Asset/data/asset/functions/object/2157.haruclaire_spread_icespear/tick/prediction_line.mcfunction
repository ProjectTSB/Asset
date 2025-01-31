#> asset:object/2157.haruclaire_spread_icespear/tick/prediction_line
#
# Objectのtick時の処理
#
# @within asset:object/2157.haruclaire_spread_icespear/tick/

# 予告線表示
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 40
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 0 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 40
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 45 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 40
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 90 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 45
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 135 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 45
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 180 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 45
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 225 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 45
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 270 0 run function api:object/summon

    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.Color set value 54783
    data modify storage api: Argument.FieldOverride.Scale set value [4f,30f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 45
    data modify storage api: Argument.FieldOverride.Tick set value 45
    execute positioned ~ ~ ~ rotated 315 0 run function api:object/summon
