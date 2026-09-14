#> asset:effect/0386.pk_insight/modifier/remove
#
#
#
# @within function asset:effect/0386.pk_insight/**

# 耐性
    data modify storage api: Argument.UUID set value [I;1,3,386,0]
    function api:modifier/defense/base/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 1-0-3-0-386
