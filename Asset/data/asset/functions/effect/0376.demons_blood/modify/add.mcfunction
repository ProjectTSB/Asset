#> asset:effect/0376.demons_blood/modify/add
#
#
#
# @within function asset:effect/0376.demons_blood/given/

# 攻撃バフ
    data modify storage api: Argument.UUID set value [I;1,3,376,0]
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
# 最大体力-99.9%
    attribute @s minecraft:generic.max_health modifier add e39ab835-291d-45de-9c72-ffe8d0040f6a "17Y.Health" -0.999 multiply
