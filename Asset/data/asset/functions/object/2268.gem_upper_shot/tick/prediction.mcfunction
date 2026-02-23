#> asset:object/2268.gem_upper_shot/tick/prediction
#
# Objectのtick時の処理
#
# @within asset:object/2268.gem_upper_shot/tick/

# 予兆
    data modify storage api: Argument.ID set value 2063
    execute store result storage api: Argument.FieldOverride.MobUUID int 1 run scoreboard players get @s MobUUID
    data modify storage api: Argument.FieldOverride.Color set value 3381759
    data modify storage api: Argument.FieldOverride.Scale set value [12f, 12f, 0.05f]
    data modify storage api: Argument.FieldOverride.Tick set value 60
    execute rotated ~ 0 run function api:object/summon
