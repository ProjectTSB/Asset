#> asset:object/2261.gem_yeeter_drone/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2261.gem_yeeter_drone/tick/event_idle

# 予告
    data modify storage api: Argument.ID set value 2271
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.TextColor set value "#ffcf80"
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 100
    execute rotated ~ 0 positioned ~ ~0.1 ~ run function api:object/summon
