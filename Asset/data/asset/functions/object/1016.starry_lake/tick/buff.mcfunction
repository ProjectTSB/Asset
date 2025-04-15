#> asset:object/1016.starry_lake/tick/buff
#
#
#
# @within function asset:object/1016.starry_lake/tick/

# 映天効果を付与
    data modify storage api: Argument.ID set value 213
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
