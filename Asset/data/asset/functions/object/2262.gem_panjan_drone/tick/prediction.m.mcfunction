#> asset:object/2262.gem_panjan_drone/tick/prediction.m
#
# Objectのtick時の処理
#
# @within asset:object/2262.gem_panjan_drone/tick/event_attack

# 予兆
    data modify storage api: Argument.ID set value 2063
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [20f, 20f, 0.05f]
    $data modify storage api: Argument.FieldOverride.Tick set value $(PredictionTime)
    execute rotated ~ 0 run function api:object/summon
