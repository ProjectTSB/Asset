#> asset:object/1158.ouroboros_ball/hit_entity/effect_add
#
# effect付与用
#
# @within function asset:object/1158.ouroboros_ball/hit_entity/damage

# エフェクト付与
    data modify storage api: Argument.ID set value 361
    data modify storage api: Argument.Duration set value 50
    execute store result storage api: Argument.FieldOverride.DamageHolder int 1 run scoreboard players get $Temporary Temporary
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
