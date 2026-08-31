#> asset:effect/0386.pk_insight/tick/guard
#
#
#
# @within function asset:effect/0386.pk_insight/tick/


# デバフを消す
    function asset:effect/0386.pk_insight/modifier/remove

# バフを再付与
    data modify storage api: Argument.UUID set value [I;1,3,386,0]
    data modify storage api: Argument.Amount set value 0.7d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/base/add

# 演出
    playsound entity.ender_eye.death player @a ~ ~ ~ 2.0 2.0
    playsound entity.experience_orb.pickup player @a ~ ~ ~ 2.0 1.0
    execute anchored eyes positioned ^ ^ ^ run particle end_rod ~ ~ ~ 0.1 0.25 0.1 0.1 15
