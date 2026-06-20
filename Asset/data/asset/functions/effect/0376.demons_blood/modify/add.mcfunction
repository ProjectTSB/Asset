#> asset:effect/0376.demons_blood/modify/add
#
#
#
# @within function asset:effect/0376.demons_blood/given/

# 攻撃バフ
    data modify storage api: Argument.UUID set value [I;1,3,376,0]
    data modify storage api: Argument.UUID set from storage asset:context this.UUID
    data modify storage api: Argument.Amount set from storage asset:context this.Amount
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/base/add
# 最大体力-999%
    attribute @s minecraft:generic.max_health modifier add f47ac10b-58cc-4372-a567-0e02b2c3d479 "17Y.Health" -9.99 multiply_base
