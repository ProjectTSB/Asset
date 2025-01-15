#> asset:mob/0227.frost_eye/hurt/debuff
#
# デバフを付与
#
# @within function asset:mob/0227.frost_eye/hurt/

# 鈍足を付与
    data modify storage api: Argument.ID set from storage asset:context this.EffectID
    data modify storage api: Argument set value {Stack:2,Duration:20}
    execute as @p[tag=Attacker,distance=..2] run function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
