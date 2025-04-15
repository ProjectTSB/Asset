#> asset:artifact/1251.scale_of_arbit/trigger/barrier
#
#
#
# @within function asset:artifact/1251.scale_of_arbit/trigger/schedule

# バリアバフを得る
    data modify storage api: Argument.ID set value 318
    data modify storage api: Argument.FieldOverride.Barrier set value 40
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# リセット
    tag @s remove YR.Schedule
