#> asset:artifact/1143.achilles/damage_entity/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1143/damage_entity/

# デバフを付与
    data modify storage api: Argument.ID set value 299
    data modify storage api: Argument.Duration set value 400
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
