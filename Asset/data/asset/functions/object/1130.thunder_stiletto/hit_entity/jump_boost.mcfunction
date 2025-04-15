#> asset:object/1130.thunder_stiletto/hit_entity/jump_boost
#
#
#
# @within function asset:object/1130.thunder_stiletto/hit_entity/

# 跳躍力上昇を付与
    data modify storage api: Argument set value {ID:192,Duration:60,Stack:3}
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
